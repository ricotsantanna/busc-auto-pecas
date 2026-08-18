// scripts/seed-cest-master-parts.ts — Script de Seed CEST 01 (Auto-Peças Canônicas)
import Database from "better-sqlite3";
import path from "node:path";
import fs from "node:fs";

// Categorias Oficiais do Segmento CEST 01
const CEST_CATEGORIES = [
  { id: "cat-motor", name: "Motor e Componentes Internos", slug: "motor", icon: "Cpu" },
  { id: "cat-arrefecimento", name: "Sistema de Arrefecimento", slug: "arrefecimento", icon: "Snowflake" },
  { id: "cat-freios", name: "Freios e Componentes", slug: "freios", icon: "Disc" },
  { id: "cat-suspensao", name: "Suspensão e Direção", slug: "suspensao", icon: "Activity" },
  { id: "cat-transmissao", name: "Transmissão e Câmbio", slug: "transmissao", icon: "GitMerge" },
  { id: "cat-iluminacao", name: "Iluminação e Sinalização", slug: "iluminacao", icon: "Lightbulb" },
  { id: "cat-eletrica", name: "Sistema Elétrico e Ignição", slug: "eletrica", icon: "Zap" },
  { id: "cat-filtros", name: "Filtros e Admissão / Injeção", slug: "filtros", icon: "Filter" },
  { id: "cat-lataria", name: "Carroceria e Lataria", slug: "lataria", icon: "Shield" },
  { id: "cat-climatizacao", name: "Climatização / Ar-Condicionado", slug: "climatizacao", icon: "Wind" },
];

