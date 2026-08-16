import { NextResponse } from "next/server";
import { getDb } from "@/db";
export const runtime = "edge";
import { storeOffers, partCompatibility, stores, masterParts, categories } from "@/db/schema";
import { getSession } from "@/lib/auth-edge";
import { and, eq } from "drizzle-orm";

export async function POST(req: Request) {
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
      return NextResponse.json({ error: "Loja não encontrada." }, { status: 404 });
    }

    const { partId, price, condition, versionIds, manufacturer } = await req.json();

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

    // Update manufacturer on masterParts if provided by lojista
    if (manufacturer && typeof manufacturer === "string" && manufacturer.trim() && manufacturer.trim() !== "Desconhecido") {
      await db.update(masterParts)
        .set({ manufacturer: manufacturer.trim() })
        .where(eq(masterParts.id, partId));
    }

    // Ensure masterPart exists in DB before adding offer (prevents foreign key errors)
    const existingPart = await db
      .select({ id: masterParts.id })
      .from(masterParts)
      .where(eq(masterParts.id, partId))
      .limit(1);

    if (existingPart.length === 0) {
      // Find or create default category
      const catRows = await db
        .select({ id: categories.id })
        .from(categories)
        .limit(1);

      let categoryId = catRows[0]?.id;
      if (!categoryId) {
        categoryId = "c-1";
        await db.insert(categories).values({
          id: categoryId,
          name: "Geral",
          slug: "geral",
        }).onConflictDoNothing();
      }

      // Create fallback masterPart for this partId
      await db.insert(masterParts).values({
        id: partId,
        name: "Peça Genérica",
        manufacturer: "Geral",
        manufacturerCode: `PART-${partId.substring(0, 8).toUpperCase()}`,
        categoryId,
        description: "Peça cadastrada automaticamente",
      }).onConflictDoNothing();
    }

    // Verifica se já existe oferta dessa peça com a mesma condição na loja
    const existingOffer = await db
      .select()
      .from(storeOffers)
      .where(
        and(
          eq(storeOffers.storeId, storeId),
          eq(storeOffers.partId, partId),
          eq(storeOffers.condition, condition)
        )
      )
      .limit(1);

    if (existingOffer.length > 0) {
      return NextResponse.json(
        { error: `Você já possui uma oferta para esta peça na condição ${condition}.` },
        { status: 409 }
      );
    }

    const offerId = crypto.randomUUID();

    await db.insert(storeOffers).values({
      id: offerId,
      storeId,
      partId,
      price: Number(price),
      condition,
      inStock: true,
    });

    // 2. Mapeamento Múltiplo de Veículos na part_compatibility
    for (const versionId of versionIds) {
      await db.insert(partCompatibility).values({
        partId,
        versionId
      }).onConflictDoNothing();
    }

    return NextResponse.json({ success: true, offerId });
  } catch (error: any) {
    console.error("Add inventory error:", error);
    return NextResponse.json({ error: error.message || "Erro interno no servidor." }, { status: 500 });
  }
}
