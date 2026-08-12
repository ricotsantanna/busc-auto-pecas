import { NextResponse } from "next/server";
import { getDb } from "@/db";
export const runtime = "edge";
import { storeOffers, masterParts } from "@/db/schema";
import { eq, desc } from "drizzle-orm";
import { getSession } from "@/lib/auth";

export async function GET(req: Request) {
  try {
    const db = await getDb();
    const session = await getSession();
    if (!session || !session.storeId) {
      return NextResponse.json({ error: "Não autorizado" }, { status: 401 });
    }

    // Busca todas as ofertas dessa loja (storeId) com as informações da peça mestre
    const inventory = await db
      .select({
        offerId: storeOffers.id,
        partName: masterParts.name,
        brand: masterParts.brand,
        partNumber: masterParts.partNumber,
        price: storeOffers.price,
        condition: storeOffers.condition,
        inStock: storeOffers.inStock,
        createdAt: storeOffers.createdAt,
      })
      .from(storeOffers)
      .innerJoin(masterParts, eq(storeOffers.partId, masterParts.id))
      .where(eq(storeOffers.storeId, session.storeId))
      .orderBy(desc(storeOffers.createdAt));

    return NextResponse.json({ inventory });
  } catch (error) {
    console.error("Inventory fetch error:", error);
    return NextResponse.json({ error: "Erro interno no servidor." }, { status: 500 });
  }
}
