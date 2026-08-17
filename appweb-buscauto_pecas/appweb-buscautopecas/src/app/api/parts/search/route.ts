import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, or } from "drizzle-orm";
import { cleanMasterPartTitle } from "@/lib/part-sanitizer";

export const runtime = "edge";

// GET /api/parts/search?q=farol&brand=BMW&model=325I
// Retorna até 10 sugestões limpas e saneadas do catálogo mestre para autocomplete.
export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim();
  const brandName = (req.nextUrl.searchParams.get("brandName") ?? "").trim().toLowerCase();

  if (q.length < 2) {
    return NextResponse.json({ parts: [] });
  }

  try {
    const db = await getDb();
    const matches = await db
      .select({
        name: schema.masterParts.name,
      })
      .from(schema.masterParts)
      .where(
        or(
          like(schema.masterParts.name, `%${q}%`),
          like(schema.masterParts.name, `%${q.toLowerCase()}%`),
          like(schema.masterParts.name, `%${q.toUpperCase()}%`)
        )
      )
      .limit(30);

    // Sanear nomes de peças (remover VOLVO, SCANIA, Lado Direito/Esquerdo)
    const cleanedNames: string[] = [];
    
    for (const m of matches) {
      const raw = m.name;
      // Se a busca especificou marca (ex: BMW) e o título original continha outra marca concorrente (ex: VOLVO, SCANIA), pula
      if (brandName && brandName.length > 2) {
        const lowerRaw = raw.toLowerCase();
        const conflictingBrands = ["volvo", "scania", "mercedes", "iveco", "man", "daf"].filter(b => b !== brandName);
        if (conflictingBrands.some(cb => lowerRaw.includes(cb))) {
          continue;
        }
      }

      const clean = cleanMasterPartTitle(raw);
      if (clean && !cleanedNames.includes(clean)) {
        cleanedNames.push(clean);
      }
    }

    return NextResponse.json({ parts: cleanedNames.slice(0, 10) });
  } catch (error) {
    console.error("Public part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
