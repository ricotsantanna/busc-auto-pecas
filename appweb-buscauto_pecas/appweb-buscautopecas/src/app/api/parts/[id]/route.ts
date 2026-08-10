import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { eq, inArray } from "drizzle-orm";

export const runtime = "edge";

export async function GET(
  _req: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  const { id } = await context.params;

  try {
    const db = await getDb();

    // 1. Fetch Part Info
    const partRows = await db
      .select({
        id: schema.masterParts.id,
        name: schema.masterParts.name,
        manufacturerCode: schema.masterParts.manufacturerCode,
        categoryId: schema.masterParts.categoryId,
        categoryName: schema.categories.name,
      })
      .from(schema.masterParts)
      .leftJoin(schema.categories, eq(schema.masterParts.categoryId, schema.categories.id))
      .where(eq(schema.masterParts.id, id))
      .limit(1);

    if (partRows.length === 0) {
      return NextResponse.json({ error: "Peça não encontrada" }, { status: 404 });
    }
    const part = partRows[0];

    // 2. Fetch Offers for this part
    const offerRows = await db
      .select({
        id: schema.storeOffers.id,
        price: schema.storeOffers.price,
        inStock: schema.storeOffers.inStock,
        condition: schema.storeOffers.condition,
        storeId: schema.stores.id,
        storeName: schema.stores.name,
        storeCity: schema.stores.city,
        storeState: schema.stores.state,
        storeWhatsapp: schema.stores.whatsapp,
        storeRating: schema.stores.rating,
      })
      .from(schema.storeOffers)
      .innerJoin(schema.stores, eq(schema.storeOffers.storeId, schema.stores.id))
      .where(eq(schema.storeOffers.partId, id));

    const offers = offerRows.map(row => ({
      id: row.id,
      partId: part.id,
      partName: part.name,
      partCode: part.manufacturerCode,
      categoryName: part.categoryName || "Geral",
      storeId: row.storeId,
      storeName: row.storeName,
      storeCity: row.storeCity,
      storeState: row.storeState,
      storeWhatsapp: row.storeWhatsapp,
      storeRating: row.storeRating ?? 0,
      price: row.price,
      condition: row.condition,
      inStock: row.inStock,
    })).sort((a, b) => a.price - b.price);

    // 3. Fetch Compatible Vehicles (Catálogo Cruzado)
    const compatRows = await db
      .select({
        versionId: schema.carVersions.id,
        versionName: schema.carVersions.versionName,
        year: schema.carVersions.year,
        engine: schema.carVersions.engine,
        modelName: schema.carModels.name,
        brandName: schema.brands.name,
      })
      .from(schema.partCompatibility)
      .innerJoin(schema.carVersions, eq(schema.partCompatibility.versionId, schema.carVersions.id))
      .innerJoin(schema.carModels, eq(schema.carVersions.modelId, schema.carModels.id))
      .innerJoin(schema.brands, eq(schema.carModels.brandId, schema.brands.id))
      .where(eq(schema.partCompatibility.partId, id));

    // Grouping by Brand -> Model
    const compatibilityGrouped: Record<string, any> = {};
    for (const row of compatRows) {
      if (!compatibilityGrouped[row.brandName]) {
        compatibilityGrouped[row.brandName] = {};
      }
      if (!compatibilityGrouped[row.brandName][row.modelName]) {
        compatibilityGrouped[row.brandName][row.modelName] = [];
      }
      compatibilityGrouped[row.brandName][row.modelName].push({
        versionId: row.versionId,
        versionName: row.versionName,
        year: row.year,
        engine: row.engine,
      });
    }

    const prices = offers.map((o) => o.price);
    const newCount = offers.filter((o) => o.condition === "NOVO").length;
    const usedCount = offers.filter((o) => o.condition === "USADO").length;

    return NextResponse.json({
      part: {
        id: part.id,
        name: part.name,
        manufacturerCode: part.manufacturerCode,
        categoryId: part.categoryId,
        categoryName: part.categoryName || "Geral",
        basePrice: 0, // This could be fetched or estimated if needed
      },
      offers,
      compatibleVehicles: compatibilityGrouped,
      meta: {
        total: offers.length,
        minPrice: prices.length ? Math.min(...prices) : null,
        maxPrice: prices.length ? Math.max(...prices) : null,
        avgPrice: prices.length
          ? Math.round((prices.reduce((a, b) => a + b, 0) / prices.length) * 100) / 100
          : null,
        newCount,
        usedCount,
        storeCount: new Set(offers.map(o => o.storeId)).size,
      },
    });
  } catch (error) {
    console.error("Error fetching part details:", error);
    return NextResponse.json({ error: "Erro interno no servidor" }, { status: 500 });
  }
}
