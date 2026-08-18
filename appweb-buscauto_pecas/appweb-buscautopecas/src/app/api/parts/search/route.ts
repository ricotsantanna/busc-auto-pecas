// src/app/api/parts/search/route.ts — Autocomplete Contextual com Tokenização de Palavra-Chave Principal
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, eq, and } from "drizzle-orm";
import { cleanMasterPartTitle, MOTORCYCLE_BRANDS_MODELS } from "@/lib/part-sanitizer";

export const runtime = "edge";

const STOP_WORDS = new Set(["de", "do", "da", "dos", "das", "para", "com", "sem", "em", "um", "uma", "o", "a", "os", "as"]);

// Marcas de veículos conhecidas para prevenção de contaminação cruzada de marca em memória
const CONFLICTING_BRANDS = [
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
  far: ["Farol Principal", "Farol de Milha / Auxiliar"],
  farol: ["Farol Principal", "Farol de Milha / Auxiliar"],
  lant: ["Lanterna Traseira", "Lanterna de Seta do Retrovisor"],
  lanterna: ["Lanterna Traseira", "Lanterna de Seta do Retrovisor"],
  brake: ["Brake Light (Luz de Freio)"],
  break: ["Brake Light (Luz de Freio)"],
  retro: ["Retrovisor"],
  retrovisor: ["Retrovisor"],
  parac: ["Parachoque Dianteiro", "Parachoque Traseiro"],
  past: ["Pastilha de Freio"],
  pastilha: ["Pastilha de Freio"],
  disc: ["Disco de Freio"],
  disco: ["Disco de Freio"],
  amort: ["Amortecedor"],
  amortecedor: ["Amortecedor"],
  vela: ["Vela de Ignição"],
  velas: ["Vela de Ignição"],
  bat: ["Bateria Automotiva 60Ah"]
};

// Prefixas de acessórios secundários
const SECONDARY_PREFIXES = ["acabamento", "alojamento", "moldura", "suporte", "capa", "friso", "presilha"];

function getPrimaryKeyword(q: string): { primaryKeyword: string; allWords: string[] } {
  const words = q
    .trim()
    .replace(/[%_\\\[\]]/g, "")
    .split(/\s+/)
    .filter((w) => w.length > 2 && !STOP_WORDS.has(w.toLowerCase()));

  const primaryKeyword = words[0] || q.trim().replace(/[%_\\\[\]]/g, "");
  return { primaryKeyword, allWords: words };
}

function getPriorityScore(partName: string, queryLower: string): number {
  const nameLower = partName.toLowerCase();
  
  if (SECONDARY_PREFIXES.some((prefix) => nameLower.startsWith(prefix))) {
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
    const { primaryKeyword, allWords } = getPrimaryKeyword(q);

    // -------------------------------------------------------------
    // CASO 1: Versão Específica Selecionada (versionId != "" && != "all")
    // Consulta 1 única palavra-chave no D1 SQL para evitar estouro do LIKE
    // -------------------------------------------------------------
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
              like(schema.masterParts.name, `%${primaryKeyword}%`)
            )
          )
          .limit(50);

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
        const safeModel = modelName.replace(/[%_\\\[\]]/g, "").trim();
        const whereConditions: any[] = [
          like(schema.masterParts.name, `%${primaryKeyword}%`)
        ];

        if (safeModel) {
          whereConditions.push(like(schema.carModels.name, `%${safeModel}%`));
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
          .limit(50);

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
        .where(like(schema.masterParts.name, `%${primaryKeyword}%`))
        .limit(60);

      rawCandidates = matches.map((m) => m.name);
    }

    // REGRA DE BLINDAGEM: Se o veículo foi selecionado e NENHUMA peça compatível foi encontrada na tabela, retorna lista vazia
    if (isVehicleSelected && rawCandidates.length === 0) {
      return NextResponse.json({ parts: [] });
    }

    // -------------------------------------------------------------
    // REFINAMENTO DE RELEVÂNCIA E FILTRAGEM EM MEMÓRIA TYPESCRIPT
    // -------------------------------------------------------------
    const queryLower = q.toLowerCase();

    // 1. Filtragem de termos adicionais em memória se houver mais palavras
    if (allWords.length > 1) {
      const extraWords = allWords.slice(1).map((w) => w.toLowerCase());
      const matchedExtra = rawCandidates.filter((name) => {
        const lowerName = name.toLowerCase();
        return extraWords.every((w) => lowerName.includes(w));
      });
      if (matchedExtra.length > 0) {
        rawCandidates = matchedExtra;
      }
    }

    // 2. Filtra Marcas Concorrentes Conflitantes em Memória
    if (brandName && brandName.length >= 3) {
      const otherBrands = CONFLICTING_BRANDS.filter(
        (b) => b !== brandName && !brandName.includes(b)
      );
      rawCandidates = rawCandidates.filter((name) => {
        const lowerName = name.toLowerCase();
        return !otherBrands.some((ob) => lowerName.includes(ob));
      });
    }

    // Injeta peças mestre essenciais apenas se houver busca livre
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

      // 3. Rejeitar aromatizantes / químicos em buscas automotivas
      if (isArSearch || AROMA_KEYWORDS.some((akw) => lowerRaw.includes(akw))) {
        if (AROMA_KEYWORDS.some((akw) => lowerRaw.includes(akw))) {
          continue;
        }
      }

      // 4. Rejeitar peças de moto se for segmento carro ou elétrico
      if (isCarSegment) {
        if (MOTORCYCLE_BRANDS_MODELS.some((m) => lowerRaw.includes(m))) {
          continue;
        }
      }

      // 5. Sanear nome canônico
      const clean = cleanMasterPartTitle(raw);
      if (!clean || clean.length < 3) continue;

      const score = getPriorityScore(clean, queryLower);
      if (!baseCleaned.some((item) => item.clean === clean)) {
        baseCleaned.push({ clean, score });
      }
    }

    // Ordenar por relevância
    baseCleaned.sort((a, b) => b.score - a.score);

    const finalSuggestions: string[] = baseCleaned.map((item) => item.clean);

    return NextResponse.json({ parts: Array.from(new Set(finalSuggestions)).slice(0, 12) });
  } catch (error) {
    console.error("Public part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
