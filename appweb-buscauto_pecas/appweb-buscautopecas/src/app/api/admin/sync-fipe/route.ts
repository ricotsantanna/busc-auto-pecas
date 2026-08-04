import { NextRequest, NextResponse } from "next/server";
import { getDb } from "@/db";
import { schema } from "@/db";
import { eq } from "drizzle-orm";
import { crypto } from "@/lib/crypto-polyfill";

export const runtime = "edge";

const BASE_URL = "https://parallelum.com.br/fipe/api/v1";
const VEHICLE_TYPES = ["carros", "motos"];
// Limit time to 5 seconds to avoid Cloudflare Worker CPU timeout
const MAX_EXECUTION_TIME_MS = 5000;

const delay = (ms: number) => new Promise((res) => setTimeout(res, ms));

async function fetchJson(url: string) {
  let retries = 3;
  while (retries > 0) {
    try {
      const response = await fetch(url, { headers: { "User-Agent": "BuscAutoPecasBot/1.0" } });
      if (!response.ok) throw new Error(`HTTP ${response.status}`);
      return await response.json();
    } catch (error) {
      await delay(1000);
      retries--;
    }
  }
  return null;
}

function slugify(text: string) {
  return text
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)+/g, "");
}

export async function GET(req: NextRequest) {
  const authHeader = req.headers.get("authorization");
  // Expected: Bearer YOUR_CRON_SECRET
  if (authHeader !== `Bearer ${process.env.CRON_SECRET || "DEV_SECRET"}`) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const startTime = Date.now();
  let db;
  try {
    db = await getDb();
  } catch (err) {
    return NextResponse.json({ error: "D1 database not available" }, { status: 500 });
  }

  try {
    // 1. Get current state
    const stateRecord = await db.select().from(schema.syncState).where(eq(schema.syncState.key, "fipe-sync")).limit(1);
    
    let state = {
      typeIndex: 0,
      brandIndex: 0,
      modelIndex: 0,
      status: "idle",
      processedCount: 0
    };

    if (stateRecord.length > 0 && stateRecord[0].value) {
      state = JSON.parse(stateRecord[0].value);
    }

    if (state.status === "finished") {
      return NextResponse.json({ message: "Sincronização já está concluída." });
    }

    state.status = "running";
    let processedThisRun = 0;

    let cachedMarcas: Record<string, any[]> = {};

    // Loop até estourar o tempo
    while (Date.now() - startTime < MAX_EXECUTION_TIME_MS) {
      if (state.typeIndex >= VEHICLE_TYPES.length) {
        state.status = "finished";
        console.log("FIPE SYNC FINISHED SUCCESSFULLY! 🎉");
        
        // Simulação do envio de e-mail/notificação
        console.log("-------------------------------------------------");
        console.log("ENVIANDO E-MAIL PARA O ADMINISTRADOR:");
        console.log("Assunto: Sincronização FIPE Concluída 100%");
        console.log("Corpo: O robô finalizou a extração de todos os carros e motos!");
        console.log("-------------------------------------------------");
        
        break;
      }

      const vType = VEHICLE_TYPES[state.typeIndex];
      const typeLabel = vType === "carros" ? "carro" : "moto";

      if (!cachedMarcas[vType]) {
        const fetchM = await fetchJson(`${BASE_URL}/${vType}/marcas`);
        if (!fetchM || fetchM.error) break;
        cachedMarcas[vType] = fetchM;
      }
      const marcas = cachedMarcas[vType];

      if (state.brandIndex >= marcas.length) {
        state.brandIndex = 0;
        state.typeIndex++;
        continue;
      }

      const marca = marcas[state.brandIndex];
      const brandSlug = slugify(marca.nome) + "-" + typeLabel;
      const brandId = `b-${marca.codigo}-${typeLabel}`; // Deterministic ID

      // Insert Brand
      await db.insert(schema.brands).values({
        id: brandId,
        name: marca.nome,
        slug: brandSlug,
        vehicleType: typeLabel as any,
      }).onConflictDoNothing().run();

      const modelosData = await fetchJson(`${BASE_URL}/${vType}/marcas/${marca.codigo}/modelos`);
      if (!modelosData || !modelosData.modelos) {
         break;
      }

      const modelos = modelosData.modelos;

      if (state.modelIndex >= modelos.length) {
        state.modelIndex = 0;
        state.brandIndex++;
        continue;
      }

      const modelo = modelos[state.modelIndex];
      const modelSlug = slugify(modelo.nome) + "-" + typeLabel;
      const modelId = `m-${modelo.codigo}-${typeLabel}`;

      // Insert Model
      await db.insert(schema.carModels).values({
        id: modelId,
        brandId,
        name: modelo.nome,
        slug: modelSlug,
      }).onConflictDoNothing().run();

      // Fetch versions
      const versoes = await fetchJson(`${BASE_URL}/${vType}/marcas/${marca.codigo}/modelos/${modelo.codigo}/anos`);
      if (versoes) {
        const versionsToInsert = versoes.map((v: any) => {
           return {
              id: `v-${v.codigo}-${modelId}`,
              modelId,
              name: v.nome, // ex: "2022 Gasolina"
              year: v.nome.split(" ")[0], // ex: "2022"
              fuelType: v.nome.split(" ")[1] || "N/D",
              slug: slugify(v.nome) + "-" + modelId,
              code: v.codigo
           }
        });

        if (versionsToInsert.length > 0) {
          await db.insert(schema.carVersions).values(versionsToInsert).onConflictDoNothing().run();
        }
      }

      processedThisRun++;
      state.processedCount++;
      state.modelIndex++;
      
      await delay(300);
    }

    // Save state before exiting
    await db.insert(schema.syncState).values({
      key: "fipe-sync",
      value: JSON.stringify(state),
    }).onConflictDoUpdate({
      target: schema.syncState.key,
      set: { value: JSON.stringify(state), updatedAt: new Date() }
    }).run();

    return NextResponse.json({
      message: `Processados ${processedThisRun} modelos nesta rodada.`,
      nextState: state
    });

  } catch (error: any) {
    console.error("Cron Error:", error);
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
