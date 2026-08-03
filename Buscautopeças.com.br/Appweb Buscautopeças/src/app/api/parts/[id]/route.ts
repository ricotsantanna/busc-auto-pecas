import { NextRequest, NextResponse } from "next/server";
import {
  mockMasterParts,
  mockStores,
  type SearchOffer,
} from "@/db/mock-offers";
import type { OfferCondition } from "@/db/schema";

export const runtime = "edge";

function seed(s: string): number {
  let h = 2166136261;
  for (let i = 0; i < s.length; i++) {
    h ^= s.charCodeAt(i);
    h = Math.imul(h, 16777619);
  }
  return Math.abs(h);
}

export async function GET(
  _req: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  const { id } = await context.params;
  const part = mockMasterParts.find((p) => p.id === id);
  if (!part) {
    return NextResponse.json({ error: "Peça não encontrada" }, { status: 404 });
  }

  // Gera ofertas para ESSA peça em todas as lojas disponíveis
  const offers: SearchOffer[] = [];
  const shuffled = [...mockStores]
    .map((s) => ({ s, k: seed(s.id + part.id) }))
    .sort((a, b) => a.k - b.k)
    .map((x) => x.s);

  // ~60% das lojas oferecem essa peça
  const chosen = shuffled.slice(0, Math.ceil(shuffled.length * 0.6));

  for (let idx = 0; idx < chosen.length; idx++) {
    const store = chosen[idx];
    const h = seed(store.id + part.id);
    const variance = 0.78 + ((h % 1000) / 1000) * 0.45;
    const isUsed = idx === 0 ? false : h % 5 === 0;
    const inStock = idx === 0 ? true : h % 12 !== 0;
    let price = part.basePrice * variance;
    if (isUsed) price *= 0.5 + ((h % 100) / 100) * 0.2;
    price = Math.round(price * 100) / 100;

    const condition: OfferCondition = isUsed ? "USADO" : "NOVO";

    offers.push({
      id: `${part.id}-${store.id}`,
      partId: part.id,
      partName: part.name,
      partCode: part.manufacturerCode,
      categoryName: part.categoryName,
      storeId: store.id,
      storeName: store.name,
      storeCity: store.city,
      storeState: store.state,
      storeWhatsapp: store.whatsapp,
      storeRating: store.rating ?? 0,
      price,
      condition,
      inStock,
    });
  }

  offers.sort((a, b) => a.price - b.price);

  const prices = offers.map((o) => o.price);
  const newCount = offers.filter((o) => o.condition === "NOVO").length;
  const usedCount = offers.filter((o) => o.condition === "USADO").length;

  return NextResponse.json({
    part: {
      id: part.id,
      name: part.name,
      manufacturerCode: part.manufacturerCode,
      categoryId: part.categoryId,
      categoryName: part.categoryName,
      basePrice: part.basePrice,
    },
    offers,
    meta: {
      total: offers.length,
      minPrice: prices.length ? Math.min(...prices) : null,
      maxPrice: prices.length ? Math.max(...prices) : null,
      avgPrice: prices.length
        ? Math.round((prices.reduce((a, b) => a + b, 0) / prices.length) * 100) / 100
        : null,
      newCount,
      usedCount,
      storeCount: offers.length,
    },
  });
}
