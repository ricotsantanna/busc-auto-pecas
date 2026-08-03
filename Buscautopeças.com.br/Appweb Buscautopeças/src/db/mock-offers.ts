// src/db/mock-offers.ts — Catálogo de peças + lojas mock + gerador determinístico de ofertas.
// Serve como "prova de conceito" antes de popular o D1 real.

import type {
  Category,
  MasterPart,
  Store,
  OfferCondition,
} from "./schema";
import { mockBrands, mockModels, mockVersions } from "./mock";

// ---------------- CATEGORIAS ----------------
export const mockCategories: Category[] = [
  { id: "c-freios", name: "Freios", slug: "freios", icon: "Disc", createdAt: new Date() },
  { id: "c-motor", name: "Motor", slug: "motor", icon: "Cog", createdAt: new Date() },
  { id: "c-suspensao", name: "Suspensão", slug: "suspensao", icon: "Waves", createdAt: new Date() },
  { id: "c-eletrica", name: "Elétrica", slug: "eletrica", icon: "Zap", createdAt: new Date() },
  { id: "c-filtragem", name: "Filtragem", slug: "filtragem", icon: "Filter", createdAt: new Date() },
  { id: "c-transmissao", name: "Transmissão", slug: "transmissao", icon: "GitBranch", createdAt: new Date() },
  { id: "c-iluminacao", name: "Iluminação", slug: "iluminacao", icon: "Lightbulb", createdAt: new Date() },
];

// ---------------- MASTER PARTS ----------------
// basePrice usado apenas para o mock (não está no schema)
export type MockMasterPart = MasterPart & {
  categoryName: string;
  basePrice: number;
};

function mp(
  id: string,
  name: string,
  code: string,
  categoryId: string,
  categoryName: string,
  basePrice: number
): MockMasterPart {
  return {
    id,
    name,
    manufacturerCode: code,
    categoryId,
    description: null,
    imageUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
    categoryName,
    basePrice,
  };
}

