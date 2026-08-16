import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { getSession } from "@/lib/auth-edge";
import { eq } from "drizzle-orm";

export const runtime = "edge";

function sanitizePartName(name: string): string {
  if (!name) return "Peça Automotiva";
  let cleaned = name;
  // Remove 4-digit years (e.g. 1998, 2021)
  cleaned = cleaned.replace(/\b(19\d{2}|20\d{2})\b/g, "");
  // Clean multiple spaces
  cleaned = cleaned.replace(/\s+/g, " ").trim();
  if (cleaned.length === 0) return name;
  return cleaned.charAt(0).toUpperCase() + cleaned.slice(1);
}

export async function POST(req: NextRequest) {
  try {
    // 1. Verify user
    const session = await getSession();
    if (!session) {
      return NextResponse.json({ error: "Não autenticado" }, { status: 401 });
    }

    const { rawText } = (await req.json()) as { rawText: string };

    if (!rawText || rawText.trim() === "") {
      return NextResponse.json({ error: "Texto vazio" }, { status: 400 });
    }

    // 2. Setup Cloudflare AI (Llama 3) via REST API
    const accountId = process.env.CLOUDFLARE_ACCOUNT_ID;
    const apiToken = process.env.CLOUDFLARE_API_TOKEN;

    let parsedData;

    if (accountId && apiToken) {
      // Execute Cloudflare AI
      const systemPrompt = `
      Você é um assistente especialista em catálogos de autopeças.
      Sua tarefa é extrair as informações de uma peça automotiva a partir de um texto não estruturado escrito por um mecânico ou lojista.
      
      REGRAS CRÍTICAS DE EXTRAÇÃO:
      1. Extraia o NOME GENÉRICO da peça (nomeDaPeca). Ex: "Para-choque Dianteiro", "Pastilha de Freio Dianteira", "Farol Direito", "Filtro de Ar".
      2. REMOVA RIGOROSAMENTE do nomeDaPeca qualquer menção a modelo de carro ou ano! Ex: Se o texto for "Farol direito audi A3 1998", nomeDaPeca DEVE ser "Farol Direito". Se for "Filtro de ar corsa 1998", nomeDaPeca DEVE ser "Filtro de Ar".
      3. Extraia o nome do fabricante (fabricante) se houver (ex: Bosch, Cobreq, Fremax). Caso contrário, retorne "Desconhecido".
      4. Extraia o código do fabricante (codigoPeca) se houver.
      5. Você DEVE retornar APENAS um JSON válido no formato:
      {
        "nomeDaPeca": "string",
        "fabricante": "string",
        "codigoPeca": "string"
      }`;

      const aiResponse = await fetch(
        `https://api.cloudflare.com/client/v4/accounts/${accountId}/ai/run/@cf/meta/llama-3-8b-instruct`,
        {
          headers: { Authorization: `Bearer ${apiToken}`, "Content-Type": "application/json" },
          method: "POST",
          body: JSON.stringify({
            messages: [
              { role: "system", content: systemPrompt },
              { role: "user", content: rawText }
            ]
          })
        }
      );

      if (!aiResponse.ok) {
        throw new Error("Erro na API de Inteligência Artificial");
      }

      const aiResult = (await aiResponse.json()) as any;
      const responseText = aiResult.result.response;
      
      // Clean up the text in case Llama returned markdown formatting
      const cleanJson = responseText.replace(/```json/g, "").replace(/```/g, "").trim();
      parsedData = JSON.parse(cleanJson);
    } else {
      // MOCK FALLBACK: Return clean generic part name
      console.warn("CLOUDFLARE_ACCOUNT_ID ou CLOUDFLARE_API_TOKEN não encontrados. Usando Mock IA.");
      parsedData = {
        nomeDaPeca: sanitizePartName(rawText),
        fabricante: "Desconhecido",
        codigoPeca: "N/A"
      };
    }

    // Always sanitize nomeDaPeca to ensure no years stay in title
    if (parsedData.nomeDaPeca) {
      parsedData.nomeDaPeca = sanitizePartName(parsedData.nomeDaPeca);
    }

    // Ensure unique code for master_parts constraint
    let code = parsedData.codigoPeca;
    if (!code || code === "N/A" || code === "Desconhecido") {
      code = `IA-${crypto.randomUUID().substring(0, 8).toUpperCase()}`;
    }

    let partId = crypto.randomUUID();
    
    await withDbOrMock(
      async (db) => {
        // Check if masterPart with this code already exists
        const existing = await db
          .select({ id: schema.masterParts.id })
          .from(schema.masterParts)
          .where(eq(schema.masterParts.manufacturerCode, code))
          .limit(1);

        if (existing.length > 0) {
          partId = existing[0].id;
        } else {
          // Ensure categoryId exists or use/create default category
          const catRows = await db
            .select({ id: schema.categories.id })
            .from(schema.categories)
            .limit(1);

          let categoryId = catRows[0]?.id;
          if (!categoryId) {
            categoryId = "c-1";
            await db.insert(schema.categories).values({
              id: categoryId,
              name: "Geral",
              slug: "geral",
            }).onConflictDoNothing();
          }

          const inserted = await db.insert(schema.masterParts).values({
            id: partId,
            name: parsedData.nomeDaPeca,
            manufacturer: parsedData.fabricante || "Geral",
            manufacturerCode: code,
            categoryId,
            description: `Extraído via IA do texto original: "${rawText}"`,
          }).returning({ id: schema.masterParts.id });

          if (inserted.length > 0) {
            partId = inserted[0].id;
          }
        }
      },
      () => { console.log("Mock db insert for AI part") }
    );

    return NextResponse.json({ 
      success: true, 
      partId: partId,
      extractedData: {
        ...parsedData,
        codigoPeca: code
      } 
    });

  } catch (error: any) {
    console.error("AI Parser error:", error);
    return NextResponse.json(
      { error: error.message || "Erro ao processar texto com a IA" },
      { status: 500 }
    );
  }
}
