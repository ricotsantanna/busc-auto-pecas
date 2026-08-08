const fs = require('fs');
const readline = require('readline');
const path = require('path');

function slugify(text) {
  return text
    .toString()
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)+/g, "");
}

async function processCSV() {
  const csvPath = path.join(__dirname, '..', '..', '..', 'fipex-prices-latest-merged.csv');
  const sqlOutPath = path.join(__dirname, '..', 'seed-fipex-full.sql');
  
  if (!fs.existsSync(csvPath)) {
    console.error('File not found:', csvPath);
    return;
  }

  const fileStream = fs.createReadStream(csvPath);
  const rl = readline.createInterface({ input: fileStream, crlfDelay: Infinity });

  let first = true;
  
  const brandsMap = new Map();
  const modelsMap = new Map();
  const versionsMap = new Map();

  console.log("Reading CSV and extracting unique data...");
  let count = 0;

  for await (const line of rl) {
    if (first) { first = false; continue; } // skip header
    const parts = line.split('\t');
    if (parts.length < 7) continue;
    
    count++;
    if (count % 1000000 === 0) console.log(`Processed ${count} lines...`);
    
    // 0: tipo_veiculo, 1: codigo_fipe, 2: nome_modelo, 3: nome_marca, 4: nome_combustivel, 5: sigla_combustivel, 6: ano_modelo
    const tipo_veiculo = parts[0];
    const codigo_fipe = parts[1];
    const nome_modelo = parts[2].replace(/'/g, "''");
    const nome_marca = parts[3].replace(/'/g, "''");
    const nome_combustivel = parts[4];
    const ano_modelo = parts[6];
    
    let finalType = 'carro';
    if (tipo_veiculo === 'carro') {
      finalType = (nome_combustivel === 'Elétrico') ? 'eletrico' : 'carro';
    } else if (tipo_veiculo === 'moto') {
      finalType = (nome_combustivel === 'Elétrico') ? 'autopropelido' : 'moto';
    } else if (tipo_veiculo === 'caminhão' || tipo_veiculo === 'caminhao') {
      finalType = 'caminhao';
    } else {
      finalType = slugify(tipo_veiculo);
    }
    
    let anoInt = parseInt(ano_modelo) || 0;
    if (ano_modelo === '32000' || isNaN(anoInt)) anoInt = 2025; // Zero KM
    
    // IDs
    const brandSlug = slugify(nome_marca) + '-' + finalType;
    const brandId = `b-${brandSlug}`;
    
    // Separate 'modelo' into shortModel and versionDesc
    const modeloParts = nome_modelo.split(' ');
    const shortModel = modeloParts[0];
    const versionDesc = modeloParts.slice(1).join(' ').trim() || 'N/D';
    
    const modelSlug = slugify(shortModel);
    const modelId = `m-${modelSlug}-${brandId}`;
    
    // Version
    const versionId = `v-${codigo_fipe}-${modelId}-${anoInt}`;
    
    if (!versionsMap.has(versionId)) {
      if (!brandsMap.has(brandId)) {
        brandsMap.set(brandId, `INSERT OR IGNORE INTO brands (id, name, slug, vehicle_type) VALUES ('${brandId}', '${nome_marca}', '${brandSlug}', '${finalType}');`);
      }
      if (!modelsMap.has(modelId)) {
        modelsMap.set(modelId, `INSERT OR IGNORE INTO car_models (id, brand_id, name, slug) VALUES ('${modelId}', '${brandId}', '${shortModel}', '${modelSlug}');`);
      }
      versionsMap.set(versionId, `INSERT OR IGNORE INTO car_versions (id, model_id, year, version_name, engine) VALUES ('${versionId}', '${modelId}', ${anoInt}, '${versionDesc}', '${nome_combustivel}');`);
    }
  }

  console.log(`Extracted: ${brandsMap.size} Brands, ${modelsMap.size} Models, ${versionsMap.size} Versions.`);
  console.log("Generating SQL file...");

  const outStream = fs.createWriteStream(sqlOutPath);
  
  function writeChunk(arr) {
    if (arr.length === 0) return;
    for(const sql of arr) {
      outStream.write(sql + '\n');
    }
  }

  writeChunk(Array.from(brandsMap.values()));
  writeChunk(Array.from(modelsMap.values()));
  writeChunk(Array.from(versionsMap.values()));

  outStream.end();
  console.log("SQL file generated: seed-fipex-full.sql");
}

processCSV().catch(console.error);
