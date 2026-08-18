// scripts/purge-corrupted-offers.ts — Script para Limpeza de Ofertas e Peças Corrompidas de Scrapers Antigos
import Database from "better-sqlite3";
import path from "node:path";
import fs from "node:fs";

// Padrões de títulos corrompidos / scrapers antigos a serem expurgados
const CORRUPTED_PATTERNS = [
  "%chicote%",
  "%terminal t%",
  "%anel da tampa%",
  "%aplicação chicote%",
  "%fitro de ar%",
  "%parabrisa aaudi%",
  "%parabrisa a3%",
  "%chevrollet%",
  "%volksvagen%",
  "%hyunday%",
  "%hiundai%",
];

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

export function purgeCorruptedOffers(dbPath: string) {
  const db = new Database(dbPath);

  const tableCheck = db.prepare(`SELECT name FROM sqlite_master WHERE type='table' AND name='store_offers'`).get();
  if (!tableCheck) {
    db.close();
    return;
  }

  console.log(`\n====================================================================`);
  console.log(`🧹 PURGA DE OFERTAS E PEÇAS CORROMPIDAS:`);
  console.log(`📁 Banco Local: ${dbPath}`);
  console.log(`====================================================================\n`);

  db.pragma("foreign_keys = OFF");

  let totalOffersDeleted = 0;
  let totalPartsDeleted = 0;

  try {
    for (const pattern of CORRUPTED_PATTERNS) {
      // 1. Deleta ofertas vinculadas a peças com nomes corrompidos
      const delOffers = db.prepare(`
        DELETE FROM store_offers 
        WHERE part_id IN (SELECT id FROM master_parts WHERE LOWER(name) LIKE ?)
      `).run(pattern);
      totalOffersDeleted += delOffers.changes;

      // 2. Deleta compatibilidades vinculadas
      db.prepare(`
        DELETE FROM part_compatibility 
        WHERE part_id IN (SELECT id FROM master_parts WHERE LOWER(name) LIKE ?)
      `).run(pattern);

      // 3. Deleta as peças mestre corrompidas
      const delParts = db.prepare(`
        DELETE FROM master_parts WHERE LOWER(name) LIKE ?
      `).run(pattern);
      totalPartsDeleted += delParts.changes;
    }

    // Deleta ofertas orfãs que não apontem para nenhuma master_part ativa
    const delOrphanOffers = db.prepare(`
      DELETE FROM store_offers WHERE part_id NOT IN (SELECT id FROM master_parts)
    `).run();
    totalOffersDeleted += delOrphanOffers.changes;

    const activeOffers = db.prepare(`SELECT COUNT(*) as cnt FROM store_offers`).get() as { cnt: number };
    const activeParts = db.prepare(`SELECT COUNT(*) as cnt FROM master_parts`).get() as { cnt: number };

    console.log(`✅ Purga Concluída com Sucesso:`);
    console.log(`   - Ofertas Corrompidas Removidas: ${totalOffersDeleted}`);
    console.log(`   - Peças Mestre Corrompidas Removidas: ${totalPartsDeleted}`);
    console.log(`   - Ofertas Ativas Remanescentes: ${activeOffers.cnt}`);
    console.log(`   - Peças Mestre Ativas Remanescentes: ${activeParts.cnt}`);
    console.log(`====================================================================\n`);

  } catch (err) {
    console.error("Erro na purga de ofertas corrompidas:", err);
  } finally {
    db.pragma("foreign_keys = ON");
    db.close();
  }
}

async function main() {
  const rootDir = path.resolve(__dirname, "..");
  const wranglerDir = path.join(rootDir, ".wrangler");
  const sqliteFiles = findD1SqliteFiles(wranglerDir);

  if (sqliteFiles.length === 0) {
    console.log("Nenhum banco SQLite de D1 encontrado em .wrangler/state.");
    return;
  }

  for (const file of sqliteFiles) {
    purgeCorruptedOffers(file);
  }
}

if (require.main === module) {
  main();
}
