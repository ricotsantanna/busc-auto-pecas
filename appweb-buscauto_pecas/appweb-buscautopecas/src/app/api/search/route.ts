import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { eq, or, like, and, desc, asc } from "drizzle-orm";
import { mockCallback } from "@/db/index";
import { generateSearchResults } from "@/db/mock-offers";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  const sp = req.nextUrl.searchParams;
  const q = sp.get("q")?.trim() ?? "";
  const brand = sp.get("brand") ?? undefined;
  const model = sp.get("model") ?? undefined;
  const version = sp.get("version") ?? undefined;

  let db;
  try {
    db = await getDb();
  } catch (err) {
    return NextResponse.json(generateSearchResults(q, brand, model, version), {
      headers: { "Cache-Control": "public, max-age=30, s-maxage=60" },
    });
  }

  try {
    const conditions = [];

    if (q) {
      const searchTerm = `%${q.toLowerCase()}%`;
      conditions.push(
        or(
          like(schema.masterParts.name, searchTerm),
          like(schema.masterParts.manufacturerCode, searchTerm)
        )
      );
    }

    const whereClause = conditions.length > 0 ? and(...conditions) : undefined;

    const results = await db
      .select({
        id: schema.storeOffers.id,
        partId: schema.masterParts.id,
        partName: schema.masterParts.name,
        partCode: schema.masterParts.manufacturerCode,
        categoryName: schema.categories.name,
        storeId: schema.stores.id,
        storeName: schema.stores.name,
        storeCity: schema.stores.city,
        storeState: schema.stores.state,
        storeWhatsapp: schema.stores.whatsapp,
        storeRating: schema.stores.rating,
        price: schema.storeOffers.price,
        condition: schema.storeOffers.condition,
        inStock: schema.storeOffers.inStock,
        notes: schema.storeOffers.notes,
        createdAt: schema.storeOffers.createdAt,
      })
      .from(schema.storeOffers)
      .innerJoin(schema.masterParts, eq(schema.storeOffers.partId, schema.masterParts.id))
      .innerJoin(schema.stores, eq(schema.storeOffers.storeId, schema.stores.id))
      .leftJoin(schema.categories, eq(schema.masterParts.categoryId, schema.categories.id))
      .where(whereClause)
      .orderBy(asc(schema.storeOffers.price));

    // Optional: If FIPE version is provided, we *could* filter or boost by partCompatibility.
    // For now, we return all text matches (Option B) to avoid empty states, 
    // but in a production V2, we would sort compatible parts first.

    // Calculate metadata
    let minPrice = null;
    let totalPrice = 0;
    const citiesSet = new Set<string>();

    results.forEach((offer) => {
      if (minPrice === null || offer.price < minPrice) {
        minPrice = offer.price;
      }
      totalPrice += offer.price;
      if (offer.storeCity) {
        citiesSet.add(offer.storeCity);
      }
    });

    const avgPrice = results.length > 0 ? totalPrice / results.length : null;

    const response = {
      vehicle: version ? { brand: brand || "", model: model || "", version: version } : null,
      query: q,
      offers: results,
      meta: {
        totalCount: results.length,
        minPrice,
        avgPrice,
        cities: Array.from(citiesSet),
        matchedParts: new Set(results.map((r) => r.partId)).size,
      },
    };

    return NextResponse.json(response, {
      headers: { "Cache-Control": "public, max-age=30, s-maxage=60" },
    });
  } catch (error: any) {
    console.error("Search API Error:", error);
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
