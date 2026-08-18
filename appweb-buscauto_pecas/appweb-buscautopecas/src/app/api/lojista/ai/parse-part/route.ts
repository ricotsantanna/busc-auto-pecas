// src/app/api/lojista/ai/parse-part/route.ts — AI Parser com Detecção de Intervalo de Anos e Motorização
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { getSession } from "@/lib/auth-edge";
import { eq, like, or, and } from "drizzle-orm";

export const runtime = "edge";

// Dict of common part names and typos for instant clean standardization
const PART_DICTIONARY: { pattern: RegExp; cleanName: string }[] = [
  { pattern: /virabrequim/i, cleanName: "Virabrequim do Motor" },
  { pattern: /para\s*brisa|parabrisas?/i, cleanName: "Para-brisa Dianteiro" },
  { pattern: /farol\s*(dianteiro)?\s*direit[oa]/i, cleanName: "Farol Dianteiro Direito" },
  { pattern: /farol\s*(dianteiro)?\s*esquerd[oa]/i, cleanName: "Farol Dianteiro Esquerdo" },
  { pattern: /farol/i, cleanName: "Farol Dianteiro" },
  { pattern: /filtro\s*(de)?\s*ar/i, cleanName: "Filtro de Ar" },
  { pattern: /pastilha\s*(de)?\s*freio/i, cleanName: "Pastilha de Freio Dianteira" },
  { pattern: /disco\s*(de)?\s*freio/i, cleanName: "Disco de Freio Ventilado" },
  { pattern: /lanterna\s*(traseira)?\s*direit[oa]/i, cleanName: "Lanterna Traseira Direita" },
  { pattern: /lanterna\s*(traseira)?\s*esquerd[oa]/i, cleanName: "Lanterna Traseira Esquerda" },
  { pattern: /lanterna/i, cleanName: "Lanterna Traseira" },
  { pattern: /porta\s*(dianteira)?\s*direit[oa]/i, cleanName: "Porta Dianteira Direita" },
  { pattern: /porta\s*(dianteira)?\s*esquerd[oa]/i, cleanName: "Porta Dianteira Esquerda" },
  { pattern: /porta/i, cleanName: "Porta Dianteira" },
  { pattern: /amortecedor/i, cleanName: "Amortecedor Dianteiro" },
];

const KNOWN_BRANDS: { search: string[]; name: string }[] = [
  { search: ["audi", "aaudi"], name: "Audi" },
  { search: ["fiat"], name: "Fiat" },
  { search: ["chevrolet", "gm", "chevr"], name: "Chevrolet" },
  { search: ["volkswagen", "vw", "volks"], name: "Volkswagen" },
  { search: ["ford"], name: "Ford" },
  { search: ["honda"], name: "Honda" },
  { search: ["toyota"], name: "Toyota" },
  { search: ["hyundai"], name: "Hyundai" },
  { search: ["renault"], name: "Renault" },
  { search: ["jeep"], name: "Jeep" },
  { search: ["nissan"], name: "Nissan" },
];

const KNOWN_MODELS: { search: string[]; name: string }[] = [
  { search: ["a3"], name: "A3" },
  { search: ["siena"], name: "Siena" },
  { search: ["corsa"], name: "Corsa" },
  { search: ["argo"], name: "Argo" },
  { search: ["uno"], name: "Uno" },
  { search: ["palio"], name: "Palio" },
  { search: ["gol"], name: "Gol" },
  { search: ["onix"], name: "Onix" },
  { search: ["ka"], name: "Ka" },
  { search: ["hb20"], name: "HB20" },
  { search: ["civic"], name: "Civic" },
  { search: ["corolla"], name: "Corolla" },
  { search: ["renegade"], name: "Renegade" },
  { search: ["compass"], name: "Compass" },
];

