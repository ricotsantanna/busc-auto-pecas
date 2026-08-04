import fs from "fs";
import { crypto } from "../lib/crypto-polyfill";

const BASE_URL = "https://parallelum.com.br/fipe/api/v1";

// Para evitar bloqueios na API, vamos colocar um delay entre as chamadas
const delay = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

async function fetchJson(url: string) {
  let retries = 3;
  while (retries > 0) {
    try {
      const response = await fetch(url);
      if (!response.ok) throw new Error(`HTTP ${response.status}`);
      return await response.json();
    } catch (error) {
      console.log(`Erro ao buscar ${url}. Tentando novamente em 2s...`);
      await delay(2000);
      retries--;
    }
  }
  return null;
}

function slugify(text: string) {
  return text.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "").replace(/[^a-z0-9]+/g, "-").replace(/(^-|-$)+/g, "");
}

function escapeSql(text: string) {
  return text.replace(/'/g, "''");
}

let sqlQueries = `
-- Carga Inicial da Tabela FIPE (Carros e Motos)
`;

async function syncVehicleType(vehicleType: "carros" | "motos", targetBrands: string[]) {
  console.log(`\n=== Iniciando Sincronização de ${vehicleType.toUpperCase()} ===`);
  const typeLabel = vehicleType === "carros" ? "carro" : "moto";
  
  const marcas = await fetchJson(`${BASE_URL}/${vehicleType}/marcas`);
  if (!marcas) return;

  const filteredMarcas = marcas.filter((m: any) => targetBrands.map(b => b.toLowerCase()).includes(m.nome.toLowerCase()));

  for (const marca of filteredMarcas) {
    console.log(`\n[+] Processando Marca: ${marca.nome}`);
    const brandSlug = slugify(marca.nome) + "-" + typeLabel;
    const brandId = crypto.randomUUID();
    
    sqlQueries += `INSERT INTO brands (id, name, slug, vehicle_type) VALUES ('${brandId}', '${escapeSql(marca.nome)}', '${brandSlug}', '${typeLabel}') ON CONFLICT DO NOTHING;\n`;

    const modelosData = await fetchJson(`${BASE_URL}/${vehicleType}/marcas/${marca.codigo}/modelos`);
    if (!modelosData || !modelosData.modelos) continue;
    
    for (const modelo of modelosData.modelos) {
      const modelSlug = slugify(modelo.nome) + "-" + typeLabel;
      const modelId = crypto.randomUUID();
      
      // Need a subquery to get the actual brandId in case it was skipped by ON CONFLICT DO NOTHING
      sqlQueries += `INSERT INTO car_models (id, brand_id, name, slug) VALUES ('${modelId}', (SELECT id FROM brands WHERE slug = '${brandSlug}'), '${escapeSql(modelo.nome)}', '${modelSlug}') ON CONFLICT DO NOTHING;\n`;

      const anosData = await fetchJson(`${BASE_URL}/${vehicleType}/marcas/${marca.codigo}/modelos/${modelo.codigo}/anos`);
      if (!anosData) continue;

      for (const ano of anosData) {
        const yearPart = ano.codigo.split("-")[0];
        const isZeroKm = yearPart === "32000";
        const yearNum = isZeroKm ? new Date().getFullYear() : parseInt(yearPart, 10);
        const fuelType = ano.nome.split(" ").slice(1).join(" ") || "N/A";
        const versionId = crypto.randomUUID();

        sqlQueries += `INSERT INTO car_versions (id, model_id, name, year, fuel_type) VALUES ('${versionId}', (SELECT id FROM car_models WHERE slug = '${modelSlug}'), '${escapeSql(ano.nome)}', ${yearNum}, '${escapeSql(fuelType)}') ON CONFLICT DO NOTHING;\n`;
      }
      
      console.log(`  -> Modelo ${modelo.nome} salvo com ${anosData.length} versões.`);
      await delay(500); // Pausa gentil para a API
    }
  }
}

async function main() {
  // Principais marcas (reduzido para dev mais rápido, pode ser expandido depois)
  const topCarros = ["Fiat", "Chevrolet", "Volkswagen", "Ford", "Toyota", "Honda"];
  const topMotos = ["Honda", "Yamaha", "Suzuki", "Kawasaki"];
  
  await syncVehicleType("carros", topCarros);
  await syncVehicleType("motos", topMotos);

  fs.writeFileSync("drizzle/seed-fipe.sql", sqlQueries);
  console.log("\n✅ Arquivo drizzle/seed-fipe.sql gerado com sucesso! Rode 'npx wrangler d1 execute ...' para aplicar.");
}

main().catch(console.error);