const CEST_PARTS = [
  // 1. Motor e Componentes Internos
  { id: 'mp-bloco-motor', name: 'Bloco de Cilindros / Motor', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-cabecote', name: 'Cabeçote do Motor', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-virabrequim', name: 'Virabrequim / Eixo de Manivelas', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-pistao', name: 'Pistão com Anéis', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-biela', name: 'Biela do Motor', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-valvula-admissao', name: 'Válvula de Admissão', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-valvula-escape', name: 'Válvula de Escape', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-comando-valvula', name: 'Eixo Comando de Válvulas', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-correia-dentada', name: 'Correia Dentada / Sincronizadora', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-corrente-distribuicao', name: 'Corrente de Distribuição', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-junta-cabecote', name: 'Junta do Cabeçote', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-carter', name: 'Cárter de Óleo', categoryId: 'cat-motor', position: 'INFERIOR' },
  { id: 'mp-bomba-oleo', name: 'Bomba de Óleo', categoryId: 'cat-motor', position: 'CENTRAL' },

  // 2. Sistema de Arrefecimento
  { id: 'mp-radiador', name: 'Radiador de Água', categoryId: 'cat-arrefecimento', position: 'DIANTEIRO' },
  { id: 'mp-reservatorio-expansao', name: 'Reservatório de Expansão / Água', categoryId: 'cat-arrefecimento', position: 'DIANTEIRO' },
  { id: 'mp-bomba-agua', name: 'Bomba d’Água', categoryId: 'cat-arrefecimento', position: 'CENTRAL' },
  { id: 'mp-valvula-termostatica', name: 'Válvula Termostática com Carcaça', categoryId: 'cat-arrefecimento', position: 'CENTRAL' },
  { id: 'mp-eletroventilador', name: 'Eletroventilador / Ventoinha do Radiador', categoryId: 'cat-arrefecimento', position: 'DIANTEIRO' },
  { id: 'mp-mangueira-radiador', name: 'Mangueira do Radiador', categoryId: 'cat-arrefecimento', position: 'DIANTEIRO' },

  // 3. Freios
  { id: 'mp-disco-freio-diant', name: 'Disco de Freio Dianteiro', categoryId: 'cat-freios', position: 'DIANTEIRO' },
  { id: 'mp-disco-freio-tras', name: 'Disco de Freio Traseiro', categoryId: 'cat-freios', position: 'TRASEIRO' },
  { id: 'mp-pastilha-freio', name: 'Pastilha de Freio', categoryId: 'cat-freios', position: 'AMBOS' },
  { id: 'mp-tambor-freio', name: 'Tambor de Freio', categoryId: 'cat-freios', position: 'TRASEIRO' },
  { id: 'mp-sapata-freio', name: 'Sapata / Lona de Freio', categoryId: 'cat-freios', position: 'TRASEIRO' },
  { id: 'mp-cilindro-mestre', name: 'Cilindro Mestre de Freio', categoryId: 'cat-freios', position: 'DIANTEIRO' },
  { id: 'mp-servofreio', name: 'Servo Freio / Hidrovácuo', categoryId: 'cat-freios', position: 'DIANTEIRO' },
  { id: 'mp-pinca-freio', name: 'Pinça de Freio', categoryId: 'cat-freios', position: 'AMBOS' },
  { id: 'mp-sensor-abs', name: 'Sensor de Velocidade / ABS', categoryId: 'cat-freios', position: 'AMBOS' },

  // 4. Suspensão e Direção
  { id: 'mp-amortecedor-diant', name: 'Amortecedor Dianteiro', categoryId: 'cat-suspensao', position: 'DIANTEIRO' },
  { id: 'mp-amortecedor-tras', name: 'Amortecedor Traseiro', categoryId: 'cat-suspensao', position: 'TRASEIRO' },
  { id: 'mp-mola-suspensao', name: 'Mola Helicoidal / Suspensão', categoryId: 'cat-suspensao', position: 'AMBOS' },
  { id: 'mp-bandeja-suspensao', name: 'Bandeja de Suspensão / Braço Oscilante', categoryId: 'cat-suspensao', position: 'AMBOS' },
  { id: 'mp-pivo-suspensao', name: 'Pivô de Suspensão', categoryId: 'cat-suspensao', position: 'AMBOS' },
  { id: 'mp-bieleta', name: 'Bieleta da Barra Estabilizadora', categoryId: 'cat-suspensao', position: 'AMBOS' },
  { id: 'mp-barra-estabilizadora', name: 'Barra Estabilizadora', categoryId: 'cat-suspensao', position: 'AMBOS' },
  { id: 'mp-caixa-direcao', name: 'Caixa de Direção (Mecânica / Hidráulica / Elétrica)', categoryId: 'cat-suspensao', position: 'DIANTEIRO' },
  { id: 'mp-terminal-direcao', name: 'Terminal de Direção', categoryId: 'cat-suspensao', position: 'AMBOS' },
  { id: 'mp-bomba-direcao', name: 'Bomba de Direção Hidráulica', categoryId: 'cat-suspensao', position: 'DIANTEIRO' },

  // 5. Transmissão e Câmbio
  { id: 'mp-kit-embreagem', name: 'Kit de Embreagem (Platô e Disco)', categoryId: 'cat-transmissao', position: 'CENTRAL' },
  { id: 'mp-atuador-embreagem', name: 'Atuador Hidráulico de Embreagem', categoryId: 'cat-transmissao', position: 'CENTRAL' },
  { id: 'mp-volante-motor', name: 'Volante do Motor / Bi-massa', categoryId: 'cat-transmissao', position: 'CENTRAL' },
  { id: 'mp-cambio-transmissao', name: 'Câmbio / Caixa de Marchas', categoryId: 'cat-transmissao', position: 'CENTRAL' },
  { id: 'mp-semi-eixo', name: 'Semi-eixo de Transmissão', categoryId: 'cat-transmissao', position: 'AMBOS' },
  { id: 'mp-junta-homocinetica', name: 'Junta Homocinética', categoryId: 'cat-transmissao', position: 'AMBOS' },
  { id: 'mp-coxim-cambio', name: 'Coxim do Câmbio', categoryId: 'cat-transmissao', position: 'CENTRAL' },

  // 6. Iluminação e Sistema Elétrico
  { id: 'mp-farol-principal', name: 'Farol Principal', categoryId: 'cat-iluminacao', position: 'DIANTEIRO' },
  { id: 'mp-farol-milha', name: 'Farol de Milha / Neblina', categoryId: 'cat-iluminacao', position: 'DIANTEIRO' },
  { id: 'mp-lanterna-traseira', name: 'Lanterna Traseira', categoryId: 'cat-iluminacao', position: 'TRASEIRO' },
  { id: 'mp-brake-light', name: 'Brake Light / Luz de Freio Elevada', categoryId: 'cat-iluminacao', position: 'TRASEIRO' },
  { id: 'mp-lanterna-placa', name: 'Lanterna de Placa', categoryId: 'cat-iluminacao', position: 'TRASEIRO' },
  { id: 'mp-alternador', name: 'Alternador de Voltagem', categoryId: 'cat-eletrica', position: 'DIANTEIRO' },
  { id: 'mp-motor-partida', name: 'Motor de Partida / Arranque', categoryId: 'cat-eletrica', position: 'CENTRAL' },
  { id: 'mp-bobina-ignicao', name: 'Bobina de Ignição', categoryId: 'cat-eletrica', position: 'CENTRAL' },
  { id: 'mp-vela-ignicao', name: 'Vela de Ignição', categoryId: 'cat-eletrica', position: 'CENTRAL' },
  { id: 'mp-bateria', name: 'Bateria Automotiva', categoryId: 'cat-eletrica', position: 'DIANTEIRO' },

  // 7. Filtros e Injeção
  { id: 'mp-filtro-oleo', name: 'Filtro de Óleo Lubrificante', categoryId: 'cat-filtros', position: 'CENTRAL' },
  { id: 'mp-filtro-ar', name: 'Filtro de Ar do Motor', categoryId: 'cat-filtros', position: 'DIANTEIRO' },
  { id: 'mp-filtro-combustivel', name: 'Filtro de Combustível', categoryId: 'cat-filtros', position: 'INFERIOR' },
  { id: 'mp-filtro-cabine', name: 'Filtro de Cabine / Ar-Condicionado', categoryId: 'cat-filtros', position: 'INTERNO' },
  { id: 'mp-bico-injetor', name: 'Bico Injetor de Combustível', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-bomba-combustivel', name: 'Bomba de Combustível', categoryId: 'cat-motor', position: 'TRASEIRO' },
  { id: 'mp-corpo-borboleta', name: 'Corpo de Borboleta / TBI', categoryId: 'cat-motor', position: 'CENTRAL' },
  { id: 'mp-sonda-lambda', name: 'Sensor de Oxigênio / Sonda Lambda', categoryId: 'cat-motor', position: 'INFERIOR' },

  // 8. Carroceria e Lataria
  { id: 'mp-parachoque-diant', name: 'Para-choque Dianteiro', categoryId: 'cat-lataria', position: 'DIANTEIRO' },
  { id: 'mp-parachoque-tras', name: 'Para-choque Traseiro', categoryId: 'cat-lataria', position: 'TRASEIRO' },
  { id: 'mp-grade-dianteira', name: 'Grade Dianteira / Frontal', categoryId: 'cat-lataria', position: 'DIANTEIRO' },
  { id: 'mp-capo', name: 'Capô do Motor', categoryId: 'cat-lataria', position: 'DIANTEIRO' },
  { id: 'mp-paralama', name: 'Para-lama', categoryId: 'cat-lataria', position: 'DIANTEIRO' },
  { id: 'mp-retrovisor-ext', name: 'Retrovisor Externo Completo', categoryId: 'cat-lataria', position: 'AMBOS' },
  { id: 'mp-tampa-portamalas', name: 'Tampa do Porta-Malas', categoryId: 'cat-lataria', position: 'TRASEIRO' },
  { id: 'mp-porta-lateral', name: 'Porta Lateral', categoryId: 'cat-lataria', position: 'AMBOS' },
  { id: 'mp-parabrisa', name: 'Para-brisa Dianteiro', categoryId: 'cat-lataria', position: 'DIANTEIRO' },

  // 9. Climatização / Ar-Condicionado
  { id: 'mp-compressor-ar', name: 'Compressor do Ar-Condicionado', categoryId: 'cat-climatizacao', position: 'DIANTEIRO' },
  { id: 'mp-condensador-ar', name: 'Condensador do Ar-Condicionado', categoryId: 'cat-climatizacao', position: 'DIANTEIRO' },
  { id: 'mp-evaporador-ar', name: 'Evaporador do Ar-Condicionado', categoryId: 'cat-climatizacao', position: 'INTERNO' }
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

export function seedCestMasterParts(dbPath: string) {
  const db = new Database(dbPath);

  const tableCheck = db.prepare(`SELECT name FROM sqlite_master WHERE type='table' AND name='master_parts'`).get();
  if (!tableCheck) {
    db.close();
    return;
  }

  console.log(`\n====================================================================`);
  console.log(`🌱 EXECUÇÃO DO SEED CEST 01 (AUTOPEÇAS CANÔNICAS):`);
  console.log(`📁 Banco Local: ${dbPath}`);
  console.log(`====================================================================\n`);

  db.pragma("foreign_keys = OFF");

  let categoriesEnsured = 0;
  let partsInserted = 0;

  try {
    // 1. Mapeia categorias existentes por slug
    const existingCats = db.prepare(`SELECT id, slug FROM categories`).all() as { id: string; slug: string }[];
    const catMapBySlug = new Map<string, string>();
    existingCats.forEach((c) => catMapBySlug.set(c.slug.toLowerCase(), c.id));

    const insertCatStmt = db.prepare(`
      INSERT INTO categories (id, name, slug, icon, created_at)
      VALUES (?, ?, ?, ?, ?)
      ON CONFLICT(slug) DO UPDATE SET name = excluded.name, icon = excluded.icon
    `);

    const now = Date.now();
    for (const cat of CEST_CATEGORIES) {
      insertCatStmt.run(cat.id, cat.name, cat.slug, cat.icon, now);
      categoriesEnsured++;
    }

    // Recarrega o mapa de categorias atualizado
    const updatedCats = db.prepare(`SELECT id, slug FROM categories`).all() as { id: string; slug: string }[];
    updatedCats.forEach((c) => catMapBySlug.set(c.slug.toLowerCase(), c.id));

    console.log(`✅ Step 1: ${categoriesEnsured} Categorias CEST 01 garantidas com sucesso.`);

    // 2. Inserção das Peças Mestre Canônicas (master_parts)
    const insertPartStmt = db.prepare(`
      INSERT INTO master_parts (id, name, manufacturer, manufacturer_code, category_id, position, created_at, updated_at)
      VALUES (?, ?, 'Original', ?, ?, ?, ?, ?)
      ON CONFLICT(id) DO UPDATE SET 
        name = excluded.name,
        category_id = excluded.category_id,
        position = excluded.position,
        updated_at = excluded.updated_at
    `);

    for (const part of CEST_PARTS) {
      // Resolve o categoryId correto
      const targetSlug = part.categoryId.replace("cat-", "");
      const resolvedCatId = catMapBySlug.get(targetSlug) || catMapBySlug.get("motor") || part.categoryId;
      const oemCode = `CEST-${part.id.toUpperCase()}`;

      insertPartStmt.run(part.id, part.name, oemCode, resolvedCatId, part.position, now, now);
      partsInserted++;
    }
    console.log(`✅ Step 2: ${partsInserted} Peças Mestre Canônicas do Segmento CEST 01 gravadas.`);

    // 3. Contagem Total Final de Peças no D1
    const totalParts = db.prepare(`SELECT COUNT(*) as total FROM master_parts`).get() as { total: number };
    const totalCats = db.prepare(`SELECT COUNT(*) as total FROM categories`).get() as { total: number };

    console.log(`\n====================================================================`);
    console.log(`📊 RELATÓRIO FINAL DO SEED CEST 01 DO D1 LOCAL:`);
    console.log(`====================================================================`);
    console.log(`- Categorias Ativas: ${totalCats.total}`);
    console.log(`- Peças Mestre Canônicas CEST 01 Gravadas: ${partsInserted}`);
    console.log(`- TOTAL DE PEÇAS MESTRE CANÔNICAS ATIVAS NO D1: ${totalParts.total}`);
    console.log(`====================================================================\n`);

  } catch (err) {
    console.error("Erro na execução do Seed CEST 01:", err);
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
    seedCestMasterParts(file);
  }
}

if (require.main === module) {
  main();
}
