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
  const csvPath = path.join(__dirname, '..', '..', '..', 'tabela-fipe-historico-precos.csv');
  const sqlOutPath = path.join(__dirname, '..', 'seed-fipe-full.sql');
  
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

  for await (const line of rl) {
    if (first) { first = false; continue; } // skip header
    const parts = line.split(',');
    if (parts.length < 8) continue;
    
    // index,codigoFipe,marca,modelo,anoModelo,mesReferencia,anoReferencia,valor
    const fipe = parts[1];
    const marcaOriginal = parts[2];
    const marca = marcaOriginal.replace(/'/g, "''");
    
    const modeloOriginal = parts.slice(3, parts.length - 4).join(',');
    const modelo = modeloOriginal.replace(/'/g, "''");
    
    let anoModelo = parts[parts.length - 4];
    if (anoModelo === '32000') anoModelo = '2025'; // 32000 in FIPE usually means 'Zero KM'
    const anoInt = parseInt(anoModelo) || 0;
    
    // Generate IDs and slugs
    const brandSlug = slugify(marcaOriginal) + '-carro';
    const brandId = `b-${brandSlug}`;
    
    // Separate 'modelo' into shortModel and versionDesc
    const modeloParts = modelo.split(' ');
    const shortModel = modeloParts[0];
    const versionDesc = modeloParts.slice(1).join(' ').trim() || 'N/D';

    // Model Slug and ID
    const modelSlug = slugify(shortModel);
    const modelId = `m-${modelSlug}-${brandId}`;

    if (!brandsMap.has(brandId)) {
      brandsMap.set(brandId, `INSERT OR IGNORE INTO brands (id, name, slug, vehicle_type) VALUES ('${brandId}', '${marca}', '${brandSlug}', 'carro');`);
    }

    if (!modelsMap.has(modelId)) {
      modelsMap.set(modelId, `INSERT OR IGNORE INTO car_models (id, brand_id, name, slug) VALUES ('${modelId}', '${brandId}', '${shortModel}', '${modelSlug}');`);
    }

    // Version ID
    const versionSlug = slugify(versionDesc);
    const versionId = `v-${fipe}-${modelId}-${anoInt}`;

    if (!versionsMap.has(versionId)) {
      versionsMap.set(versionId, `INSERT OR IGNORE INTO car_versions (id, model_id, year, version_name, engine) VALUES ('${versionId}', '${modelId}', ${anoInt}, '${versionDesc}', 'N/D');`);
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

  // Need to insert in order due to foreign keys
  writeChunk(Array.from(brandsMap.values()));
  writeChunk(Array.from(modelsMap.values()));
  writeChunk(Array.from(versionsMap.values()));

  outStream.end();
  
  outStream.on('finish', () => {
     console.log(`SQL File generated successfully: ${sqlOutPath}`);
  });
}

processCSV().catch(console.error);
