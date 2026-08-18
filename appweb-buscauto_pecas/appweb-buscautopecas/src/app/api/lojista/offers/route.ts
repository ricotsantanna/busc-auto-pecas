// src/app/api/lojista/offers/route.ts — Cadastro e Listagem de Ofertas de Lojista com Taxonomia Canônica
import { NextRequest, NextResponse } from "next/server";
import { eq, desc, and } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import { getSession } from "@/lib/auth-edge";

export const runtime = "edge";

// Middleware helper to get Company and Store ID
async function getAuthContext() {
  const session = await getSession();
  if (!session) throw new Error("Não autenticado");

  const companyId = session.companyId;

  const storeId = session.storeId || await withDbOrMock(
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
            inStock: schema.storeOffers.inStock,
            condition: schema.storeOffers.condition,
            notes: schema.storeOffers.notes,
            createdAt: schema.storeOffers.createdAt,
            part: {
              id: schema.masterParts.id,
              name: schema.masterParts.name,
              manufacturer: schema.masterParts.manufacturer,
              manufacturerCode: schema.masterParts.manufacturerCode,
              position: schema.masterParts.position,
              categoryName: schema.categories.name,
            }
          })
          .from(schema.storeOffers)
          .innerJoin(schema.masterParts, eq(schema.storeOffers.partId, schema.masterParts.id))
          .leftJoin(schema.categories, eq(schema.masterParts.categoryId, schema.categories.id))
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

// Lojista adds a new offer linked to canonical master_parts
export async function POST(req: NextRequest) {
  try {
    const { storeId } = await getAuthContext();
    const {
      partId,
      price,
      quantity = 1,
      condition = "NOVO",
      notes,
      versionIds = []
    } = await req.json();

    if (!partId || price === undefined) {
      return NextResponse.json({ error: "Campos obrigatórios ausentes: partId e preço são necessários." }, { status: 400 });
    }

    const offerId = crypto.randomUUID();

    await withDbOrMock(
      async (db) => {
        // Verifica se a loja já possui oferta para esta peça e mesma condição
        const existing = await db
          .select()
          .from(schema.storeOffers)
          .where(
            and(
              eq(schema.storeOffers.storeId, storeId),
              eq(schema.storeOffers.partId, partId),
              eq(schema.storeOffers.condition, condition)
            )
          )
          .limit(1);

        if (existing.length > 0) {
          // Atualiza oferta existente
          await db
            .update(schema.storeOffers)
            .set({
              price: Number(price),
              inStock: Number(quantity) > 0,
              notes: notes || null,
              updatedAt: new Date(),
            })
            .where(eq(schema.storeOffers.id, existing[0].id));
          return;
        }

        // Insere nova oferta do lojista
        await db.insert(schema.storeOffers).values({
          id: offerId,
          storeId,
          partId,
          price: Number(price),
          inStock: Number(quantity) > 0,
          condition: condition === "USADO" ? "USADO" : "NOVO",
          notes: notes || null,
        });

        // Vincula versões compatíveis na tabela part_compatibility se enviadas
        if (Array.isArray(versionIds) && versionIds.length > 0) {
          const compatEntries = versionIds.map((vId: string) => ({
            partId,
            versionId: vId,
          }));
          try {
            await db.insert(schema.partCompatibility).values(compatEntries);
          } catch (e) {
            console.warn("Compatibilidade já cadastrada:", e);
          }
        }
      },
      () => {}
    );

    return NextResponse.json({ success: true, message: "Oferta cadastrada com sucesso!", offerId });
  } catch (error: any) {
    console.error("Save offer error:", error);
    return NextResponse.json({ error: error.message || "Erro ao salvar oferta" }, { status: 500 });
  }
}
