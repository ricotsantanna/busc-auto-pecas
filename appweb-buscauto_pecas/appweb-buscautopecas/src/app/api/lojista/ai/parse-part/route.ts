// src/app/api/lojista/ai/parse-part/route.ts — AI Parser Canônico com Queries SQL Limpas no D1
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { getSession } from "@/lib/auth-edge";
import { eq, like, and } from "drizzle-orm";

export const runtime = "edge";

function sanitizeLike(term: string): string {
  return term.replace(/[%_\\\[\]]/g, "").trim();
}

// Dicionário Canônico de Nomes de Peças Limpos
const PART_CANONICAL_RULES: { pattern: RegExp; cleanName: string; categoryId: string }[] = [
  { pattern: /grade\s*(dianteira|frontal)?/i, cleanName: "Grade Frontal", categoryId: "cat-carroceria" },
  { pattern: /virabrequim/i, cleanName: "Virabrequim do Motor", categoryId: "cat-motor" },
  { pattern: /para\s*brisa|parabrisas?/i, cleanName: "Para-brisa Dianteiro", categoryId: "cat-carroceria" },
  { pattern: /farol\s*(dianteiro)?\s*(de)?\s*(milha|neblina|auxiliar)/i, cleanName: "Farol de Milha / Auxiliar", categoryId: "cat-iluminacao" },
  { pattern: /farol/i, cleanName: "Farol Principal", categoryId: "cat-iluminacao" },
  { pattern: /filtro\s*(de)?\s*ar\s*condicionado/i, cleanName: "Filtro de Ar Condicionado (Cabine)", categoryId: "cat-filtros" },
  { pattern: /filtro\s*(de)?\s*ar/i, cleanName: "Filtro de Ar", categoryId: "cat-filtros" },
  { pattern: /pastilha\s*(de)?\s*freio/i, cleanName: "Pastilha de Freio", categoryId: "cat-freios" },
  { pattern: /disco\s*(de)?\s*freio/i, cleanName: "Disco de Freio", categoryId: "cat-freios" },
  { pattern: /lanterna\s*traseira/i, cleanName: "Lanterna Traseira", categoryId: "cat-iluminacao" },
  { pattern: /lanterna/i, cleanName: "Lanterna Traseira", categoryId: "cat-iluminacao" },
  { pattern: /porta/i, cleanName: "Porta Dianteira", categoryId: "cat-carroceria" },
  { pattern: /amortecedor/i, cleanName: "Amortecedor", categoryId: "cat-suspensao" },
  { pattern: /retrovisor/i, cleanName: "Retrovisor", categoryId: "cat-carroceria" },
  { pattern: /parachoque|para-choque/i, cleanName: "Parachoque Dianteiro", categoryId: "cat-carroceria" },
];

const KNOWN_BRANDS: { search: string[]; name: string }[] = [
  { search: ["hyunday", "hyundai", "hiundai"], name: "Hyundai" },
  { search: ["audi", "aaudi"], name: "Audi" },
  { search: ["chevrolet", "gm", "chevr", "chevrollet"], name: "Chevrolet" },
  { search: ["volkswagen", "vw", "volks", "volksvagen"], name: "Volkswagen" },
  { search: ["ford"], name: "Ford" },
  { search: ["honda"], name: "Honda" },
  { search: ["toyota"], name: "Toyota" },
  { search: ["renault", "renau"], name: "Renault" },
  { search: ["jeep"], name: "Jeep" },
  { search: ["nissan"], name: "Nissan" },
  { search: ["fiat"], name: "Fiat" },
  { search: ["peugeot"], name: "Peugeot" },
  { search: ["citroen", "citroën"], name: "Citroën" },
  { search: ["bmw"], name: "BMW" },
  { search: ["mercedes", "mb"], name: "Mercedes-Benz" },
];

