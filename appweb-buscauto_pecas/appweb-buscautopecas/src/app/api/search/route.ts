import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { eq, or, like, and, desc, asc } from "drizzle-orm";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  const sp = req.nextUrl.searchParams;
  const q = sp.get("q")?.trim() ?? "";
  const brand = sp.get("brand") ?? undefined;
  const model = sp.get("model") ?? undefined;
  const version = sp.get("version") ?? undefined;

  const db = await getDb();

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

    let baseQuery = db
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
      .leftJoin(schema.categories, eq(schema.masterParts.categoryId, schema.categories.id));

    // STRICT MAPPING: Se o usuário selecionou uma versão, cruzamos obrigatoriamente
    if (version) {
      baseQuery = baseQuery.innerJoin(
        schema.partCompatibility, 
        and(
          eq(schema.masterParts.id, schema.partCompatibility.partId),
          eq(schema.partCompatibility.versionId, version)
        )
      ) as any;
    }

    const results = await baseQuery
      .where(whereClause)
      .orderBy(asc(schema.storeOffers.price));

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
