// src/app/api/admin/inbox/route.ts — Listagem de Peças na Fila de Triagem de IA para Moderação
import { NextRequest, NextResponse } from "next/server";
import { eq, desc } from "drizzle-orm";
import { getDb, schema } from "@/db";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  try {
    const db = await getDb();
    const { searchParams } = new URL(req.url);
    const statusParam = searchParams.get("status") || "PENDING_REVIEW";

    // 1. Busca itens da fila de triagem com nome da loja
    const items = await db
      .select({
        id: schema.masterPartsInbox.id,
        storeId: schema.masterPartsInbox.storeId,
        storeName: schema.stores.name,
        rawPartName: schema.masterPartsInbox.rawPartName,
        cleanPartName: schema.masterPartsInbox.cleanPartName,
        manufacturer: schema.masterPartsInbox.manufacturer,
        manufacturerCode: schema.masterPartsInbox.manufacturerCode,
        make: schema.masterPartsInbox.make,
        model: schema.masterPartsInbox.model,
        years: schema.masterPartsInbox.years,
        status: schema.masterPartsInbox.status,
        suggestedMasterPartId: schema.masterPartsInbox.suggestedMasterPartId,
        createdAt: schema.masterPartsInbox.createdAt,
      })
      .from(schema.masterPartsInbox)
      .leftJoin(schema.stores, eq(schema.masterPartsInbox.storeId, schema.stores.id))
      .where(eq(schema.masterPartsInbox.status, statusParam))
      .orderBy(desc(schema.masterPartsInbox.createdAt));

    // 2. Busca o catálogo mestre canônico (133 peças) para o De-Para manual
    const masterParts = await db
      .select({
        id: schema.masterParts.id,
        name: schema.masterParts.name,
        manufacturer: schema.masterParts.manufacturer,
        manufacturerCode: schema.masterParts.manufacturerCode,
      })
      .from(schema.masterParts)
      .orderBy(schema.masterParts.name);

    // 3. Conta total de itens pendentes para o badge
    const pendingCountRows = await db
      .select()
      .from(schema.masterPartsInbox)
      .where(eq(schema.masterPartsInbox.status, "PENDING_REVIEW"));

    return NextResponse.json({
      success: true,
      pendingCount: pendingCountRows.length,
      items,
      masterParts,
    });
  } catch (error: any) {
    console.error("Erro ao listar inbox de admin:", error);
    return NextResponse.json({ error: error.message || "Erro ao carregar fila de triagem." }, { status: 500 });
  }
}