const KNOWN_MODELS: { search: string[]; name: string }[] = [
  { search: ["creta"], name: "Creta" },
  { search: ["hb20"], name: "HB20" },
  { search: ["tucson"], name: "Tucson" },
  { search: ["ix35"], name: "ix35" },
  { search: ["santa fe", "santafe"], name: "Santa Fe" },
  { search: ["civic"], name: "Civic" },
  { search: ["fit"], name: "Fit" },
  { search: ["hrv", "hr-v"], name: "HR-V" },
  { search: ["city"], name: "City" },
  { search: ["corolla"], name: "Corolla" },
  { search: ["yaris"], name: "Yaris" },
  { search: ["hilux"], name: "Hilux" },
  { search: ["a3"], name: "A3" },
  { search: ["a4"], name: "A4" },
  { search: ["onix"], name: "Onix" },
  { search: ["corsa"], name: "Corsa" },
  { search: ["s10"], name: "S10" },
  { search: ["gol"], name: "Gol" },
  { search: ["polo"], name: "Polo" },
  { search: ["fox"], name: "Fox" },
  { search: ["ka"], name: "Ka" },
  { search: ["fiesta"], name: "Fiesta" },
  { search: ["argo"], name: "Argo" },
  { search: ["uno"], name: "Uno" },
  { search: ["palio"], name: "Palio" },
  { search: ["siena"], name: "Siena" },
  { search: ["renegade"], name: "Renegade" },
  { search: ["compass"], name: "Compass" },
  { search: ["duster"], name: "Duster" },
  { search: ["kwid"], name: "Kwid" },
  { search: ["sandero"], name: "Sandero" },
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

    // 1. Extração da Montadora (Com correção de erros de digitação)
    let brandName = "";
    for (const b of KNOWN_BRANDS) {
      if (b.search.some((s) => textLower.includes(s))) {
        brandName = b.name;
        break;
      }
    }

    // 2. Extração do Modelo
    let modelName = "";
    for (const m of KNOWN_MODELS) {
      if (m.search.some((s) => textLower.includes(s))) {
        modelName = m.name;
        break;
      }
    }

    // 3. Extração do Lado / Posição
    let sidePosition = "NENHUM";
    if (/\bdireit[oa]\b|\bld\b/i.test(textLower)) {
      sidePosition = "DIREITO";
    } else if (/\besquerd[oa]\b|\ble\b/i.test(textLower)) {
      sidePosition = "ESQUERDO";
    } else if (/\bpar\b/i.test(textLower)) {
      sidePosition = "PAR";
    } else if (/\bdianteir[oa]\b/i.test(textLower)) {
      sidePosition = "DIANTEIRO";
    } else if (/\btraseir[oa]\b/i.test(textLower)) {
      sidePosition = "TRASEIRO";
    }

    // 4. Extração Estrita do Intervalo de Anos (yearStart, yearEnd, years)
    const years: number[] = [];
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
          years.push(y);
        }
      }
    }

    if (years.length === 0) {
      const allYears = Array.from(rawText.matchAll(/\b(19\d{2}|20\d{2})\b/g)).map((m) => parseInt(m[1], 10));
      if (allYears.length >= 2) {
        const start = Math.min(...allYears);
        const end = Math.max(...allYears);
        if (end - start <= 20) {
          for (let y = start; y <= end; y++) {
            years.push(y);
          }
        }
      } else if (allYears.length === 1) {
        years.push(allYears[0]);
      }
    }

    const yearStart = years.length > 0 ? years[0] : null;
    const yearEnd = years.length > 0 ? years[years.length - 1] : null;
    const yearsStringArr = years.map(String);

    // 5. Higienização e Limpeza Estrita do Nome Canônico da Peça
    let cleanPartName = "";

    for (const rule of PART_CANONICAL_RULES) {
      if (rule.pattern.test(rawText)) {
        cleanPartName = rule.cleanName;
        break;
      }
    }

    if (!cleanPartName) {
      let sanitize = rawText;
      sanitize = sanitize.replace(/\b(19\d{2}|20\d{2})\s*(?:a|-|até|\/)\s*(19\d{2}|20\d{2}|\d{2})\b/gi, "");
      sanitize = sanitize.replace(/\b(19\d{2}|20\d{2})\b/g, "");

      KNOWN_BRANDS.forEach((b) => b.search.forEach((s) => {
        sanitize = sanitize.replace(new RegExp(`\\b${s}\\b`, "gi"), "");
      }));

      KNOWN_MODELS.forEach((m) => m.search.forEach((s) => {
        sanitize = sanitize.replace(new RegExp(`\\b${s}\\b`, "gi"), "");
      }));

      sanitize = sanitize.replace(/\b(direit[oa]|esquerd[oa]|dianteir[oa]|traseir[oa]|lado|ld|le|par)\b/gi, "");
      sanitize = sanitize.replace(/\b(1\.0|1\.4|1\.5|1\.6|1\.8|2\.0|2\.4|3\.0|v6|turbo|16v|8v)\b/gi, "");
      sanitize = sanitize.replace(/\s+/g, " ").trim();

      if (sanitize) {
        cleanPartName = sanitize.charAt(0).toUpperCase() + sanitize.slice(1);
      } else {
        cleanPartName = "Peça Automotiva";
      }
    }

    // 6. Resolução de brandId e modelId no D1 via queries SQL diretas e simples
    let brandId = "";
    let modelId = "";

    if (brandName) {
      const safeBrand = sanitizeLike(brandName);
      const bRows = await db
        .select({ id: schema.brands.id, name: schema.brands.name })
        .from(schema.brands)
        .where(like(schema.brands.name, `%${safeBrand}%`))
        .limit(1);
      if (bRows[0]) {
        brandId = bRows[0].id;
      }
    }

    if (modelName) {
      const safeModel = sanitizeLike(modelName);
      const mConditions = [like(schema.carModels.name, `%${safeModel}%`)];
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

    // 7. Busca ou Criação da Peça Mestre Canônica em master_parts
    let masterPartId = "";
    const safeCleanName = sanitizeLike(cleanPartName);
    const masterSearch = await db
      .select({ id: schema.masterParts.id, name: schema.masterParts.name, manufacturer: schema.masterParts.manufacturer })
      .from(schema.masterParts)
      .where(like(schema.masterParts.name, `%${safeCleanName}%`))
      .limit(1);

    if (masterSearch[0]) {
      masterPartId = masterSearch[0].id;
      cleanPartName = masterSearch[0].name;
    } else {
      const catRows = await db.select({ id: schema.categories.id }).from(schema.categories).limit(1);
      const categoryId = catRows[0]?.id || "cat-carroceria";

      masterPartId = `mp-${cleanPartName.toLowerCase().replace(/[^a-z0-9]+/g, "-")}`;

      await db.insert(schema.masterParts).values({
        id: masterPartId,
        name: cleanPartName,
        manufacturer: "Original",
        manufacturerCode: `IA-${masterPartId.substring(3, 11).toUpperCase()}`,
        categoryId,
        description: `Extraído via IA de: "${rawText}"`,
      }).onConflictDoNothing();
    }

    // 8. Resposta Estruturada no Formato JSON Solicitado
    return NextResponse.json({
      success: true,
      masterPartId,
      cleanPartName,
      brandName,
      brandId,
      modelName,
      modelId,
      yearStart,
      yearEnd,
      years,
      sidePosition,
      suggestedPrice: 450.00,
      partId: masterPartId,
      extractedData: {
        nomeDaPeca: cleanPartName,
        fabricante: "Original",
        codigoPeca: `IA-${masterPartId.substring(3, 11).toUpperCase()}`,
        montadora: brandName,
        modelo: modelName,
        ano: yearStart ? String(yearStart) : "",
        anos: yearsStringArr,
        sidePosition,
        brandId,
        modelId,
      },
    });
  } catch (error: any) {
    console.error("AI Parser error:", error);
    return NextResponse.json({ error: error.message || "Erro ao processar com IA" }, { status: 500 });
  }
}
