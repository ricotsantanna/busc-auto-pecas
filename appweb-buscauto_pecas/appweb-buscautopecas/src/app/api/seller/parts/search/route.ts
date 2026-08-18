// src/app/api/seller/parts/search/route.ts — Busca de Peças Canônicas com Desduplicação e Normalização de Fabricante
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, eq } from "drizzle-orm";

export const runtime = "edge";

// Marcas de montadoras/veículos conhecidas para normalizar como 'Original / Genuíno'
const AUTOMAKER_BRANDS = [
  "general motors", "gm", "chevrolet", "volkswagen", "vw", "fiat", "ford", "hyundai",
  "honda", "toyota", "renault", "peugeot", "citroen", "citroën", "nissan", "jeep",
  "iveco", "scania", "volvo", "bmw", "mercedes", "mercedes-benz", "audi", "chery", "byd", "haval", "mitsubishi"
];

function sanitizeLike(term: string): string {
  return term.replace(/[%_\\\[\]]/g, "").trim();
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
    const safeQ = sanitizeLike(q);

    // Consulta SQL no D1 agrupando por nome para desduplicação
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
      .where(like(schema.masterParts.name, `%${safeQ}%`))
      .groupBy(schema.masterParts.name)
      .limit(30);

    // Desduplicação estrita por nome em memória e normalização do fabricante
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

    for (const part of matches) {
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
