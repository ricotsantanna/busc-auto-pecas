import { NextRequest, NextResponse } from "next/server";
import { eq, desc } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import { jwtVerify } from "jose";
import { cookies } from "next/headers";
import { crypto } from "@/lib/crypto-polyfill";

export const runtime = "edge";
const JWT_SECRET = new TextEncoder().encode(process.env.JWT_SECRET || "super_secret_dev_key");

// Middleware helper to get Company and Store ID
async function getAuthContext() {
  const cookieStore = await cookies();
  const token = cookieStore.get("auth_token")?.value;
  if (!token) throw new Error("Não autenticado");

  const { payload } = await jwtVerify(token, JWT_SECRET);
  const companyId = payload.companyId as string;

  // For phase 1, we just get the first store of the company
  const storeId = await withDbOrMock(
    async (db) => {
      const stores = await db.select().from(schema.stores).where(eq(schema.stores.companyId, companyId)).limit(1);
      return stores[0]?.id;
    },
    () => "mock-store-id"
  );

  if (!storeId) throw new Error("Loja não encontrada");

  return { companyId, storeId };
}

// Lojista list offers
export async function GET(req: NextRequest) {
  try {
    const { storeId } = await getAuthContext();

    const offers = await withDbOrMock(
      async (db) => {
        return await db
          .select({
            id: schema.storeOffers.id,
            price: schema.storeOffers.price,
            stockQuantity: schema.storeOffers.stockQuantity,
            condition: schema.storeOffers.condition,
            createdAt: schema.storeOffers.createdAt,
            part: {
              id: schema.masterParts.id,
              name: schema.masterParts.name,
              manufacturer: schema.masterParts.manufacturer,
              partNumber: schema.masterParts.partNumber,
            }
          })
          .from(schema.storeOffers)
          .innerJoin(schema.masterParts, eq(schema.storeOffers.partId, schema.masterParts.id))
          .where(eq(schema.storeOffers.storeId, storeId))
          .orderBy(desc(schema.storeOffers.createdAt));
      },
      () => []
    );

    return NextResponse.json({ offers });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 401 });
  }
}

// Lojista adds a new offer
export async function POST(req: NextRequest) {
  try {
    const { storeId } = await getAuthContext();
    const { partId, price, stockQuantity, condition } = await req.json();

    if (!partId || price === undefined) {
      return NextResponse.json({ error: "Dados incompletos" }, { status: 400 });
    }

    const offerId = crypto.randomUUID();

    await withDbOrMock(
      async (db) => {
        // Check if offer already exists for this part/store
        const existing = await db
          .select()
          .from(schema.storeOffers)
          .where(eq(schema.storeOffers.storeId, storeId))
          .where(eq(schema.storeOffers.partId, partId))
          .limit(1);

        if (existing.length > 0) {
          throw new Error("Você já possui uma oferta para esta peça.");
        }

        await db.insert(schema.storeOffers).values({
          id: offerId,
          storeId,
          partId,
          price: price.toString(),
          stockQuantity: stockQuantity || 1, // Default 1 if not specified
          condition: condition || "NOVA",
        });
      },
      () => {}
    );

    return NextResponse.json({ success: true, offerId });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
