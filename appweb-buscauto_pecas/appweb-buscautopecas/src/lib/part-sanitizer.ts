// src/lib/part-sanitizer.ts — Utilitário de Saneamento e Limpeza de Nomes de Peças Automotivas

const BRAND_NOISE = [
  "VOLVO FH", "VOLVO FM", "VOLVO NH", "VOLVO",
  "SCANIA D124", "SCANIA113", "SCANIA112", "SCANIA",
  "MERCEDES-BENZ", "MERCEDES BENZ", "MECEDES", "MB",
  "CHEVROLET", "CHEVR", "GM", "VW", "VOLKSWAGEN", "FIAT", "FORD",
  "AUDI", "BMW", "TOYOTA", "HONDA", "HYUNDAI", "RENAULT", "NISSAN",
  "JEEP", "PEUGEOT", "CITROEN", "MITSUBISHI", "CHERY", "BYD", "HAVAL", "SUZUKI"
];

const MODEL_NOISE = [
  "FH12", "FH13", "FH440", "FH460", "FH500", "FH", "FM12", "FM", "D124", "P94", "R113", "T113",
  "GOL", "PALIO", "CORSA", "UNO", "CELTA", "CIVIC", "COROLLA", "FIT", "KA", "FIESTA", "FOCUS",
  "ECOSPORT", "SAVEIRO", "STRADA", "HILUX", "AMAROK", "RANGER", "S10", "SPIN", "ONIX", "PRISMA",
  "COBALT", "CRUZE", "TRACKER", "EQUINOX", "MONTANA", "ASTRA", "VECTRA", "ZAFIRA", "MERIVA",
  "KADETT", "MONZA", "CHEVETTE", "A3", "A4", "A5", "Q3", "Q5", "320I", "325I", "528I", "X1", "X3", "X5"
];

const SIDE_NOISE = [
  "LADO DIREITO", "LADO ESQUERDO", "L/D", "L/E", "L.D.", "L.E.", "LD", "LE", "LH", "RH"
];

export function cleanMasterPartTitle(rawName: string): string {
  if (!rawName) return "";

  let clean = rawName.trim();

  // Remove marcas de veículos e caminhões conhecidas do título mestre
  for (const b of BRAND_NOISE) {
    const regex = new RegExp(`\\b${b}\\b`, "gi");
    clean = clean.replace(regex, "");
  }

  // Remove modelos conhecidos
  for (const m of MODEL_NOISE) {
    const regex = new RegExp(`\\b${m}\\b`, "gi");
    clean = clean.replace(regex, "");
  }

  // Remove indicações de lado e posição
  for (const s of SIDE_NOISE) {
    const regex = new RegExp(`\\b${s}\\b`, "gi");
    clean = clean.replace(regex, "");
  }

  // Limpa hífens soltos, barras e múltiplos espaços
  clean = clean
    .replace(/\s+-\s+/g, " ")
    .replace(/[/\\-]$/g, "")
    .replace(/^[/\\-]\s*/g, "")
    .replace(/\s+/g, " ")
    .trim();

  // Se a limpeza zerou a string, devolve o nome original
  if (!clean || clean.length < 3) {
    return rawName.trim();
  }

  // Formata em Title Case
  return clean
    .split(" ")
    .map((word) => {
      if (word.length <= 3 && ["de", "da", "do", "dos", "das", "e", "para", "com"].includes(word.toLowerCase())) {
        return word.toLowerCase();
      }
      return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
    })
    .join(" ");
}
