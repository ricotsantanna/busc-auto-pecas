// src/app/api/lojista/inventory/import/confirm/route.ts — Gravação Definitiva de Importação no D1 e Envio de E-mail
import { NextRequest, NextResponse } from "next/server";
import { eq } from "drizzle-orm";
import { getDb, schema } from "@/db";
import { getSession } from "@/lib/auth-edge";
import { crypto } from "@/lib/crypto-polyfill";
import { sendAdminInboxNotification } from "@/lib/email-service";

export const runtime = "edge";

export async function POST(req: NextRequest) {
  try {
    const session = await getSession();
    if (!session) {
      return NextResponse.json({ error: "Não autorizado" }, { status: 401 });
    }

    const db = await getDb();
    const body = await req.json();
    const { items } = body;

    if (!Array.isArray(items) || items.length === 0) {
      return NextResponse.json({ error: "Nenhum item confirmado para importação." }, { status: 400 });
    }

    const companyId = session.companyId;
    let storeId = session.storeId;
    let storeName = "Loja Parceira";

    if (companyId) {
      const storeRows = await db
        .select({ id: schema.stores.id, name: schema.stores.name })
        .from(schema.stores)
        .where(eq(schema.stores.companyId, companyId))
        .limit(1);

      if (storeRows.length > 0) {
        storeId = storeRows[0].id;
        storeName = storeRows[0].name;
      }
    }

    if (!storeId) {
      return NextResponse.json({ error: "Loja não encontrada." }, { status: 404 });
    }

    const newInboxItems = [];
    let importedOffersCount = 0;

    for (const item of items) {
      let finalPartId = item.masterPartId;

      // Se a peça é inédita, cria registro na master_parts_inbox e grava registro provisório na master_parts
      if (!finalPartId || item.status === "NEW_INBOX") {
        const inboxId = crypto.randomUUID();
        const provPartId = `mp-inbox-${crypto.randomUUID().substring(0, 8)}`;

        // Gravando na Fila de Triagem
        await db.insert(schema.masterPartsInbox).values({
          id: inboxId,
          storeId,
          rawPartName: item.rawPartName,
          cleanPartName: item.cleanPartName,
          manufacturer: item.manufacturer || "Original",
          manufacturerCode: item.manufacturerCode || provPartId,
          make: item.make || null,
          model: item.model || null,
          years: item.years || null,
          status: "PENDING_REVIEW",
          suggestedMasterPartId: provPartId,
          createdAt: Date.now(),
        });

        // Gravando Peça Provisória na master_parts para que a oferta seja criada sem violação de FK
        await db.insert(schema.masterParts).values({
          id: provPartId,
          name: item.cleanPartName,
          manufacturer: item.manufacturer || "Original",
          manufacturerCode: item.manufacturerCode || provPartId,
          categoryId: "cat-motor", // Categoria genérica provisória em triagem
          position: "CENTRAL",
          description: `Peça Inédita em Triagem de Catálogo (Importada pela Loja ${storeName})`,
          createdAt: Date.now(),
          updatedAt: Date.now(),
        });

        finalPartId = provPartId;
        newInboxItems.push({
          rawPartName: item.rawPartName,
          cleanPartName: item.cleanPartName,
          manufacturer: item.manufacturer,
          manufacturerCode: item.manufacturerCode,
          make: item.make,
          model: item.model,
          years: item.years,
        });
      }

      // Gravando a Oferta no Estoque da Loja
      const offerId = crypto.randomUUID();
      await db.insert(schema.storeOffers).values({
        id: offerId,
        storeId,
        partId: finalPartId,
        price: Number(item.price),
        inStock: Number(item.quantity) > 0,
        condition: "NOVO",
        notes: item.years ? `Compatível com ${item.make || ""} ${item.model || ""} (${item.years})` : null,
        createdAt: Date.now(),
        updatedAt: Date.now(),
      });

      importedOffersCount++;
    }

    // Se houve novas peças inéditas, dispara notificação de e-mail ao administrador
    if (newInboxItems.length > 0) {
      await sendAdminInboxNotification({
        storeName,
        items: newInboxItems,
      });
    }

    return NextResponse.json({
      success: true,
      importedCount: importedOffersCount,
      inboxCount: newInboxItems.length,
      message: `${importedOffersCount} ofertas importadas com sucesso! (${newInboxItems.length} novas peças enviadas para triagem IA).`,
    });
  } catch (error: any) {
    console.error("Erro na confirmação da importação:", error);
    return NextResponse.json({ error: error.message || "Erro ao gravar ofertas no banco D1." }, { status: 500 });
  }
}
