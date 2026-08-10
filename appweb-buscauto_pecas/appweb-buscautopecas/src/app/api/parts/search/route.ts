import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, or, desc } from "drizzle-orm";

export const runtime = "edge";

// GET /api/parts/search?q=past
// Retorna até 12 peças do catálogo mestre para autocomplete.
export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim();

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
      .limit(10);
    
    // De-duplicate names for the home page autocomplete
    const uniqueNames = Array.from(new Set(matches.map(m => m.name)));

    return NextResponse.json({ parts: uniqueNames });
  } catch (error) {
    console.error("Public part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
