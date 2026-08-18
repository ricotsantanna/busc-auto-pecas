// scripts/sanitize-database.ts — Script de Saneamento Rigoroso da Base SQLite Local (D1)
import Database from "better-sqlite3";
import path from "node:path";
import fs from "node:fs";

// Marcas de montadoras/veículos conhecidas para normalizar como 'Original'
const AUTOMAKER_BRANDS = [
  "general motors", "gm", "chevrolet", "volkswagen", "vw", "fiat", "ford", "hyundai",
  "honda", "toyota", "renault", "peugeot", "citroen", "citroën", "nissan", "jeep",
  "iveco", "scania", "volvo", "bmw", "mercedes", "mercedes-benz", "audi", "chery", "byd", "haval", "mitsubishi"
];

// Termos de ruído / chicotes / refugos de scrapers a serem expurgados do catálogo mestre
const NOISE_PATTERNS = [
  "%chicote%",
  "%terminal t%",
  "%anel da tampa%",
  "%reparo de chicote%",
  "%aplicação chicote%",
  "%suporte do chicote%",
  "%plug de chicote%",
  "%conector chicote%",
  "%soquete chicote%",
  "%porta fusivel chicote%",
  "%chicote para reparo%",
];

// Termos a serem removidos dos títulos das peças
const KNOWN_BRANDS_PATTERNS = [
  "hyunday", "hyundai", "hiundai", "audi", "aaudi", "chevrolet", "chevrollet", "chevr", "gm",
  "volkswagen", "volksvagen", "volks", "vw", "ford", "honda", "toyota", "renault", "renau",
  "jeep", "nissan", "fiat", "peugeot", "citroen", "citroën", "bmw", "mercedes", "iveco", "scania", "volvo"
];

const KNOWN_MODELS_PATTERNS = [
  "creta", "hb20", "tucson", "ix35", "santa fe", "santafe", "civic", "fit", "hrv", "hr-v", "city",
  "corolla", "yaris", "hilux", "a3", "a4", "onix", "corsa", "s10", "gol", "polo", "fox", "ka",
  "fiesta", "argo", "uno", "palio", "siena", "renegade", "compass", "duster", "kwid", "sandero"
];

function cleanPartTitle(rawTitle: string): string {
  let title = rawTitle;

  // Remove intervalos de anos (ex: 2015-2020, 2015 a 2020)
  title = title.replace(/\b(19\d{2}|20\d{2})\s*(?:a|-|até|\/)\s*(19\d{2}|20\d{2}|\d{2})\b/gi, "");
  // Remove anos de 4 dígitos isolados (ex: 2015, 2020)
  title = title.replace(/\b(19\d{2}|20\d{2})\b/g, "");

  // Remove montadoras conhecidas
  KNOWN_BRANDS_PATTERNS.forEach((brand) => {
    title = title.replace(new RegExp(`\\b${brand}\\b`, "gi"), "");
  });

  // Remove modelos conhecidos
  KNOWN_MODELS_PATTERNS.forEach((model) => {
    title = title.replace(new RegExp(`\\b${model}\\b`, "gi"), "");
  });

  // Remove posições e motorização
  title = title.replace(/\b(direit[oa]|esquerd[oa]|dianteir[oa]|traseir[oa]|lado|ld|le|par)\b/gi, "");
  title = title.replace(/\b(1\.0|1\.4|1\.5|1\.6|1\.8|2\.0|2\.4|3\.0|v6|turbo|16v|8v|flex)\b/gi, "");

  // Limpa espaços extras
  title = title.replace(/\s+/g, " ").trim();

  if (!title || title.length < 3) return rawTitle.trim();

  return title.charAt(0).toUpperCase() + title.slice(1);
}

function normalizeMfg(mfg: string | null | undefined): string {
  if (!mfg || mfg.trim() === "" || mfg.toLowerCase() === "desconhecido") {
    return "Original";
  }
  const lower = mfg.toLowerCase().trim();
  if (AUTOMAKER_BRANDS.some((b) => lower === b || lower.includes(b))) {
    return "Original";
  }
  return mfg.trim();
}

