// src/app/api/admin/inbox/[id]/route.ts — Ações de Moderação (Aprovar, Mesclar De-Para, Rejeitar)
import { NextRequest, NextResponse } from "next/server";
import { eq } from "drizzle-orm";
import { getDb, schema } from "@/db";

export const runtime = "edge";

export async function POST(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const db = await getDb();
    const body = await req.json();
    const { action, targetMasterPartId, cleanName, categoryId } = body;

    // Busca o item da inbox
    const inboxRows = await db
      .select()
      .from(schema.masterPartsInbox)
      .where(eq(schema.masterPartsInbox.id, id))
      .limit(1);

    if (inboxRows.length === 0) {
      return NextResponse.json({ error: "Item da fila de triagem não encontrado." }, { status: 404 });
    }

    const inboxItem = inboxRows[0];
    const provPartId = inboxItem.suggestedMasterPartId;

    if (action === "approve") {
      // 1. Cria a peça oficial na master_parts com ID canônico definitivo
      const officialPartId = `mp-${(cleanName || inboxItem.cleanPartName).toLowerCase().replace(/[^a-z0-9]+/g, "-")}-${Date.now().toString().slice(-4)}`;
      
      await db.insert(schema.masterParts).values({
        id: officialPartId,
        name: cleanName || inboxItem.cleanPartName,
        manufacturer: inboxItem.manufacturer || "Original",
        manufacturerCode: inboxItem.manufacturerCode || officialPartId,
        categoryId: categoryId || "cat-motor",
        position: "CENTRAL",
        description: `Homologado pelo Administrador — Originado da Loja ID ${inboxItem.storeId}`,
        createdAt: Date.now(),
        updatedAt: Date.now(),
      });

      // 2. Atualiza a inbox para APPROVED
      await db
        .update(schema.masterPartsInbox)
        .set({ status: "APPROVED" })
        .where(eq(schema.masterPartsInbox.id, id));

      // 3. Remapeia as ofertas da loja do ID provisório para o novo ID canônico oficial
      if (provPartId) {
        await db
          .update(schema.storeOffers)
          .set({ partId: officialPartId, inStock: true, updatedAt: Date.now() })
          .where(eq(schema.storeOffers.partId, provPartId));
      }

      return NextResponse.json({
        success: true,
        message: "Peça homologada e cadastrada no Catálogo Mestre Canônico com sucesso!",
        officialPartId,
      });

    } else if (action === "merge") {
      if (!targetMasterPartId) {
        return NextResponse.json({ error: "Selecione uma peça mestre existente para mesclar." }, { status: 400 });
      }

      // 1. Atualiza o status na inbox para APPROVED
      await db
        .update(schema.masterPartsInbox)
        .set({ status: "APPROVED", suggestedMasterPartId: targetMasterPartId })
        .where(eq(schema.masterPartsInbox.id, id));

      // 2. Remapeia as ofertas do lojista para a peça mestre selecionada
      if (provPartId) {
        await db
          .update(schema.storeOffers)
          .set({ partId: targetMasterPartId, inStock: true, updatedAt: Date.now() })
          .where(eq(schema.storeOffers.partId, provPartId));
      }

      return NextResponse.json({
        success: true,
        message: "Oferta remapeada para a peça canônica selecionada!",
      });

    } else if (action === "reject") {
      // 1. Marca inbox como REJECTED
      await db
        .update(schema.masterPartsInbox)
        .set({ status: "REJECTED" })
        .where(eq(schema.masterPartsInbox.id, id));

      // 2. Oculta/pausa as ofertas vinculadas à peça rejeitada
      if (provPartId) {
        await db
          .update(schema.storeOffers)
          .set({ inStock: false, updatedAt: Date.now() })
          .where(eq(schema.storeOffers.partId, provPartId));
      }

      return NextResponse.json({
        success: true,
        message: "Peça rejeitada e ofertas vinculadas pausadas.",
      });

    } else {
      return NextResponse.json({ error: "Ação de moderação inválida." }, { status: 400 });
    }
  } catch (error: any) {
    console.error("Erro na moderação da inbox:", error);
    return NextResponse.json({ error: error.message || "Erro ao processar moderação." }, { status: 500 });
  }
}
