import { NextResponse } from "next/server";
import { getDb, schema } from "@/db";
export const runtime = "edge";
import { storeOffers, masterParts, stores } from "@/db/schema";
import { eq, desc, inArray } from "drizzle-orm";
import { getSession } from "@/lib/auth-edge";

export async function GET(req: Request) {
  try {
    const db = await getDb();
    const session = await getSession();
    if (!session || (!session.storeId && !session.companyId)) {
      return NextResponse.json({ error: "Não autorizado" }, { status: 401 });
    }

    let storeId = session.storeId;
    if (!storeId && session.companyId) {
      const storeRows = await db
        .select({ id: stores.id })
        .from(stores)
        .where(eq(stores.companyId, session.companyId))
        .limit(1);
      storeId = storeRows[0]?.id;
    }

    if (!storeId) {
      return NextResponse.json({ inventory: [] });
    }

    // Busca todas as ofertas dessa loja (storeId) com as informações da peça mestre
    const inventory = await db
      .select({
        offerId: storeOffers.id,
        partId: masterParts.id,
        partName: masterParts.name,
        brand: masterParts.manufacturer,
        partNumber: masterParts.manufacturerCode,
        price: storeOffers.price,
        condition: storeOffers.condition,
        inStock: storeOffers.inStock,
        createdAt: storeOffers.createdAt,
      })
      .from(storeOffers)
      .innerJoin(masterParts, eq(storeOffers.partId, masterParts.id))
      .where(eq(storeOffers.storeId, storeId))
      .orderBy(desc(storeOffers.createdAt));

    // Busca compatibilidades de todas as peças no estoque
    const partIds = Array.from(new Set(inventory.map((item) => item.partId)));
    
    let compatMap: Record<string, string[]> = {};
    if (partIds.length > 0) {
      const compatRows = await db
        .select({
          partId: schema.partCompatibility.partId,
          brandName: schema.brands.name,
          modelName: schema.carModels.name,
          year: schema.carVersions.year,
        })
        .from(schema.partCompatibility)
        .innerJoin(schema.carVersions, eq(schema.partCompatibility.versionId, schema.carVersions.id))
        .innerJoin(schema.carModels, eq(schema.carVersions.modelId, schema.carModels.id))
        .innerJoin(schema.brands, eq(schema.carModels.brandId, schema.brands.id))
        .where(inArray(schema.partCompatibility.partId, partIds));

      for (const row of compatRows) {
        if (!compatMap[row.partId]) compatMap[row.partId] = [];
        const label = `${row.brandName} ${row.modelName} (${row.year})`;
        if (!compatMap[row.partId].includes(label)) {
          compatMap[row.partId].push(label);
        }
      }
    }

    const inventoryWithCompat = inventory.map((item) => ({
      ...item,
      compatibilities: compatMap[item.partId] || [],
    }));

    return NextResponse.json({ inventory: inventoryWithCompat });
  } catch (error) {
    console.error("Inventory fetch error:", error);
    return NextResponse.json({ error: "Erro interno no servidor." }, { status: 500 });
  }
}
