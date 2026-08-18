// src/app/api/parts/search/route.ts — Autocomplete Contextual Blindado no D1
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, notLike, or, eq, and } from "drizzle-orm";
import { cleanMasterPartTitle, MOTORCYCLE_BRANDS_MODELS } from "@/lib/part-sanitizer";

export const runtime = "edge";

// Marcas de veículos conhecidas para prevenção de contaminação cruzada de marca
const ALL_CAR_BRANDS = [
  "iveco", "scania", "volvo", "fiat", "volkswagen", "vw", "chevrolet", "gm", "ford", "renault", "peugeot", "citroen", "citroën",
  "toyota", "honda", "hyundai", "nissan", "jeep", "bmw", "audi", "mercedes", "mitsubishi", "chery", "byd", "haval"
];

// Termos aromatizantes/químicos que NÃO devem aparecer em buscas automotivas mecânicas (ex: ao buscar "ar")
const AROMA_KEYWORDS = [
  "aroma", "cheirinho", "gel", "adesivo", "essencia", "essência", "odorizador", "perfume", "pingente", "difusor", "aromatizante"
];

// Dicionário Canônico de Peças Mestre Essenciais Principais
const ESSENTIAL_MASTER_PARTS: Record<string, string[]> = {
  ar: ["Filtro de Ar", "Filtro de Ar Condicionado", "Compressor de Ar Condicionado", "Condensador de Ar Condicionado", "Evaporador de Ar"],
  filtro: ["Filtro de Ar", "Filtro de Óleo", "Filtro de Combustível", "Filtro de Ar Condicionado"],
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
  vela: ["Vela de Ignição", "Jogo de Velas de Ignição", "Cabo de Vela"],
  velas: ["Vela de Ignição", "Jogo de Velas de Ignição", "Cabo de Vela"],
  bat: ["Bateria 60Ah", "Bateria 70Ah", "Bateria 50Ah"],
  bater: ["Bateria 60Ah", "Bateria 70Ah"],
  bateria: ["Bateria 60Ah", "Bateria 70Ah"]
};

// Prefixas de acessórios secundários
const SECONDARY_PREFIXES = ["acabamento", "alojamento", "moldura", "suporte", "capa", "friso", "presilha", "presilha do"];

