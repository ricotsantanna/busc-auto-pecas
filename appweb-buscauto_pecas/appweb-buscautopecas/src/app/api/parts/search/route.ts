// src/app/api/parts/search/route.ts — Autocomplete Canônico Contextualizado sem Duplicação de Lados
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, or, eq, and, sql } from "drizzle-orm";
import { cleanMasterPartTitle, MOTORCYCLE_BRANDS_MODELS } from "@/lib/part-sanitizer";

export const runtime = "edge";

// Marcas de carros conhecidas para prevenção de contaminação cruzada de marca
const CAR_BRANDS = [
  "fiat", "volkswagen", "vw", "chevrolet", "gm", "ford", "renault", "peugeot", "citroen", "citroën",
  "toyota", "honda", "hyundai", "nissan", "jeep", "bmw", "audi", "mercedes", "volvo", "scania", "mitsubishi", "chery", "byd"
];

// Dicionário Canônico de Peças Mestre Essenciais Principais para injeção e priorização no topo
const ESSENTIAL_MASTER_PARTS: Record<string, string[]> = {
  far: ["Farol", "Farol Principal", "Farol de Milha", "Farol Auxiliar", "Farol de Neblina"],
  faro: ["Farol", "Farol Principal", "Farol de Milha", "Farol Auxiliar", "Farol de Neblina"],
  farol: ["Farol", "Farol Principal", "Farol de Milha", "Farol Auxiliar", "Farol de Neblina"],
  lant: ["Lanterna Traseira", "Lanterna de Seta do Retrovisor", "Lanterna de Placa"],
  lante: ["Lanterna Traseira", "Lanterna de Seta do Retrovisor"],
  lanterna: ["Lanterna Traseira", "Lanterna de Seta do Retrovisor"],
  brake: ["Brake Light (Luz de Freio)"],
  break: ["Brake Light (Luz de Freio)"],
  luz: ["Brake Light (Luz de Freio)", "Luz de Placa"],
  retro: ["Retrovisor", "Retrovisor Elétrico", "Retrovisor Manual"],
  retrov: ["Retrovisor", "Retrovisor Elétrico", "Retrovisor Manual"],
  retrovisor: ["Retrovisor", "Retrovisor Elétrico", "Retrovisor Manual"],
  parac: ["Parachoque", "Parachoque Dianteiro", "Parachoque Traseiro"],
  parach: ["Parachoque", "Parachoque Dianteiro", "Parachoque Traseiro"],
  parachoque: ["Parachoque", "Parachoque Dianteiro", "Parachoque Traseiro"],
  past: ["Pastilha de Freio", "Pastilha de Freio Dianteira", "Pastilha de Freio Traseira"],
  pasti: ["Pastilha de Freio", "Pastilha de Freio Dianteira", "Pastilha de Freio Traseira"],
  pastilha: ["Pastilha de Freio", "Pastilha de Freio Dianteira", "Pastilha de Freio Traseira"],
  disc: ["Disco de Freio", "Disco de Freio Ventilado", "Disco de Freio Sólido"],
  disco: ["Disco de Freio", "Disco de Freio Ventilado", "Disco de Freio Sólido"],
  amort: ["Amortecedor", "Amortecedor Dianteiro", "Amortecedor Traseiro"],
  amorte: ["Amortecedor", "Amortecedor Dianteiro", "Amortecedor Traseiro"],
  amortecedor: ["Amortecedor", "Amortecedor Dianteiro", "Amortecedor Traseiro"],
  filt: ["Filtro de Óleo", "Filtro de Ar", "Filtro de Combustível", "Filtro de Ar Condicionado"],
  filtro: ["Filtro de Óleo", "Filtro de Ar", "Filtro de Combustível", "Filtro de Ar Condicionado"],
  vela: ["Vela de Ignição", "Jogo de Velas de Ignição", "Cabo de Vela"],
  velas: ["Vela de Ignição", "Jogo de Velas de Ignição", "Cabo de Vela"],
  bat: ["Bateria 60Ah", "Bateria 70Ah", "Bateria 50Ah"],
  bater: ["Bateria 60Ah", "Bateria 70Ah"],
  bateria: ["Bateria 60Ah", "Bateria 70Ah"]
};

// Palavras secundárias/acessórios que devem ir para o final da lista
const SECONDARY_PREFIXES = ["acabamento", "alojamento", "moldura", "suporte", "capa", "friso", "presilha", "presilha do"];

function getPriorityScore(partName: string, queryLower: string): number {
  const nameLower = partName.toLowerCase();
  
  // Se for acessório secundário (ex: Acabamento, Alojamento), score baixo
  if (SECONDARY_PREFIXES.some(prefix => nameLower.startsWith(prefix))) {
    return 10;
  }
  
  // Se for exato igual à busca (ex: Farol, Lanterna Traseira) -> Score Máximo
  if (nameLower === queryLower) {
    return 100;
  }

  // Se a peça principal começa com a busca -> Score Alto
  if (nameLower.startsWith(queryLower)) {
    return 90;
  }

  // Se a peça contém o termo da busca -> Score Médio
  return 50;
}

