import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { eq } from "drizzle-orm";
import { crypto } from "@/lib/crypto-polyfill";

export const runtime = "edge";

// HARDCODED para teste de desenvolvimento até termos um sistema de login
const TEST_STORE_ID = "store-test-01";

export async function GET(req: NextRequest) {
  let db;
  try {
    db = await getDb();
  } catch (err) {
    return NextResponse.json({ error: "D1 database not available" }, { status: 500 });
  }

  try {
    const offers = await db
      .select({
        id: schema.storeOffers.id,
        partId: schema.masterParts.id,
        partName: schema.masterParts.name,
        partCode: schema.masterParts.manufacturerCode,
        price: schema.storeOffers.price,
        condition: schema.storeOffers.condition,
        inStock: schema.storeOffers.inStock,
        createdAt: schema.storeOffers.createdAt,
      })
      .from(schema.storeOffers)
      .innerJoin(schema.masterParts, eq(schema.storeOffers.partId, schema.masterParts.id))
      .where(eq(schema.storeOffers.storeId, TEST_STORE_ID));

    return NextResponse.json({ offers });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest) {
  let db;
  try {
    db = await getDb();
  } catch (err) {
    return NextResponse.json({ error: "D1 database not available" }, { status: 500 });
  }

  try {
    const body = await req.json();
    const { partId, price, condition, inStock, notes } = body;

    if (!partId || price === undefined || !condition) {
      return NextResponse.json({ error: "Missing required fields" }, { status: 400 });
    }

    const newOffer = {
      id: crypto.randomUUID(),
      storeId: TEST_STORE_ID,
      partId,
      price: parseFloat(price),
      condition,
      inStock: Boolean(inStock),
      notes: notes || null,
    };

    await db.insert(schema.storeOffers).values(newOffer).run();

    return NextResponse.json({ success: true, offer: newOffer }, { status: 201 });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
