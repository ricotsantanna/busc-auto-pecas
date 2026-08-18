// src/app/api/seller/parts/search/route.ts — Busca de Peças Canônicas com Tokenização de Palavra-Chave Principal e Filtro em Memória
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, eq } from "drizzle-orm";

export const runtime = "edge";

const STOP_WORDS = new Set(["de", "do", "da", "dos", "das", "para", "com", "sem", "em", "um", "uma", "o", "a", "os", "as"]);

// Marcas de montadoras/veículos conhecidas para normalizar como 'Original / Genuíno'
const AUTOMAKER_BRANDS = [
  "general motors", "gm", "chevrolet", "volkswagen", "vw", "fiat", "ford", "hyundai",
  "honda", "toyota", "renault", "peugeot", "citroen", "citroën", "nissan", "jeep",
  "iveco", "scania", "volvo", "bmw", "mercedes", "mercedes-benz", "audi", "chery", "byd", "haval", "mitsubishi"
];

function getPrimaryKeyword(q: string): { primaryKeyword: string; allWords: string[] } {
  const words = q
    .trim()
    .replace(/[%_\\\[\]]/g, "")
    .split(/\s+/)
    .filter((w) => w.length > 2 && !STOP_WORDS.has(w.toLowerCase()));

  const primaryKeyword = words[0] || q.trim().replace(/[%_\\\[\]]/g, "");
  return { primaryKeyword, allWords: words };
}

function normalizeManufacturer(m: string | null | undefined): string {
  if (!m || m.trim() === "" || m.toLowerCase() === "desconhecido") {
    return "Original / Genuíno";
  }
  const lower = m.toLowerCase().trim();
  if (AUTOMAKER_BRANDS.some((b) => lower === b || lower.includes(b))) {
    return "Original / Genuíno";
  }
  return m;
}

export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim();

  if (q.length < 2) {
    return NextResponse.json({ parts: [] });
  }

  try {
    const db = await getDb();
    const { primaryKeyword, allWords } = getPrimaryKeyword(q);

    // Query D1 usando 1 ÚNICA PALAVRA-CHAVE PRINCIPAL (impede estouro de limite LIKE do SQLite)
    const matches = await db
      .select({
        id: schema.masterParts.id,
        name: schema.masterParts.name,
        manufacturer: schema.masterParts.manufacturer,
        manufacturerCode: schema.masterParts.manufacturerCode,
        position: schema.masterParts.position,
        categoryName: schema.categories.name,
      })
      .from(schema.masterParts)
      .leftJoin(schema.categories, eq(schema.masterParts.categoryId, schema.categories.id))
      .where(like(schema.masterParts.name, `%${primaryKeyword}%`))
      .groupBy(schema.masterParts.name)
      .limit(50);

    // Refinamento e verificação de todas as palavras em memória TypeScript (sem sobrecarregar D1 SQL)
    const filteredMatches = matches.filter((item) => {
      if (allWords.length <= 1) return true;
      const lowerName = item.name.toLowerCase();
      // Confere se as palavras adicionais existem na peça
      return allWords.slice(1).every((w) => lowerName.includes(w.toLowerCase()));
    });

    const seenNames = new Set<string>();
    const uniqueParts: Array<{
      id: string;
      name: string;
      manufacturer: string;
      manufacturerCode: string | null;
      partNumber: string | null;
      position: string | null;
      categoryName: string | null;
    }> = [];

    const sourceList = filteredMatches.length > 0 ? filteredMatches : matches;

    for (const part of sourceList) {
      const normalizedName = part.name.trim();
      const lowerKey = normalizedName.toLowerCase();

      if (!seenNames.has(lowerKey)) {
        seenNames.add(lowerKey);
        const normMfg = normalizeManufacturer(part.manufacturer);
        uniqueParts.push({
          id: part.id,
          name: normalizedName,
          manufacturer: normMfg,
          manufacturerCode: part.manufacturerCode,
          partNumber: part.manufacturerCode,
          position: part.position,
          categoryName: part.categoryName,
        });
      }
    }

    return NextResponse.json({ parts: uniqueParts.slice(0, 15) });
  } catch (error) {
    console.error("Seller canonical part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
