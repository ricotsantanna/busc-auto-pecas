// src/app/api/seller/parts/search/route.ts — Busca de Peças Canônicas para Cadastro do Lojista
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, or, eq } from "drizzle-orm";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim();

  if (q.length < 2) {
    return NextResponse.json({ parts: [] });
  }

  try {
    const db = await getDb();
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
      .where(
        or(
          like(schema.masterParts.name, `%${q}%`),
          like(schema.masterParts.name, `%${q.toLowerCase()}%`),
          like(schema.masterParts.name, `%${q.toUpperCase()}%`)
        )
      )
      .limit(15);
    
    return NextResponse.json({ parts: matches });
  } catch (error) {
    console.error("Seller canonical part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
