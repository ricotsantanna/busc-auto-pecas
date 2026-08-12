import { NextResponse } from "next/server";
import { getDb } from "@/db";
export const runtime = "edge";
import { storeOffers, partCompatibility } from "@/db/schema";
import { getSession } from "@/lib/auth";
import { and, eq } from "drizzle-orm";

export async function POST(req: Request) {
  try {
    const db = await getDb();
    const session = await getSession();
    if (!session || !session.storeId) {
      return NextResponse.json({ error: "Não autorizado" }, { status: 401 });
    }

    const { partId, price, condition, versionIds } = await req.json();

    if (!partId || price === undefined || !condition) {
      return NextResponse.json({ error: "Dados incompletos." }, { status: 400 });
    }

    if (!versionIds || !Array.isArray(versionIds) || versionIds.length === 0) {
      return NextResponse.json({ error: "Você deve selecionar ao menos um veículo compatível com a peça." }, { status: 400 });
    }

    if (condition !== "NOVO" && condition !== "USADO") {
      return NextResponse.json({ error: "Condição inválida. Use NOVO ou USADO." }, { status: 400 });
    }

    if (price < 0) {
      return NextResponse.json({ error: "Preço inválido." }, { status: 400 });
    }

    // Verifica se já existe oferta dessa peça com a mesma condição na loja
    const existingOffer = await db
      .select()
      .from(storeOffers)
      .where(
        and(
          eq(storeOffers.storeId, session.storeId),
          eq(storeOffers.partId, partId),
          eq(storeOffers.condition, condition)
        )
      )
      .limit(1);

    if (existingOffer.length > 0) {
      // Se existir, podemos retornar erro ou atualizar. Vamos retornar erro por simplicidade agora.
      return NextResponse.json(
        { error: `Você já possui uma oferta para esta peça na condição ${condition}.` },
        { status: 409 }
      );
    }

    const offerId = crypto.randomUUID();

    await db.insert(storeOffers).values({
      id: offerId,
      storeId: session.storeId,
      partId,
      price: Number(price),
      condition,
      inStock: true,
    });

    // 2. Mapeamento Múltiplo de Veículos na part_compatibility
    for (const versionId of versionIds) {
      // Usamos insert or ignore (on conflict do nothing) pq outra loja já pode ter mapeado
      await db.insert(partCompatibility).values({
        partId,
        versionId
      }).onConflictDoNothing();
    }

    return NextResponse.json({ success: true, offerId });
  } catch (error) {
    console.error("Add inventory error:", error);
    return NextResponse.json({ error: "Erro interno no servidor." }, { status: 500 });
  }
}
