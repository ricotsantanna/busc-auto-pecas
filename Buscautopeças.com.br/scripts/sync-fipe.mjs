import { mkdir, writeFile } from "node:fs/promises";
import { resolve } from "node:path";

const API_URL = (process.env.FIPE_API_URL || "https://api.apifipe.com.br").replace(/\/$/, "");
const API_KEY = process.env.FIPE_API_KEY;
const outputDir = resolve("data/fipe");
const args = new Set(process.argv.slice(2));

const PRIORITY_BRANDS = [
  "CHEVROLET", "FIAT", "FORD", "HONDA", "HYUNDAI", "JEEP", "KIA MOTORS",
  "MERCEDES-BENZ", "MITSUBISHI", "NISSAN", "PEUGEOT", "RENAULT",
  "TOYOTA", "VOLKSWAGEN", "CITROEN",
];

if (!API_KEY) {
  console.error("FIPE_API_KEY não configurada. Copie .env.example para .env.local.");
  process.exit(1);
}

function normalize(value = "") {
  return value.normalize("NFD").replace(/\p{Diacritic}/gu, "")
    .trim().replace(/\s+/g, " ").toUpperCase();
}

function field(record, ...names) {
  for (const name of names) {
    if (record?.[name] !== undefined) return record[name];
  }
}

async function request(path) {
  const response = await fetch(`${API_URL}${path}`, {
    headers: { Authorization: `Bearer ${API_KEY}`, Accept: "application/json" },
  });
  if (!response.ok) {
    throw new Error(`API FIPE ${response.status} em ${path}: ${await response.text()}`);
  }
  return response.json();
}

function csv(rows, columns) {
  const escape = (value) => {
    if (value === undefined || value === null) return "";
    const text = String(value);
    return /[",\r\n]/.test(text) ? `"${text.replaceAll('"', '""')}"` : text;
  };
  return `${columns.join(",")}\n${rows
    .map((row) => columns.map((column) => escape(row[column])).join(","))
    .join("\n")}\n`;
}

const allBrands = await request("/carros");
const priority = args.has("--all")
  ? allBrands
  : allBrands.filter((brand) =>
      PRIORITY_BRANDS.includes(normalize(field(brand, "nome", "name"))));

const models = [];
const variants = [];
let requests = 1;

for (const brand of priority) {
  const brandCode = field(brand, "codigo", "code", "codMarca");
  const brandName = field(brand, "nome", "name", "nomeMarca");
  const brandModels = await request(`/carros/${brandCode}`);
  requests++;

  for (const model of brandModels) {
    const modelCode = field(model, "codigo", "code", "codModelo");
    const modelName = field(model, "nome", "name", "nomeModelo");
    models.push({
      brand_code: brandCode, brand_name: brandName,
      model_code: modelCode, model_name: modelName,
    });

    const years = await request(`/carros/${brandCode}/${modelCode}`);
    requests++;
    for (const year of years) {
      const yearCode = field(year, "codigo", "code", "codAno");
      const yearName = field(year, "nome", "name");
      const match = String(yearName ?? yearCode).match(/(\d{4}|32000)(?:\s+(.+))?/);
      variants.push({
        brand_code: brandCode,
        brand_name: brandName,
        model_code: modelCode,
        model_name: modelName,
        year_code: yearCode,
        model_year: match?.[1] === "32000" ? 0 : match?.[1] || "",
        fuel_type: match?.[2] || "",
      });
    }
  }
}

await mkdir(outputDir, { recursive: true });
await Promise.all([
  writeFile(resolve(outputDir, "brands.json"), JSON.stringify(priority, null, 2) + "\n"),
  writeFile(resolve(outputDir, "models.csv"), csv(models,
    ["brand_code", "brand_name", "model_code", "model_name"])),
  writeFile(resolve(outputDir, "variants.csv"), csv(variants, [
    "brand_code", "brand_name", "model_code", "model_name",
    "year_code", "model_year", "fuel_type",
  ])),
  writeFile(resolve(outputDir, "sync-report.json"), JSON.stringify({
    provider: "apifipe.com.br",
    syncedAt: new Date().toISOString(),
    mode: args.has("--all") ? "all" : "priority-brands",
    requests,
    brands: priority.length,
    models: models.length,
    variants: variants.length,
  }, null, 2) + "\n"),
]);

console.log(JSON.stringify({
  requests,
  brands: priority.length,
  models: models.length,
  variants: variants.length,
}, null, 2));