export const mockMasterParts: MockMasterPart[] = [
  // Freios
  mp("p-past-diant", "Pastilha de freio dianteira", "FRAS-LE PD-427", "c-freios", "Freios", 189),
  mp("p-past-tras", "Pastilha de freio traseira", "FRAS-LE PD-533", "c-freios", "Freios", 165),
  mp("p-disco-diant", "Disco de freio dianteiro", "FREMAX BD-4820", "c-freios", "Freios", 245),
  mp("p-lona-tras", "Lona de freio traseira", "FRAS-LE FL-2270", "c-freios", "Freios", 118),
  mp("p-cilindro-mestre", "Cilindro mestre de freio", "BOSCH CM-0204", "c-freios", "Freios", 320),

  // Motor
  mp("p-coxim-motor", "Coxim do motor superior", "MONROE CX-8811", "c-motor", "Motor", 210),
  mp("p-correia-dentada", "Correia dentada", "GATES 5432XS", "c-motor", "Motor", 178),
  mp("p-correia-alt", "Correia do alternador", "GATES 6PK1230", "c-motor", "Motor", 74),
  mp("p-vela", "Vela de ignição (jogo 4)", "NGK BPR6EY", "c-motor", "Motor", 96),
  mp("p-bobina", "Bobina de ignição", "BOSCH F000ZS0104", "c-motor", "Motor", 285),
  mp("p-bomba-agua", "Bomba d’água", "URBA UP-2011", "c-motor", "Motor", 198),
  mp("p-junta-cabecote", "Junta do cabeçote", "TARANTO 130910", "c-motor", "Motor", 152),

  // Suspensão
  mp("p-amort-diant", "Amortecedor dianteiro", "COFAP GP-32831", "c-suspensao", "Suspensão", 340),
  mp("p-amort-tras", "Amortecedor traseiro", "COFAP GB-29610", "c-suspensao", "Suspensão", 295),
  mp("p-mola-diant", "Mola dianteira", "NAKATA MOL-6621", "c-suspensao", "Suspensão", 175),
  mp("p-bandeja", "Bandeja suspensão dianteira", "NAKATA BA-98442", "c-suspensao", "Suspensão", 268),
  mp("p-bieleta", "Bieleta estabilizadora", "NAKATA BI-14411", "c-suspensao", "Suspensão", 88),
  mp("p-batente", "Batente do amortecedor", "NAKATA BS-11123", "c-suspensao", "Suspensão", 62),
  mp("p-terminal-direcao", "Terminal de direção", "NAKATA TD-4432", "c-suspensao", "Suspensão", 74),

  // Elétrica
  mp("p-bateria", "Bateria 60Ah", "MOURA M60AD", "c-eletrica", "Elétrica", 489),
  mp("p-alternador", "Alternador 12v 85A", "BOSCH F000BL2115", "c-eletrica", "Elétrica", 720),
  mp("p-motor-partida", "Motor de partida", "BOSCH F000AL0201", "c-eletrica", "Elétrica", 645),
  mp("p-sensor-oxig", "Sensor de oxigênio", "NGK OZA341-EE1", "c-eletrica", "Elétrica", 235),

  // Filtragem
  mp("p-filtro-oleo", "Filtro de óleo", "TECFIL PSL-79", "c-filtragem", "Filtragem", 32),
  mp("p-filtro-ar", "Filtro de ar do motor", "TECFIL ARL-6120", "c-filtragem", "Filtragem", 48),
  mp("p-filtro-comb", "Filtro de combustível", "TECFIL GI-63", "c-filtragem", "Filtragem", 42),
  mp("p-filtro-cabine", "Filtro do ar-condicionado (cabine)", "TECFIL ACP-901", "c-filtragem", "Filtragem", 68),

  // Transmissão
  mp("p-kit-embreagem", "Kit de embreagem", "LUK 620311100", "c-transmissao", "Transmissão", 780),
  mp("p-junta-homoc", "Junta homocinética", "GKN 304012", "c-transmissao", "Transmissão", 320),
  mp("p-semieixo", "Semieixo lado motorista", "GKN 304115", "c-transmissao", "Transmissão", 890),

  // Iluminação
  mp("p-farol-diant", "Farol dianteiro (unidade)", "ARTEB FA-2201", "c-iluminacao", "Iluminação", 385),
  mp("p-lanterna-tras", "Lanterna traseira", "ARTEB LT-3312", "c-iluminacao", "Iluminação", 245),
  mp("p-lampada-h4", "Lâmpada H4 (par)", "OSRAM 64193", "c-iluminacao", "Iluminação", 68),
];

// ---------------- LOJAS ----------------
function st(
  id: string,
  name: string,
  city: string,
  state: string,
  whatsapp: string,
  rating: number,
  address = ""
): Store {
  return {
    id,
    name,
    address: address || `Rua Comercial, ${100 + Math.floor(Math.random() * 900)} - ${city}`,
    city,
    state,
    whatsapp,
    logoUrl: null,
    rating,
    createdAt: new Date(),
  };
}

export const mockStores: Store[] = [
  st("s-01", "AutoPeças São João", "São Paulo", "SP", "5511987654321", 4.7),
  st("s-02", "Central das Peças", "Rio de Janeiro", "RJ", "5521998877665", 4.5),
  st("s-03", "RS Auto Parts", "Porto Alegre", "RS", "5551991234567", 4.8),
  st("s-04", "Rei do Freio", "São Bernardo do Campo", "SP", "5511974443322", 4.6),
  st("s-05", "MG Motor Peças", "Belo Horizonte", "MG", "5531988774411", 4.3),
  st("s-06", "Cia. das Peças", "Curitiba", "PR", "5541997766554", 4.6),
  st("s-07", "Baixada Auto", "Duque de Caxias", "RJ", "5521996655443", 4.2),
  st("s-08", "Peças Já!", "Campinas", "SP", "5519989988776", 4.4),
  st("s-09", "Norte Peças", "Salvador", "BA", "5571988771122", 4.5),
  st("s-10", "Speed Autopeças", "Guarulhos", "SP", "5511992223344", 4.7),
];

