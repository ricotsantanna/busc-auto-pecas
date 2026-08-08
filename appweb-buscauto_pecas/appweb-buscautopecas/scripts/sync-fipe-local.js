import fs from 'fs';

const BASE_URL = "https://parallelum.com.br/fipe/api/v1";
const TARGET_BRANDS = ["fiat", "chevrolet", "vw", "ford", "toyota", "honda", "yamaha"]; // Let's fetch just these top ones to save time and API rate limits

function slugify(text) {
  return text
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)+/g, "");
}

const delay = (ms) => new Promise(res => setTimeout(res, ms));

async function fetchJson(url) {
  let retries = 3;
  while (retries > 0) {
    try {
      console.log(`Fetching: ${url}`);
      const response = await fetch(url, { headers: { "User-Agent": "BuscAutoLocalScript/1.0" } });
      if (!response.ok) throw new Error(`HTTP ${response.status}`);
      return await response.json();
    } catch (error) {
      console.error(`Error fetching ${url}: ${error.message}. Retrying...`);
      await delay(2000);
      retries--;
    }
  }
  return null;
}

async function main() {
  const sqlStatements = [];
  
  for (const vType of ["carros", "motos"]) {
    const typeLabel = vType === "carros" ? "carro" : "moto";
    
    const marcas = await fetchJson(`${BASE_URL}/${vType}/marcas`);
    if (!marcas) continue;

    for (const marca of marcas) {
      // Only process our top target brands to save time
      const isTarget = TARGET_BRANDS.some(tb => marca.nome.toLowerCase().includes(tb));
      if (!isTarget) continue;

      const brandSlug = slugify(marca.nome) + "-" + typeLabel;
      const brandId = `b-${marca.codigo}-${typeLabel}`;

      sqlStatements.push(`INSERT INTO brands (id, name, slug, vehicle_type) VALUES ('${brandId}', '${marca.nome.replace(/'/g, "''")}', '${brandSlug}', '${typeLabel}') ON CONFLICT DO NOTHING;`);

      const modelosData = await fetchJson(`${BASE_URL}/${vType}/marcas/${marca.codigo}/modelos`);
      await delay(500); // respect rate limits
      
      if (modelosData && modelosData.modelos) {
        for (const modelo of modelosData.modelos) {
          const modelSlug = slugify(modelo.nome) + "-" + typeLabel;
          const modelId = `m-${modelo.codigo}-${typeLabel}`;

          sqlStatements.push(`INSERT INTO car_models (id, brand_id, name, slug) VALUES ('${modelId}', '${brandId}', '${modelo.nome.replace(/'/g, "''")}', '${modelSlug}') ON CONFLICT DO NOTHING;`);
          
          // We could fetch versions here, but for now let's just get Brands and Models to make it fast
          // The search just needs the model to work for most things.
        }
      }
    }
  }

  const sqlContent = sqlStatements.join("\n");
  fs.writeFileSync("drizzle/fipe-local-seed.sql", sqlContent);
  console.log("Gerado drizzle/fipe-local-seed.sql com sucesso!");
}

main().catch(console.error);