function findD1SqliteFiles(baseDir: string): string[] {
  const sqliteFiles: string[] = [];
  if (!fs.existsSync(baseDir)) return sqliteFiles;

  function walk(dir: string) {
    const files = fs.readdirSync(dir);
    for (const file of files) {
      const fullPath = path.join(dir, file);
      const stat = fs.statSync(fullPath);
      if (stat.isDirectory()) {
        walk(fullPath);
      } else if ((file.endsWith(".sqlite") || file.endsWith(".db")) && !file.includes("metadata")) {
        sqliteFiles.push(fullPath);
      }
    }
  }

  walk(baseDir);
  return sqliteFiles;
}

export function sanitizeDatabase(dbPath: string) {
  const db = new Database(dbPath);

  // Verifica se o banco contém a tabela master_parts
  const tableCheck = db.prepare(`SELECT name FROM sqlite_master WHERE type='table' AND name='master_parts'`).get();
  if (!tableCheck) {
    db.close();
    return;
  }

  console.log(`\n==================================================`);
  console.log(`🧹 Iniciando Saneamento Global no SQLite D1:`);
  console.log(`📁 Arquivo DB: ${dbPath}`);
  console.log(`==================================================\n`);

  db.pragma("foreign_keys = OFF");

  let totalPurgedNoise = 0;
  let totalTitlesSanitized = 0;
  let totalMfgNormalized = 0;
  let totalDeduplicated = 0;
  let totalFkRemapped = 0;
  let totalCorruptedOffersDeleted = 0;

  try {
    // 1. Purga e Limpeza do Catálogo Mestre (master_parts) de Ruídos e Chicotes
    for (const pattern of NOISE_PATTERNS) {
      db.prepare(`
        DELETE FROM store_offers 
        WHERE part_id IN (SELECT id FROM master_parts WHERE LOWER(name) LIKE ?)
      `).run(pattern);

      db.prepare(`
        DELETE FROM part_compatibility 
        WHERE part_id IN (SELECT id FROM master_parts WHERE LOWER(name) LIKE ?)
      `).run(pattern);

      const res = db.prepare(`
        DELETE FROM master_parts WHERE LOWER(name) LIKE ?
      `).run(pattern);

      totalPurgedNoise += res.changes;
    }

    console.log(`✅ Step 1: Purga de Ruídos e Chicotes concluída. (${totalPurgedNoise} peças removidas)`);

    // 2. Normalização de Fabricantes (manufacturer -> 'Original' para montadoras)
    const mfgRows = db.prepare(`SELECT id, manufacturer FROM master_parts`).all() as { id: string; manufacturer: string }[];
    const updateMfgStmt = db.prepare(`UPDATE master_parts SET manufacturer = ? WHERE id = ?`);

    for (const row of mfgRows) {
      const norm = normalizeMfg(row.manufacturer);
      if (norm !== row.manufacturer) {
        updateMfgStmt.run(norm, row.id);
        totalMfgNormalized++;
      }
    }
    console.log(`✅ Step 2: Normalização de Fabricantes concluída. (${totalMfgNormalized} peças ajustadas para 'Original')`);

    // 3. Saneamento dos Títulos das Peças (Remoção de marcas, modelos, anos e posições)
    const allParts = db.prepare(`SELECT id, name FROM master_parts`).all() as { id: string; name: string }[];
    const updateTitleStmt = db.prepare(`UPDATE master_parts SET name = ? WHERE id = ?`);

    for (const part of allParts) {
      const clean = cleanPartTitle(part.name);
      if (clean !== part.name) {
        updateTitleStmt.run(clean, part.id);
        totalTitlesSanitized++;
      }
    }
    console.log(`✅ Step 3: Saneamento de Títulos concluído. (${totalTitlesSanitized} títulos limpos)`);

    // 4. Unificação / Desduplicação por LOWER(TRIM(name))
    const groupedParts = db.prepare(`
      SELECT LOWER(TRIM(name)) as clean_key, GROUP_CONCAT(id) as ids, COUNT(*) as cnt 
      FROM master_parts 
      GROUP BY LOWER(TRIM(name)) 
      HAVING cnt > 1
    `).all() as { clean_key: string; ids: string; cnt: number }[];

    const updateCompatFk = db.prepare(`UPDATE OR IGNORE part_compatibility SET part_id = ? WHERE part_id = ?`);
    const deleteDuplicateCompat = db.prepare(`DELETE FROM part_compatibility WHERE part_id = ?`);
    const updateOfferFk = db.prepare(`UPDATE store_offers SET part_id = ? WHERE part_id = ?`);
    const deletePartStmt = db.prepare(`DELETE FROM master_parts WHERE id = ?`);

    for (const group of groupedParts) {
      const ids = group.ids.split(",");
      const primaryId = ids[0];
      const duplicateIds = ids.slice(1);

      for (const dupId of duplicateIds) {
        const compatRes = updateCompatFk.run(primaryId, dupId);
        totalFkRemapped += compatRes.changes;
        deleteDuplicateCompat.run(dupId);

        const offerRes = updateOfferFk.run(primaryId, dupId);
        totalFkRemapped += offerRes.changes;

        deletePartStmt.run(dupId);
        totalDeduplicated++;
      }
    }

    // Remove eventuais duplicados remanescentes de part_compatibility
    db.prepare(`
      DELETE FROM part_compatibility 
      WHERE rowid NOT IN (
        SELECT MIN(rowid) FROM part_compatibility GROUP BY part_id, version_id
      )
    `).run();

    console.log(`✅ Step 4: Unificação e Desduplicação concluída.`);
    console.log(`   - Peças duplicadas removidas: ${totalDeduplicated}`);
    console.log(`   - Chaves estrangeiras remapeadas: ${totalFkRemapped}`);

    // 5. Limpeza de Ofertas Corrompidas de Teste
    const purgeCorruptedOffers = db.prepare(`
      DELETE FROM store_offers 
      WHERE part_id NOT IN (SELECT id FROM master_parts)
    `).run();
    totalCorruptedOffersDeleted = purgeCorruptedOffers.changes;

    console.log(`✅ Step 5: Limpeza de Ofertas Orfãs/Corrompidas concluída. (${totalCorruptedOffersDeleted} ofertas removidas)`);

    // Contagem final de peças canônicas ativas
    const finalCount = db.prepare(`SELECT COUNT(*) as total FROM master_parts`).get() as { total: number };

    console.log(`\n==================================================`);
    console.log(`📊 RELATÓRIO FINAL DE SANEAMENTO DO BANCO SQLITE D1:`);
    console.log(`==================================================`);
    console.log(`- Ruídos/Chicotes Expurgados: ${totalPurgedNoise}`);
    console.log(`- Títulos Limpos/Sanitizados:  ${totalTitlesSanitized}`);
    console.log(`- Fabricantes Normalizados:  ${totalMfgNormalized}`);
    console.log(`- Peças Duplicadas Removidas: ${totalDeduplicated}`);
    console.log(`- Chaves FK Remapeadas:        ${totalFkRemapped}`);
    console.log(`- Ofertas Orfãs Excluídas:    ${totalCorruptedOffersDeleted}`);
    console.log(`--------------------------------------------------`);
    console.log(`✨ TOTAL DE PEÇAS CANÔNICAS ATIVAS NO D1: ${finalCount.total}`);
    console.log(`==================================================\n`);
  } catch (err) {
    console.error("Erro no saneamento do banco:", err);
  } finally {
    db.pragma("foreign_keys = ON");
    db.close();
  }
}

// Execução Principal se chamado via CLI/Node
async function main() {
  const rootDir = path.resolve(__dirname, "..");
  const wranglerDir = path.join(rootDir, ".wrangler");
  const sqliteFiles = findD1SqliteFiles(wranglerDir);

  if (sqliteFiles.length === 0) {
    console.log("Nenhum banco SQLite de D1 encontrado em .wrangler/state.");
    return;
  }

  for (const file of sqliteFiles) {
    sanitizeDatabase(file);
  }
}

if (require.main === module) {
  main();
}
