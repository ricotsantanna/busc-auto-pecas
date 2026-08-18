// src/app/api/lojista/inventory/import/route.ts — Processamento de Planilhas via IA e Matching com Catálogo Mestre
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { getSession } from "@/lib/auth-edge";
import { like, or } from "drizzle-orm";

export const runtime = "edge";

// Stopwords para sanitização de buscas automotivas
const STOPWORDS = new Set(["de", "do", "da", "dos", "das", "para", "com", "sem", "em", "o", "a", "os", "as"]);

function extractCoreKeyword(phrase: string): string {
  if (!phrase) return "";
  const tokens = phrase
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9\s]/g, " ")
    .split(/\s+/)
    .filter((t) => t.length > 2 && !STOPWORDS.has(t));

  return tokens[0] || phrase.trim();
}

export async function POST(req: NextRequest) {
  try {
    const session = await getSession();
    if (!session) {
      return NextResponse.json({ error: "Não autorizado" }, { status: 401 });
    }

    const db = await getDb();
    const body = await req.json();
    const { rows } = body;

    if (!Array.isArray(rows) || rows.length === 0) {
      return NextResponse.json({ error: "Nenhuma linha válida recebida para importação." }, { status: 400 });
    }

    // Busca todas as peças mestre canônicas para matching rápido
    const allMasterParts = await db
      .select({
        id: schema.masterParts.id,
        name: schema.masterParts.name,
        manufacturer: schema.masterParts.manufacturer,
        manufacturerCode: schema.masterParts.manufacturerCode,
      })
      .from(schema.masterParts);

    const stagingItems = [];

    for (let index = 0; index < rows.length; index++) {
      const row = rows[index];
      const rawName = String(row.Descricao_Peca || row.name || row["Descrição"] || "").trim();
      if (!rawName) continue;

      const manufacturer = String(row.Fabricante_Marca || row.manufacturer || "Original").trim();
      const manufacturerCode = String(row.Codigo_Fabricante || row.code || `IMP-${Date.now()}-${index}`).trim();
      const price = parseFloat(String(row.Preco || row.price || "0").replace(",", ".")) || 0;
      const quantity = parseInt(String(row.Quantidade || row.quantity || "1"), 10) || 1;
      const make = String(row.Montadora || row.make || "").trim();
      const model = String(row.Modelo_Veiculo || row.model || "").trim();
      const years = String(row.Anos_Compativeis || row.years || "").trim();

      // Sanitização de palavra-chave
      const coreKeyword = extractCoreKeyword(rawName);

      // Tenta match com o catálogo mestre canônico
      let matchedMasterPart = allMasterParts.find((mp) => {
        const mpLower = mp.name.toLowerCase();
        const rawLower = rawName.toLowerCase();

        if (mpLower === rawLower) return true;
        if (coreKeyword && mpLower.includes(coreKeyword)) return true;
        return false;
      });

      if (matchedMasterPart) {
        stagingItems.push({
          tempId: `row-${index}`,
          rawPartName: rawName,
          cleanPartName: matchedMasterPart.name,
          manufacturer,
          manufacturerCode,
          price,
          quantity,
          make,
          model,
          years,
          status: "MATCHED" as const,
          masterPartId: matchedMasterPart.id,
          masterPartName: matchedMasterPart.name,
        });
      } else {
        stagingItems.push({
          tempId: `row-${index}`,
          rawPartName: rawName,
          cleanPartName: rawName,
          manufacturer,
          manufacturerCode,
          price,
          quantity,
          make,
          model,
          years,
          status: "NEW_INBOX" as const,
          masterPartId: null,
          masterPartName: "Peça Inédita (Enviada para Triagem de Catálogo)",
        });
      }
    }

    return NextResponse.json({
      success: true,
      totalRows: stagingItems.length,
      matchedCount: stagingItems.filter((i) => i.status === "MATCHED").length,
      inboxCount: stagingItems.filter((i) => i.status === "NEW_INBOX").length,
      items: stagingItems,
    });
  } catch (error: any) {
    console.error("Erro na importação de planilha:", error);
    return NextResponse.json({ error: error.message || "Erro no processamento da planilha." }, { status: 500 });
  }
}