function getPriorityScore(partName: string, queryLower: string): number {
  const nameLower = partName.toLowerCase();
  
  if (SECONDARY_PREFIXES.some(prefix => nameLower.startsWith(prefix))) {
    return 10;
  }
  if (nameLower === queryLower) {
    return 100;
  }
  if (nameLower.startsWith(queryLower)) {
    return 90;
  }
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
    const isVehicleSelected = Boolean(versionId || modelName || brandName);

    // Condição SQL para rejeitar marcas concorrentes se uma montadora foi selecionada
    const conflictingBrands = brandName && brandName.length >= 3
      ? ALL_CAR_BRANDS.filter((b) => b !== brandName && !brandName.includes(b))
      : [];

    const brandNotLikeConditions = conflictingBrands.map(
      (cb) => notLike(schema.masterParts.name, `%${cb}%`)
    );

    // -------------------------------------------------------------
    // CASO 1: Versão Específica Selecionada (versionId != "" && != "all")
    // -------------------------------------------------------------
    if (versionId && versionId !== "all") {
      try {
        const whereConditions = [
          eq(schema.partCompatibility.versionId, versionId),
          or(
            like(schema.masterParts.name, `%${q}%`),
            like(schema.masterParts.name, `%${q.toLowerCase()}%`),
            like(schema.masterParts.name, `%${q.toUpperCase()}%`)
          ),
          ...brandNotLikeConditions
        ];

        const compatMatches = await db
          .select({ name: schema.masterParts.name })
          .from(schema.masterParts)
          .innerJoin(
            schema.partCompatibility,
            eq(schema.masterParts.id, schema.partCompatibility.partId)
          )
          .where(and(...whereConditions))
          .limit(40);

        rawCandidates = compatMatches.map((m) => m.name);
      } catch (e) {
        console.warn("Error in version compatibility query:", e);
      }
    }
    // -------------------------------------------------------------
    // CASO 2: Modelo / Montadora / Ano Selecionados (versionId == "" ou "all")
    // -------------------------------------------------------------
    else if (modelName || brandName) {
      try {
        const whereConditions: any[] = [
          or(
            like(schema.masterParts.name, `%${q}%`),
            like(schema.masterParts.name, `%${q.toLowerCase()}%`),
            like(schema.masterParts.name, `%${q.toUpperCase()}%`)
          ),
          ...brandNotLikeConditions
        ];

        if (modelName) {
          whereConditions.push(like(schema.carModels.name, `%${modelName}%`));
        }
        if (year) {
          whereConditions.push(eq(schema.carVersions.year, parseInt(year, 10)));
        }

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
          .where(and(...whereConditions))
          .limit(40);

        rawCandidates = modelMatches.map((m) => m.name);
      } catch (e) {
        console.warn("Error in model wide query:", e);
      }
    }
    // -------------------------------------------------------------
    // CASO 3: NENHUM Veículo Selecionado -> Consulta Livre no Catálogo Mestre
    // -------------------------------------------------------------
    else {
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

      rawCandidates = matches.map((m) => m.name);
    }

    // REGRA CRÍTICA DE BLINDAGEM:
    // Se o veículo foi selecionado e NENHUMA peça compatível foi encontrada na tabela de compatividades,
    // É PROIBIDO fazer fallback para a tabela inteira (masterParts). DEVE RETORNAR LISTA VAZIA!
    if (isVehicleSelected && rawCandidates.length === 0) {
      return NextResponse.json({ parts: [] });
    }

    // Injeta peças mestre essenciais apenas se houver candidatos válidos ou busca livre
    const queryLower = q.toLowerCase();
    if (!isVehicleSelected && ESSENTIAL_MASTER_PARTS[queryLower]) {
      for (const essential of ESSENTIAL_MASTER_PARTS[queryLower]) {
        if (!rawCandidates.includes(essential)) {
          rawCandidates.unshift(essential);
        }
      }
    }

    const isCarSegment = segment === "CARRO" || segment === "ELETRICO";
    const isArSearch = queryLower === "ar" || queryLower.startsWith("ar ") || queryLower.endsWith(" ar");
    const baseCleaned: { clean: string; score: number }[] = [];

    for (const raw of rawCandidates) {
      const lowerRaw = raw.toLowerCase();

      // 1. REJEITAR AROMATIZANTES / PERFUMES EM BUSCAS AUTOMOTIVAS (Especialmente busca por "ar")
      if (isArSearch || AROMA_KEYWORDS.some((akw) => lowerRaw.includes(akw))) {
        if (AROMA_KEYWORDS.some((akw) => lowerRaw.includes(akw))) {
          continue; // Pula aromatizantes, gel, cheirinho, essências
        }
      }

      // 2. REJEITAR PEÇAS DE MOTO SE ABA FOR CARRO OU ELÉTRICO
      if (isCarSegment) {
        if (MOTORCYCLE_BRANDS_MODELS.some((m) => lowerRaw.includes(m))) {
          continue;
        }
      }

      // 3. REJEITAR MARCAS CONCORRENTES CONFLITANTES
      if (conflictingBrands.some((cb) => lowerRaw.includes(cb))) {
        continue;
      }

      // 4. SANEAR E HIGIENIZAR O NOME CANÔNICO (Remove sufixos de lado e contaminações)
      const clean = cleanMasterPartTitle(raw);
      if (!clean || clean.length < 3) continue;

      const score = getPriorityScore(clean, queryLower);
      if (!baseCleaned.some((item) => item.clean === clean)) {
        baseCleaned.push({ clean, score });
      }
    }

    // Ordenar do maior score para o menor (Peças Principais no Topo, Acabamentos no Final)
    baseCleaned.sort((a, b) => b.score - a.score);

    const finalSuggestions: string[] = baseCleaned.map((item) => item.clean);

    return NextResponse.json({ parts: Array.from(new Set(finalSuggestions)).slice(0, 12) });
  } catch (error) {
    console.error("Public part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