export async function POST(req: NextRequest) {
  try {
    const session = await getSession();
    if (!session) {
      return NextResponse.json({ error: "Não autenticado" }, { status: 401 });
    }

    const { rawText } = (await req.json()) as { rawText: string };
    if (!rawText || rawText.trim() === "") {
      return NextResponse.json({ error: "Texto vazio" }, { status: 400 });
    }

    const db = await getDb();
    const textLower = rawText.toLowerCase();

    // 1. Extract clean part name from dictionary or sanitize
    let nomeDaPeca = "";
    for (const item of PART_DICTIONARY) {
      if (item.pattern.test(rawText)) {
        nomeDaPeca = item.cleanName;
        break;
      }
    }

    if (!nomeDaPeca) {
      let cleaned = rawText.replace(/\b(19\d{2}|20\d{2})\b/g, "");
      KNOWN_BRANDS.forEach((b) => b.search.forEach((s) => (cleaned = cleaned.replace(new RegExp(`\\b${s}\\b`, "gi"), ""))));
      KNOWN_MODELS.forEach((m) => m.search.forEach((s) => (cleaned = cleaned.replace(new RegExp(`\\b${s}\\b`, "gi"), ""))));
      cleaned = cleaned.replace(/\s+/g, " ").trim();
      nomeDaPeca = cleaned ? cleaned.charAt(0).toUpperCase() + cleaned.slice(1) : "Peça Automotiva";
    }

    // 2. Extract brand, model, year range, engine
    let extractedBrand = "";
    for (const b of KNOWN_BRANDS) {
      if (b.search.some((s) => textLower.includes(s))) {
        extractedBrand = b.name;
        break;
      }
    }

    let extractedModel = "";
    for (const m of KNOWN_MODELS) {
      if (m.search.some((s) => textLower.includes(s))) {
        extractedModel = m.name;
        break;
      }
    }

    // Extract year range e.g. "2017 a 2020", "2017-2020", "2017 a 20", "2017 2020"
    const extractedYears: string[] = [];
    const yearRangeMatch = rawText.match(/\b(19\d{2}|20\d{2})\s*(?:a|-|até|\/)\s*(19\d{2}|20\d{2}|\d{2})\b/i);

    if (yearRangeMatch) {
      const startYear = parseInt(yearRangeMatch[1], 10);
      let endYearStr = yearRangeMatch[2];
      if (endYearStr.length === 2) {
        endYearStr = yearRangeMatch[1].substring(0, 2) + endYearStr;
      }
      const endYear = parseInt(endYearStr, 10);
      if (!isNaN(startYear) && !isNaN(endYear) && endYear >= startYear && endYear - startYear <= 30) {
        for (let y = startYear; y <= endYear; y++) {
          extractedYears.push(String(y));
        }
      }
    }

    if (extractedYears.length === 0) {
      const allYears = Array.from(rawText.matchAll(/\b(19\d{2}|20\d{2})\b/g)).map((m) => m[1]);
      if (allYears.length >= 2) {
        const start = Math.min(...allYears.map(Number));
        const end = Math.max(...allYears.map(Number));
        if (end - start <= 20) {
          for (let y = start; y <= end; y++) {
            extractedYears.push(String(y));
          }
        }
      } else if (allYears.length === 1) {
        extractedYears.push(allYears[0]);
      }
    }

    const extractedYear = extractedYears[0] || "";

    // Extract engine motor (e.g. "2.0", "1.5", "1.6", "1.8", "1.0", "1.4", "2.4", "v6")
    const engineMatch = rawText.match(/\b(1\.0|1\.4|1\.5|1\.6|1\.8|2\.0|2\.4|3\.0|v6|turbo)\b/i);
    const extractedEngine = engineMatch ? engineMatch[1].toUpperCase() : "";

    // 3. Database Lookup for D1 brandId & modelId
    let brandId = "";
    let modelId = "";

    if (extractedBrand) {
      const bRows = await db
        .select({ id: schema.brands.id, name: schema.brands.name })
        .from(schema.brands)
        .where(like(schema.brands.name, `%${extractedBrand}%`))
        .limit(1);
      if (bRows[0]) {
        brandId = bRows[0].id;
      }
    }

    if (extractedModel) {
      const mConditions = [like(schema.carModels.name, `%${extractedModel}%`)];
      if (brandId) {
        mConditions.push(eq(schema.carModels.brandId, brandId));
      }
      const mRows = await db
        .select({ id: schema.carModels.id, brandId: schema.carModels.brandId })
        .from(schema.carModels)
        .where(and(...mConditions))
        .limit(1);
      if (mRows[0]) {
        modelId = mRows[0].id;
        if (!brandId) brandId = mRows[0].brandId;
      }
    }

    // 4. Check if part ALREADY exists in master_parts (catalog mestre)
    let partId = "";
    const masterSearch = await db
      .select({ id: schema.masterParts.id, name: schema.masterParts.name, manufacturer: schema.masterParts.manufacturer })
      .from(schema.masterParts)
      .where(like(schema.masterParts.name, `%${nomeDaPeca}%`))
      .limit(1);

    if (masterSearch[0]) {
      partId = masterSearch[0].id;
      nomeDaPeca = masterSearch[0].name;
    } else {
      const catRows = await db.select({ id: schema.categories.id }).from(schema.categories).limit(1);
      let categoryId = catRows[0]?.id || "cat-motor";

      const code = `IA-${crypto.randomUUID().substring(0, 8).toUpperCase()}`;
      partId = crypto.randomUUID();

      await db.insert(schema.masterParts).values({
        id: partId,
        name: nomeDaPeca,
        manufacturer: "Original",
        manufacturerCode: code,
        categoryId,
        description: `Extraído via IA de: "${rawText}"`,
      }).onConflictDoNothing();
    }

    return NextResponse.json({
      success: true,
      partId,
      extractedData: {
        nomeDaPeca,
        fabricante: "Original",
        codigoPeca: `IA-${partId.substring(0, 8).toUpperCase()}`,
        montadora: extractedBrand,
        modelo: extractedModel,
        ano: extractedYear,
        anos: extractedYears,
        motor: extractedEngine,
        brandId,
        modelId,
      },
    });
  } catch (error: any) {
    console.error("AI Parser error:", error);
    return NextResponse.json({ error: error.message || "Erro ao processar com IA" }, { status: 500 });
  }
}
