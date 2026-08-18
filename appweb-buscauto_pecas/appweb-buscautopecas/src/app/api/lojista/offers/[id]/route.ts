// src/app/api/lojista/offers/[id]/route.ts — Edição, Alternância de Status e Exclusão de Ofertas do Lojista
import { NextRequest, NextResponse } from "next/server";
import { eq, and } from "drizzle-orm";
import { getDb, schema } from "@/db";
import { getSession } from "@/lib/auth-edge";

export const runtime = "edge";

async function getAuthContext() {
  const session = await getSession();
  if (!session) throw new Error("Não autorizado");

  const companyId = session.companyId;
  const db = await getDb();

  let storeId = session.storeId;
  if (!storeId && companyId) {
    const stores = await db
      .select({ id: schema.stores.id })
      .from(schema.stores)
      .where(eq(schema.stores.companyId, companyId))
      .limit(1);
    storeId = stores[0]?.id;
  }

  return { session, storeId, db };
}

// PATCH — Atualizar Oferta (Preço, Quantidade, Condição, Fabricante, Código e Status Pausado/Ativo)
export async function PATCH(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const body = await req.json();
    const { storeId, db } = await getAuthContext();

    // Busca a oferta para verificar propriedade e obter o partId
    const existingOfferRows = await db
      .select()
      .from(schema.storeOffers)
      .where(
        storeId
          ? and(eq(schema.storeOffers.id, id), eq(schema.storeOffers.storeId, storeId))
          : eq(schema.storeOffers.id, id)
      )
      .limit(1);

    if (existingOfferRows.length === 0) {
      return NextResponse.json({ error: "Oferta não encontrada ou acesso negado." }, { status: 404 });
    }

    const existingOffer = existingOfferRows[0];
    const updateData: Record<string, any> = {
      updatedAt: Date.now(),
    };

    if (body.price !== undefined && body.price !== null) {
      updateData.price = Number(body.price);
    }
    if (body.inStock !== undefined && body.inStock !== null) {
      updateData.inStock = Boolean(body.inStock);
    } else if (body.stockQuantity !== undefined) {
      updateData.inStock = Number(body.stockQuantity) > 0;
    }
    if (body.condition) {
      updateData.condition = body.condition === "USADO" ? "USADO" : "NOVO";
    }
    if (body.notes !== undefined) {
      updateData.notes = body.notes;
    }

    // Atualiza a oferta no banco D1
    await db
      .update(schema.storeOffers)
      .set(updateData)
      .where(eq(schema.storeOffers.id, id));

    // Se fabricante ou código foram enviados, atualiza também a peça mestre vinculada
    if (body.manufacturer || body.manufacturerCode || body.partNumber) {
      const partUpdate: Record<string, any> = { updatedAt: Date.now() };
      if (body.manufacturer) partUpdate.manufacturer = body.manufacturer.trim();
      if (body.manufacturerCode || body.partNumber) {
        partUpdate.manufacturerCode = (body.manufacturerCode || body.partNumber).trim();
      }

      await db
        .update(schema.masterParts)
        .set(partUpdate)
        .where(eq(schema.masterParts.id, existingOffer.partId));
    }

    return NextResponse.json({ success: true, message: "Oferta atualizada com sucesso." });
  } catch (error: any) {
    console.error("PATCH offer error:", error);
    return NextResponse.json({ error: error.message || "Erro ao atualizar oferta." }, { status: 500 });
  }
}

// DELETE — Remover Oferta do Estoque do Lojista
export async function DELETE(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const { storeId, db } = await getAuthContext();

    const result = await db
      .delete(schema.storeOffers)
      .where(
        storeId
          ? and(eq(schema.storeOffers.id, id), eq(schema.storeOffers.storeId, storeId))
          : eq(schema.storeOffers.id, id)
      );

    return NextResponse.json({ success: true, deletedId: id });
  } catch (error: any) {
    console.error("DELETE offer error:", error);
    return NextResponse.json({ error: error.message || "Erro ao excluir oferta." }, { status: 500 });
  }
}
