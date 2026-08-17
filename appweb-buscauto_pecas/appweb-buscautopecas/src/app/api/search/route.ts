import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { eq, or, like, and, desc, asc } from "drizzle-orm";

import { cleanMasterPartTitle } from "@/lib/part-sanitizer";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  const sp = req.nextUrl.searchParams;
  const q = sp.get("q")?.trim() ?? "";
  const brandId = sp.get("brand") ?? undefined;
  const modelId = sp.get("model") ?? undefined;
  const yearStr = sp.get("year") ?? undefined;
  const versionId = sp.get("version") ?? undefined;

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

    // Vehicle Filtering
    if (versionId) {
      baseQuery = baseQuery.innerJoin(
        schema.partCompatibility,
        and(
          eq(schema.masterParts.id, schema.partCompatibility.partId),
          eq(schema.partCompatibility.versionId, versionId)
        )
      ) as any;
    } else if (yearStr && modelId) {
      const yearNum = parseInt(yearStr, 10);
      baseQuery = baseQuery
        .innerJoin(schema.partCompatibility, eq(schema.masterParts.id, schema.partCompatibility.partId))
        .innerJoin(schema.carVersions, eq(schema.partCompatibility.versionId, schema.carVersions.id))
        .where(
          and(
            eq(schema.carVersions.modelId, modelId),
            eq(schema.carVersions.year, yearNum)
          )
        ) as any;
    }

    const results = await baseQuery
      .where(whereClause)
      .orderBy(asc(schema.storeOffers.price));

    // Resolve readable vehicle info
    let vehicleInfo: { brand?: string; model?: string; year?: string; version?: string } | null = null;
    
    if (brandId || modelId || yearStr || versionId) {
      let bName = brandId;
      let mName = modelId;
      let vName = versionId;

      if (brandId) {
        const b = await db.select({ name: schema.brands.name }).from(schema.brands).where(eq(schema.brands.id, brandId)).limit(1);
        if (b[0]) bName = b[0].name;
      }
      if (modelId) {
        const m = await db.select({ name: schema.carModels.name }).from(schema.carModels).where(eq(schema.carModels.id, modelId)).limit(1);
        if (m[0]) mName = m[0].name;
      }
      if (versionId) {
        const v = await db.select({ name: schema.carVersions.versionName, year: schema.carVersions.year }).from(schema.carVersions).where(eq(schema.carVersions.id, versionId)).limit(1);
        if (v[0]) {
          vName = v[0].name;
          if (!yearStr) yearStr = String(v[0].year);
        }
      }

      vehicleInfo = {
        brand: bName || undefined,
        model: mName || undefined,
        year: yearStr || undefined,
        version: vName || undefined,
      };
    }

    // Calculate metadata
    let minPrice = null;
    let totalPrice = 0;
    const citiesSet = new Set<string>();

    const sanitizedResults = results.map((offer) => {
      if (minPrice === null || offer.price < minPrice) {
        minPrice = offer.price;
      }
      totalPrice += offer.price;
      if (offer.storeCity) {
        citiesSet.add(offer.storeCity);
      }
      return {
        ...offer,
        partName: cleanMasterPartTitle(offer.partName),
      };
    });

    const avgPrice = sanitizedResults.length > 0 ? totalPrice / sanitizedResults.length : null;

    const response = {
      vehicle: vehicleInfo,
      query: q,
      offers: sanitizedResults,
      meta: {
        totalCount: sanitizedResults.length,
        minPrice,
        avgPrice,
        cities: Array.from(citiesSet),
        matchedParts: new Set(sanitizedResults.map((r) => r.partId)).size,
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
