import Database from "better-sqlite3";

const BASE_URL = "https://fipe.parallelum.com.br/api/v2";
const VEHICLE_TYPES = ["cars", "motorcycles"];

const delay = (ms) => new Promise((res) => setTimeout(res, ms));

async function fetchJson(url) {
  let retries = 3;
  while (retries > 0) {
    try {
      const headers = { "User-Agent": "BuscAutoPecasBot/1.0" };
      if (process.env.FIPE_API_KEY) headers["Authorization"] = `Bearer ${process.env.FIPE_API_KEY}`;
      const response = await fetch(url, { headers });
      if (!response.ok) throw new Error(`HTTP ${response.status}`);
      return await response.json();
    } catch (error) {
      await delay(1000);
      retries--;
    }
  }
  return null;
}

function slugify(text) {
  return text
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)+/g, "");
}

// Open local D1 SQLite database
const db = new Database("./.wrangler/state/v3/d1/miniflare-D1DatabaseObject/0b3e83532c8d6ec632b5149134ec388aea9e2093b7ef7fc406cecc6fb78061ce.sqlite");

function query(sql, params = []) {
  return db.prepare(sql).run(...params);
}

function queryAll(sql, params = []) {
  return db.prepare(sql).all(...params);
}

async function main() {
  const startTime = Date.now();
  const MAX_EXECUTION_TIME_MS = 5 * 60 * 1000; // 5 minutes

  try {
    // 1. Get current state
    const stateResult = queryAll("SELECT value FROM sync_state WHERE key = 'fipe-sync' LIMIT 1");
    
    let state = {
      typeIndex: 0,
      brandIndex: 0,
      modelIndex: 0,
      status: "idle",
      processedCount: 0
    };

    if (stateResult.length > 0 && stateResult[0].value) {
      state = JSON.parse(stateResult[0].value);
    }

    if (state.status === "finished") {
      console.log("Sincronização já está concluída.");
      return;
    }

    state.status = "running";
    let processedThisRun = 0;

    let cachedMarcas = {};

    while (Date.now() - startTime < MAX_EXECUTION_TIME_MS) {
      if (state.typeIndex >= VEHICLE_TYPES.length) {
        state.status = "finished";
        console.log("FIPE SYNC FINISHED SUCCESSFULLY! 🎉");
        break;
      }

      const vType = VEHICLE_TYPES[state.typeIndex];
      const typeLabel = vType === "cars" ? "carro" : "moto";

      if (!cachedMarcas[vType]) {
        const fetchM = await fetchJson(`${BASE_URL}/${vType}/brands`);
        if (!fetchM || fetchM.error) {
          console.error("Failed to fetch brands for", vType);
          break;
        }
        cachedMarcas[vType] = fetchM;
      }
      const marcas = cachedMarcas[vType];

      if (state.brandIndex >= marcas.length) {
        state.brandIndex = 0;
        state.typeIndex++;
        continue;
      }

      const marca = marcas[state.brandIndex];
      const brandSlug = slugify(marca.name) + "-" + typeLabel;
      const brandId = `b-${marca.code}-${typeLabel}`;

      // Insert Brand
      query(`
        INSERT OR IGNORE INTO brands (id, name, slug, vehicle_type, created_at)
        VALUES (?, ?, ?, ?, unixepoch())
      `, [brandId, marca.name, brandSlug, typeLabel]);

      const modelos = await fetchJson(`${BASE_URL}/${vType}/brands/${marca.code}/models`);
      if (!modelos || !Array.isArray(modelos)) {
        break;
      }

      if (state.modelIndex >= modelos.length) {
        state.modelIndex = 0;
        state.brandIndex++;
        continue;
      }

      const modelo = modelos[state.modelIndex];
      const modelSlug = slugify(modelo.name) + "-" + typeLabel;
      const modelId = `m-${modelo.code}-${typeLabel}`;

      // Insert Model
      query(`
        INSERT OR IGNORE INTO car_models (id, brand_id, name, slug, created_at)
        VALUES (?, ?, ?, ?, unixepoch())
      `, [modelId, brandId, modelo.name, modelSlug]);

      // Fetch versions
      const versoes = await fetchJson(`${BASE_URL}/${vType}/brands/${marca.code}/models/${modelo.code}/years`);
      if (versoes && Array.isArray(versoes)) {
        for (const v of versoes) {
          const versionId = `v-${v.code}-${modelId}`;
          const year = v.name.split(" ")[0] ? parseInt(v.name.split(" ")[0]) : 0;
          const engine = v.name.split(" ").slice(1).join(" ") || "N/D";

          query(`
            INSERT OR IGNORE INTO car_versions (id, model_id, year, version_name, engine, created_at)
            VALUES (?, ?, ?, ?, ?, unixepoch())
          `, [versionId, modelId, year, v.name, engine]);
        }
      }

      processedThisRun++;
      state.processedCount++;
      state.modelIndex++;
      
      console.log(`Processed: ${marca.name} - ${modelo.name} (${versoes?.length || 0} versions)`);
      
      await delay(300);
    }

    // Save state before exiting
    query(`
      INSERT INTO sync_state (key, value, updated_at)
      VALUES ('fipe-sync', ?, unixepoch())
      ON CONFLICT(key) DO UPDATE SET value = excluded.value, updated_at = unixepoch()
    `, [JSON.stringify(state)]);

    console.log(`\nProcessados ${processedThisRun} modelos nesta rodada.`);
    console.log(`Estado: ${JSON.stringify(state, null, 2)}`);

  } catch (error) {
    console.error("Cron Error:", error);
  }
}

main();