export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim();
  const segment = (req.nextUrl.searchParams.get("segment") ?? "CARRO").toUpperCase();
  const brandName = (req.nextUrl.searchParams.get("brandName") ?? "").trim().toLowerCase();
  const modelName = (req.nextUrl.searchParams.get("modelName") ?? "").trim().toLowerCase();
  const year = (req.nextUrl.searchParams.get("year") ?? "").trim();
  const versionId = (req.nextUrl.searchParams.get("versionId") ?? "").trim();

  if (q.length < 2) {
    return NextResponse.json({ parts: [] });
  }

  try {
    const db = await getDb();
    let rawCandidates: string[] = [];

    // 1. QUERY RELACIONAL D1: Busca por Versão Específica
    if (versionId && versionId !== "all") {
      try {
        const compatMatches = await db
          .select({ name: schema.masterParts.name })
          .from(schema.masterParts)
          .innerJoin(
            schema.partCompatibility,
            eq(schema.masterParts.id, schema.partCompatibility.partId)
          )
          .where(
            and(
              eq(schema.partCompatibility.versionId, versionId),
              or(
                like(schema.masterParts.name, `%${q}%`),
                like(schema.masterParts.name, `%${q.toLowerCase()}%`),
                like(schema.masterParts.name, `%${q.toUpperCase()}%`)
              )
            )
          )
          .limit(40);

        rawCandidates = compatMatches.map((m) => m.name);
      } catch (e) {
        console.warn("Compat query fallback:", e);
      }
    }
    // 2. QUERY RELACIONAL D1: Busca Ampla por Modelo e Ano (quando versão for 'Todas as versões' ou vazia)
    else if (modelName) {
      try {
        const modelMatches = await db
          .select({ name: schema.masterParts.name })
          .from(schema.masterParts)
          .innerJoin(
            schema.partCompatibility,
            eq(schema.masterParts.id, schema.partCompatibility.partId)
          )
          .innerJoin(
            schema.carVersions,
            eq(schema.partCompatibility.versionId, schema.carVersions.id)
          )
          .innerJoin(
            schema.carModels,
            eq(schema.carVersions.modelId, schema.carModels.id)
          )
          .where(
            and(
              like(schema.carModels.name, `%${modelName}%`),
              year ? eq(schema.carVersions.year, parseInt(year, 10)) : sql`1=1`,
              or(
                like(schema.masterParts.name, `%${q}%`),
                like(schema.masterParts.name, `%${q.toLowerCase()}%`),
                like(schema.masterParts.name, `%${q.toUpperCase()}%`)
              )
            )
          )
          .limit(40);

        rawCandidates = modelMatches.map((m) => m.name);
      } catch (e) {
        console.warn("Model wide search fallback:", e);
      }
    }

    // 3. Fallback para catálogo mestre geral caso precise de mais candidatos
    if (rawCandidates.length < 5) {
      const matches = await db
        .select({
          name: schema.masterParts.name,
        })
        .from(schema.masterParts)
        .where(
          or(
            like(schema.masterParts.name, `%${q}%`),
            like(schema.masterParts.name, `%${q.toLowerCase()}%`),
            like(schema.masterParts.name, `%${q.toUpperCase()}%`)
          )
        )
        .limit(60);

      const generalCandidates = matches.map((m) => m.name);
      rawCandidates = Array.from(new Set([...rawCandidates, ...generalCandidates]));
    }

    // Injeta peças mestre essenciais caso a busca bata com o dicionário chave
    const queryLower = q.toLowerCase();
    if (ESSENTIAL_MASTER_PARTS[queryLower]) {
      for (const essential of ESSENTIAL_MASTER_PARTS[queryLower]) {
        if (!rawCandidates.includes(essential)) {
          rawCandidates.unshift(essential);
        }
      }
    }

    const isCarSegment = segment === "CARRO" || segment === "ELETRICO";
    const baseCleaned: { clean: string; score: number }[] = [];

    for (const raw of rawCandidates) {
      const lowerRaw = raw.toLowerCase();

      // REJEITAR PEÇAS DE MOTO SE ABA FOR CARRO OU ELÉTRICO
      if (isCarSegment) {
        if (MOTORCYCLE_BRANDS_MODELS.some((m) => lowerRaw.includes(m))) {
          continue;
        }
      }

      // REJEITAR CONTAMINAÇÃO CRUZADA DE MARCAS DIFERENTES DA SELECIONADA
      if (brandName && brandName.length >= 3) {
        const conflictingBrands = CAR_BRANDS.filter((b) => b !== brandName && !brandName.includes(b));
        if (conflictingBrands.some((cb) => lowerRaw.includes(cb))) {
          continue;
        }
      }

      // Saneamento e Higienização Canônica do Título (Remove sufixos de lado L/D, L/E, Passageiro...)
      const clean = cleanMasterPartTitle(raw);
      if (!clean || clean.length < 3) continue;

      const score = getPriorityScore(clean, queryLower);
      if (!baseCleaned.some((item) => item.clean === clean)) {
        baseCleaned.push({ clean, score });
      }
    }

    // Ordenar do maior score para o menor (Peças Principais no Topo, Acabamentos no Final)
    baseCleaned.sort((a, b) => b.score - a.score);

    // Retorna apenas títulos canônicos limpos e únicos (sem sufixos concatenados)
    const finalSuggestions: string[] = baseCleaned.map((item) => item.clean);

    return NextResponse.json({ parts: Array.from(new Set(finalSuggestions)).slice(0, 12) });
  } catch (error) {
    console.error("Public part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