// ---------------- GERADOR DE OFERTAS ----------------
// Hash determinístico simples para tornar as ofertas estáveis entre buscas.
function seed(s: string): number {
  let h = 2166136261;
  for (let i = 0; i < s.length; i++) {
    h ^= s.charCodeAt(i);
    h = Math.imul(h, 16777619);
  }
  return Math.abs(h);
}

function normalize(s: string): string {
  return s
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .trim();
}

export type SearchOffer = {
  id: string;
  partId: string;
  partName: string;
  partCode: string;
  categoryName: string;
  storeId: string;
  storeName: string;
  storeCity: string;
  storeState: string;
  storeWhatsapp: string;
  storeRating: number;
  price: number;
  condition: OfferCondition;
  inStock: boolean;
};

export type SearchResponse = {
  vehicle: {
    brand: string;
    model: string;
    version: string;
  } | null;
  query: string;
  offers: SearchOffer[];
  meta: {
    totalCount: number;
    minPrice: number | null;
    avgPrice: number | null;
    cities: string[];
    matchedParts: number;
  };
};

export function generateSearchResults(
  query: string,
  brandId?: string,
  modelId?: string,
  versionId?: string
): SearchResponse {
  const q = normalize(query);
  const brand = mockBrands.find((b) => b.id === brandId) ?? null;
  const model = mockModels.find((m) => m.id === modelId) ?? null;
  const version = mockVersions.find((v) => v.id === versionId) ?? null;

  // Match: nome contém termo, código contém termo, ou categoria bate direto
  const matches = q.length === 0
    ? mockMasterParts.slice(0, 8)
    : mockMasterParts.filter((p) => {
        const n = normalize(p.name);
        const c = normalize(p.categoryName);
        const code = normalize(p.manufacturerCode);
        if (n.includes(q)) return true;
        if (c.includes(q) || c === q) return true;
        if (code.includes(q)) return true;
        if (q.length >= 3) {
          return n.split(/\s+/).some((w) => w.startsWith(q));
        }
        return false;
      });

  const offers: SearchOffer[] = [];

  for (const part of matches) {
    // número de lojas que oferecem essa peça: 3–6
    const nStores = 3 + (seed(part.id + (versionId ?? "")) % 4);
    // embaralha lojas determinist. por peça
    const shuffled = [...mockStores]
      .map((s) => ({ s, k: seed(s.id + part.id) }))
      .sort((a, b) => a.k - b.k)
      .map((x) => x.s)
      .slice(0, nStores);

    for (let idx = 0; idx < shuffled.length; idx++) {
      const store = shuffled[idx];
      const h = seed(store.id + part.id);
      const variance = 0.78 + ((h % 1000) / 1000) * 0.45; // 0.78 – 1.23
      const isUsed = idx === 0 ? false : h % 5 === 0; // ~20% usado, nunca o 1º
      const inStock = idx === 0 ? true : h % 12 !== 0; // ~92% em estoque
      let price = part.basePrice * variance;
      if (isUsed) price *= 0.5 + ((h % 100) / 100) * 0.2; // 50–70% do valor novo
      price = Math.round(price * 100) / 100;

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
        condition: isUsed ? "USADO" : "NOVO",
        inStock,
      });
    }
  }

  offers.sort((a, b) => a.price - b.price);

  const prices = offers.map((o) => o.price);
  const cities = Array.from(
    new Set(offers.map((o) => `${o.storeCity}/${o.storeState}`))
  ).sort();

  return {
    vehicle:
      brand && model && version
        ? {
            brand: brand.name,
            model: model.name,
            version: `${version.name} (${version.yearStart}–${version.yearEnd})`,
          }
        : brand
        ? {
            brand: brand.name,
            model: model?.name ?? "",
            version: version?.name ?? "",
          }
        : null,
    query,
    offers,
    meta: {
      totalCount: offers.length,
      minPrice: prices.length ? Math.min(...prices) : null,
      avgPrice: prices.length
        ? Math.round((prices.reduce((a, b) => a + b, 0) / prices.length) * 100) / 100
        : null,
      cities,
      matchedParts: matches.length,
    },
  };
}
