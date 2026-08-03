// src/lib/local-inventory.ts
// Persistência client-side (localStorage) das ofertas cadastradas pelos lojistas
// no ambiente de demo/dev. Em produção, essas operações vão para o D1 via API.
//
// A vantagem: ofertas cadastradas em /inventory aparecem imediatamente em /search
// (mesma origin, mesmo localStorage) — fechando o loop de marketplace no demo.

import type { OfferCondition } from "@/db/schema";
import {
  mockStores,
  mockMasterParts,
  type SearchOffer,
} from "@/db/mock-offers";

export type LocalOffer = {
  id: string;
  storeId: string;
  partId: string;
  price: number;
  condition: OfferCondition;
  inStock: boolean;
  notes: string;
  createdAt: string;
};

const KEY = "buscautopecas.offers.v1";

export function readOffers(): LocalOffer[] {
  if (typeof window === "undefined") return [];
  try {
    const raw = window.localStorage.getItem(KEY);
    if (!raw) return [];
    return JSON.parse(raw) as LocalOffer[];
  } catch {
    return [];
  }
}

function writeOffers(offers: LocalOffer[]) {
  if (typeof window === "undefined") return;
  window.localStorage.setItem(KEY, JSON.stringify(offers));
  // notifica outros tabs / paginas
  window.dispatchEvent(new CustomEvent("buscautopecas:offers-changed"));
}

export function saveOffer(
  input: Omit<LocalOffer, "id" | "createdAt"> & { id?: string }
): LocalOffer {
  const list = readOffers();
  if (input.id) {
    // update
    const idx = list.findIndex((o) => o.id === input.id);
    if (idx >= 0) {
      const merged: LocalOffer = {
        ...list[idx],
        ...input,
        id: list[idx].id,
        createdAt: list[idx].createdAt,
      };
      list[idx] = merged;
      writeOffers(list);
      return merged;
    }
  }
  // Se já existe (storeId+partId+condition), atualiza (respeita unique constraint do schema).
  const dupIdx = list.findIndex(
    (o) =>
      o.storeId === input.storeId &&
      o.partId === input.partId &&
      o.condition === input.condition
  );
  if (dupIdx >= 0) {
    const merged: LocalOffer = {
      ...list[dupIdx],
      price: input.price,
      inStock: input.inStock,
      notes: input.notes,
    };
    list[dupIdx] = merged;
    writeOffers(list);
    return merged;
  }
  const created: LocalOffer = {
    id: crypto.randomUUID(),
    createdAt: new Date().toISOString(),
    ...input,
  };
  list.push(created);
  writeOffers(list);
  return created;
}

export function deleteOffer(id: string) {
  const list = readOffers().filter((o) => o.id !== id);
  writeOffers(list);
}

export function listOffersByStore(storeId: string): LocalOffer[] {
  return readOffers()
    .filter((o) => o.storeId === storeId)
    .sort((a, b) => (a.createdAt < b.createdAt ? 1 : -1));
}

/**
 * Converte ofertas locais em SearchOffer[] enriquecidas (com dados da loja e da
 * peça do catálogo mestre). Usadas para injetar as ofertas do lojista no /search.
 */
export function localOffersAsSearchOffers(): SearchOffer[] {
  const list = readOffers();
  const out: SearchOffer[] = [];
  for (const o of list) {
    const store = mockStores.find((s) => s.id === o.storeId);
    const part = mockMasterParts.find((p) => p.id === o.partId);
    if (!store || !part) continue;
    out.push({
      id: `local-${o.id}`,
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
      price: o.price,
      condition: o.condition,
      inStock: o.inStock,
    });
  }
  return out;
}

export function selectedStoreIdKey() {
  return "buscautopecas.selectedStore.v1";
}

export function getSelectedStoreId(): string {
  if (typeof window === "undefined") return mockStores[0].id;
  return (
    window.localStorage.getItem(selectedStoreIdKey()) ?? mockStores[0].id
  );
}

export function setSelectedStoreId(id: string) {
  if (typeof window === "undefined") return;
  window.localStorage.setItem(selectedStoreIdKey(), id);
}
