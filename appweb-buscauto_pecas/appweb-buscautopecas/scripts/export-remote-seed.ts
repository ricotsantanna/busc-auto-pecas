// scripts/export-remote-seed.ts — Gerador do SQL de Seed Remoto (drizzle/seed_remote_top100.sql)
import Database from "better-sqlite3";
import path from "node:path";
import fs from "node:fs";

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

function escapeSqlString(str: string | null | undefined): string {
  if (str === null || str === undefined) return "NULL";
  return `'${String(str).replace(/'/g, "''")}'`;
}

export function exportRemoteSeed(dbPath: string) {
  const db = new Database(dbPath);

  const tableCheck = db.prepare(`SELECT name FROM sqlite_master WHERE type='table' AND name='master_parts'`).get();
  if (!tableCheck) {
    db.close();
    return;
  }

  console.log(`\n====================================================================`);
  console.log(`📜 GERANDO SQL DE SEED REMOTO D1 (drizzle/seed_remote_top100.sql):`);
  console.log(`📁 Banco de Origem: ${dbPath}`);
  console.log(`====================================================================\n`);

  const categories = db.prepare(`SELECT id, name, slug, icon, created_at FROM categories`).all() as any[];
  const masterParts = db.prepare(`SELECT id, name, manufacturer, manufacturer_code, category_id, position, description, created_at, updated_at FROM master_parts`).all() as any[];

  const sqlLines: string[] = [];
  sqlLines.push("-- drizzle/seed_remote_top100.sql");
  sqlLines.push("-- Seed das 133 Peças Mestre Canônicas e Categorias Oficiais para o Cloudflare D1 Remoto");
  sqlLines.push("PRAGMA foreign_keys = OFF;");
  sqlLines.push("");

  // 1. Statements de Categorias
  sqlLines.push("-- 1. Categorias Oficiais");
  for (const cat of categories) {
    const now = cat.created_at || Date.now();
    sqlLines.push(
      `INSERT OR IGNORE INTO categories (id, name, slug, icon, created_at) VALUES (${escapeSqlString(cat.id)}, ${escapeSqlString(cat.name)}, ${escapeSqlString(cat.slug)}, ${escapeSqlString(cat.icon)}, ${now});`
    );
  }
  sqlLines.push("");

  // 2. Statements de Peças Mestre
  sqlLines.push("-- 2. Peças Mestre Canônicas (Curva A/B & CEST 01)");
  for (const part of masterParts) {
    const createdAt = part.created_at || Date.now();
    const updatedAt = part.updated_at || Date.now();
    sqlLines.push(
      `INSERT OR REPLACE INTO master_parts (id, name, manufacturer, manufacturer_code, category_id, position, description, created_at, updated_at) VALUES (${escapeSqlString(part.id)}, ${escapeSqlString(part.name)}, ${escapeSqlString(part.manufacturer)}, ${escapeSqlString(part.manufacturer_code)}, ${escapeSqlString(part.category_id)}, ${escapeSqlString(part.position)}, ${escapeSqlString(part.description)}, ${createdAt}, ${updatedAt});`
    );
  }
  sqlLines.push("");
  sqlLines.push("PRAGMA foreign_keys = ON;");

  const projectRootDir = path.resolve(__dirname, "..");
  const drizzleDir = path.join(projectRootDir, "drizzle");
  if (!fs.existsSync(drizzleDir)) {
    fs.mkdirSync(drizzleDir, { recursive: true });
  }

  const outputFile = path.join(drizzleDir, "seed_remote_top100.sql");
  fs.writeFileSync(outputFile, sqlLines.join("\n"), "utf-8");

  console.log(`✅ Arquivo SQL gerado com sucesso: ${outputFile}`);
  console.log(`   - Categorias: ${categories.length}`);
  console.log(`   - Peças Mestre Canônicas: ${masterParts.length}`);
  console.log(`====================================================================\n`);

  db.close();
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
    exportRemoteSeed(file);
  }
}

if (require.main === module) {
  main();
}
