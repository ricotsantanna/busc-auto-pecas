import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, or } from "drizzle-orm";
import { cleanMasterPartTitle, MOTORCYCLE_BRANDS_MODELS } from "@/lib/part-sanitizer";

export const runtime = "edge";

// Known car brands for cross-brand conflict filtering
const CAR_BRANDS = [
  "fiat", "volkswagen", "vw", "chevrolet", "gm", "ford", "renault", "peugeot", "citroen", "citroën",
  "toyota", "honda", "hyundai", "nissan", "jeep", "bmw", "audi", "mercedes", "volvo", "scania", "mitsubishi", "chery", "byd"
];

export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim();
  const segment = (req.nextUrl.searchParams.get("segment") ?? "CARRO").toUpperCase();
  const brandName = (req.nextUrl.searchParams.get("brandName") ?? "").trim().toLowerCase();
  const modelName = (req.nextUrl.searchParams.get("modelName") ?? "").trim().toLowerCase();

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
      .limit(60);

    const cleanedNames: string[] = [];

    for (const m of matches) {
      const raw = m.name;
      const lowerRaw = raw.toLowerCase();

      // 1. Filtrar peças de moto se o segmento selecionado for CARRO
      if (segment === "CARRO") {
        if (MOTORCYCLE_BRANDS_MODELS.some((m) => lowerRaw.includes(m))) {
          continue;
        }
      }

      // 2. Se a busca especificou marca (ex: Ford, BMW), filtra peças que contenham marcas conflitantes no título original (ex: Fiat, Citroen, Volvo)
      if (brandName && brandName.length >= 3) {
        const conflictingBrands = CAR_BRANDS.filter((b) => b !== brandName && !brandName.includes(b));
        if (conflictingBrands.some((cb) => lowerRaw.includes(cb))) {
          continue;
        }
      }

      // 3. Saneamento do nome (remove marcas, modelos e lados do texto)
      const clean = cleanMasterPartTitle(raw);
      if (clean && clean.length >= 3 && !cleanedNames.includes(clean)) {
        cleanedNames.push(clean);
      }
    }

    return NextResponse.json({ parts: cleanedNames.slice(0, 10) });
  } catch (error) {
    console.error("Public part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
