import { mkdir, readFile, writeFile } from "node:fs/promises";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const input = resolve(root, "data/raw/brazilian-cars.sql");
const output = resolve(root, "data/normalized");

function normalize(value) {
  return value
    .normalize("NFD")
    .replace(/\p{Diacritic}/gu, "")
    .trim()
    .replace(/\s+/g, " ")
    .toUpperCase();
}

function parseValue(text, state) {
  while (/\s/.test(text[state.i])) state.i++;
  if (text[state.i] === "'") {
    state.i++;
    let value = "";
    while (state.i < text.length) {
      if (text[state.i] === "'" && text[state.i + 1] === "'") {
        value += "'";
        state.i += 2;
      } else if (text[state.i] === "\\") {
        state.i++;
        value += text[state.i++] ?? "";
      } else if (text[state.i] === "'") {
        state.i++;
        return value;
      } else {
        value += text[state.i++];
      }
    }
  }
  const start = state.i;
  while (![",", ")"].includes(text[state.i])) state.i++;
  const value = text.slice(start, state.i).trim();
  return value === "NULL" ? null : value;
}

function parseRows(sql) {
  const marker = "INSERT INTO `bc_vehicle` VALUES ";
  const rows = [];
  let cursor = 0;
  while ((cursor = sql.indexOf(marker, cursor)) !== -1) {
    const end = sql.indexOf(";\n", cursor);
    const text = sql.slice(cursor + marker.length, end === -1 ? sql.length : end);
    const state = { i: 0 };
    while (state.i < text.length) {
      while (text[state.i] !== "(" && state.i < text.length) state.i++;
      if (state.i >= text.length) break;
      state.i++;
      const row = [];
      while (state.i < text.length && text[state.i] !== ")") {
        row.push(parseValue(text, state));
        if (text[state.i] === ",") state.i++;
      }
      state.i++;
      if (row.length >= 9) rows.push(row);
    }
    cursor = end === -1 ? sql.length : end + 2;
  }
  return rows;
}

function csv(rows, columns) {
  const escape = (value) => {
    if (value === null || value === undefined) return "";
    const text = String(value);
    return /[",\r\n]/.test(text) ? `"${text.replaceAll('"', '""')}"` : text;
  };
  return [
    columns.join(","),
    ...rows.map((row) => columns.map((column) => escape(row[column])).join(",")),
  ].join("\n") + "\n";
}

const sql = await readFile(input, "utf8");
const sourceRows = parseRows(sql);

const manufacturers = new Map();
const models = new Map();
const variants = new Map();

for (const row of sourceRows) {
  const [
    sourceId, variantName, sourceCode, family, manufacturer,
    manufacturerSourceId, modelYear, modelSourceId, fuelType,
  ] = row;
  const manufacturerKey = normalize(manufacturer);
  if (!manufacturers.has(manufacturerKey)) {
    manufacturers.set(manufacturerKey, {
      import_id: manufacturers.size + 1,
      name: manufacturer.trim(),
      normalized_name: manufacturerKey,
      source_key: manufacturerSourceId,
    });
  }

  const manufacturerRow = manufacturers.get(manufacturerKey);
  const modelKey = `${manufacturerKey}|${normalize(family)}`;
  if (!models.has(modelKey)) {
    models.set(modelKey, {
      import_id: models.size + 1,
      manufacturer_import_id: manufacturerRow.import_id,
      name: family.trim(),
      normalized_name: normalize(family),
      source_key: modelSourceId,
    });
  }

  const modelRow = models.get(modelKey);
  const variantKey = [
    modelRow.import_id, normalize(variantName), modelYear, normalize(fuelType ?? ""),
  ].join("|");
  if (!variants.has(variantKey)) {
    variants.set(variantKey, {
      import_id: variants.size + 1,
      model_import_id: modelRow.import_id,
      name: variantName.trim(),
      normalized_name: normalize(variantName),
      model_year: Number(modelYear),
      fuel_type: fuelType,
      engine: variantName.match(/\b\d+\.\d+\b/)?.[0] ?? "",
      source_key: sourceCode || sourceId,
    });
  }
}

await mkdir(output, { recursive: true });
await Promise.all([
  writeFile(resolve(output, "manufacturers.csv"), csv([...manufacturers.values()], [
    "import_id", "name", "normalized_name", "source_key",
  ])),
  writeFile(resolve(output, "vehicle_models.csv"), csv([...models.values()], [
    "import_id", "manufacturer_import_id", "name", "normalized_name", "source_key",
  ])),
  writeFile(resolve(output, "vehicle_variants.csv"), csv([...variants.values()], [
    "import_id", "model_import_id", "name", "normalized_name", "model_year",
    "fuel_type", "engine", "source_key",
  ])),
  writeFile(resolve(output, "import-report.json"), JSON.stringify({
    source: "gpupo/brazilian-cars",
    sourceUrl: "https://github.com/gpupo/brazilian-cars",
    license: "MIT",
    sourceStatus: "archived",
    sourceDataObservedAt: "2019-02-05",
    generatedAt: new Date().toISOString(),
    sourceRows: sourceRows.length,
    manufacturers: manufacturers.size,
    models: models.size,
    variants: variants.size,
  }, null, 2) + "\n"),
]);

console.log(JSON.stringify({
  sourceRows: sourceRows.length,
  manufacturers: manufacturers.size,
  models: models.size,
  variants: variants.size,
}, null, 2));

