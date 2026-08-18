import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, or } from "drizzle-orm";
import { cleanMasterPartTitle, MOTORCYCLE_BRANDS_MODELS } from "@/lib/part-sanitizer";

export const runtime = "edge";

// Known car brands for cross-brand conflict filtering
const CAR_BRANDS = [
  "fiat", "volkswagen", "vw", "chevrolet", "gm", "ford", "renault", "peugeot", "citroen", "citroën",
  "toyota", "honda", "hyundai", "nissan", "jeep", "bmw", "audi", "mercedes", "volvo", "scania", "mitsubishi", "chery", "byd"
];

// Peças de carros que possuem variações de lado/posição
const SIDE_SENSITIVE_KEYWORDS = [
  "farol", "lanterna", "retrovisor", "paralama", "porta", "amortecedor", "pastilha", "disco",
  "espelho", "macaneta", "maçaneta", "bojo", "pisca", "seta", "vidro", "suporte", "palheta"
];

// Dicionário de Peças Mestre Essenciais Principais para injeção e priorização no topo
const ESSENTIAL_MASTER_PARTS: Record<string, string[]> = {
  far: ["Farol", "Farol Principal", "Farol de Milha", "Farol Auxiliar", "Farol de Neblina"],
  faro: ["Farol", "Farol Principal", "Farol de Milha", "Farol Auxiliar", "Farol de Neblina"],
  farol: ["Farol", "Farol Principal", "Farol de Milha", "Farol Auxiliar", "Farol de Neblina"],
  lant: ["Lanterna", "Lanterna Traseira", "Lanterna de Seta / Pisca", "Lanterna de Freio"],
  lante: ["Lanterna", "Lanterna Traseira", "Lanterna de Seta / Pisca"],
  lanterna: ["Lanterna", "Lanterna Traseira", "Lanterna de Seta / Pisca"],
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
  
  // Se for exato igual à busca (ex: Farol) -> Score Máximo
  if (nameLower === queryLower) {
    return 100;
  }

  // Se a peça principal começa com a busca (ex: Farol Principal, Farol de Milha) -> Score Alto
  if (nameLower.startsWith(queryLower)) {
    return 90;
  }

  // Se a peça começa com substantivo mestre limpo (ex: Farol...) -> Score Médio
  return 50;
}

export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim();
  const segment = (req.nextUrl.searchParams.get("segment") ?? "CARRO").toUpperCase();
  const brandName = (req.nextUrl.searchParams.get("brandName") ?? "").trim().toLowerCase();
  const modelName = (req.nextUrl.searchParams.get("modelName") ?? "").trim().toLowerCase();

  if (q.length < 2) {
    return NextResponse.json({ parts: [] });
  }

  try {
    const db = await getDb();
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

    const rawCandidates: string[] = matches.map((m) => m.name);

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

      // 1. Filtrar peças de moto se o segmento for CARRO ou ELETRICO
      if (isCarSegment) {
        if (MOTORCYCLE_BRANDS_MODELS.some((m) => lowerRaw.includes(m))) {
          continue;
        }
      }

      // 2. Filtrar marcas de terceiros conflitantes se montadora foi selecionada
      if (brandName && brandName.length >= 3) {
        const conflictingBrands = CAR_BRANDS.filter((b) => b !== brandName && !brandName.includes(b));
        if (conflictingBrands.some((cb) => lowerRaw.includes(cb))) {
          continue;
        }
      }

      // 3. Saneamento do nome
      const clean = cleanMasterPartTitle(raw);
      if (!clean || clean.length < 3) continue;

      const score = getPriorityScore(clean, queryLower);
      if (!baseCleaned.some(item => item.clean === clean)) {
        baseCleaned.push({ clean, score });
      }
    }

    // Ordenar do maior score para o menor (Peças Principais no Topo, Acabamentos no Final)
    baseCleaned.sort((a, b) => b.score - a.score);

    const finalSuggestions: string[] = [];

    for (const item of baseCleaned) {
      const clean = item.clean;
      const lowerClean = clean.toLowerCase();
      const isSideSensitive = SIDE_SENSITIVE_KEYWORDS.some((kw) => lowerClean.includes(kw));

      if (isCarSegment && isSideSensitive) {
        // Se for peça de carro com variação de lado, gera as sugestões completas
        const rightVariant = `${clean} - Lado Direito (Passageiro)`;
        const leftVariant = `${clean} - Lado Esquerdo (Motorista)`;
        const pairVariant = `${clean} (Par / Ambos os Lados)`;

        if (!finalSuggestions.includes(rightVariant)) finalSuggestions.push(rightVariant);
        if (!finalSuggestions.includes(leftVariant)) finalSuggestions.push(leftVariant);
        if (!finalSuggestions.includes(pairVariant)) finalSuggestions.push(pairVariant);
      } else {
        if (!finalSuggestions.includes(clean)) {
          finalSuggestions.push(clean);
        }
      }
    }

    return NextResponse.json({ parts: finalSuggestions.slice(0, 12) });
  } catch (error) {
    console.error("Public part search error:", error);
    return NextResponse.json({ parts: [] });
  }
}
