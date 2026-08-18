// src/lib/part-sanitizer.ts — Utilitário Avançado de Saneamento e Limpeza de Nomes de Peças Automotivas

// Marcas/Montadoras de carros, caminhões e motos para remoção do nome da peça
const BRAND_NOISE = [
  "VOLVO FH", "VOLVO FM", "VOLVO NH", "VOLVO",
  "SCANIA D124", "SCANIA113", "SCANIA112", "SCANIA",
  "MERCEDES-BENZ", "MERCEDES BENZ", "MECEDES", "MB",
  "CHEVROLET", "CHEVR", "GM", "VW", "VOLKSWAGEN", "FIAT", "FORD",
  "AUDI", "BMW", "TOYOTA", "HONDA", "HYUNDAI", "RENAULT", "NISSAN",
  "JEEP", "PEUGEOT", "CITROEN", "CITROËN", "MITSUBISHI", "CHERY", "BYD", "HAVAL",
  "YAMAHA", "SUZUKI", "KAWASAKI", "DUCATI", "BMW MOTO", "TRIUMPH", "SHINERAY", "HAOJUE"
];

// Modelos de carros, utilitários, caminhões e motos para remoção do nome mestre
const MODEL_NOISE = [
  // Motos
  "FACTOR", "FAZER", "YBR125", "YBR", "XTZ125", "XTZ250", "XTZ", "XT660", "XT660R", "XT", "LANDER250", "LANDER", "CROSSER", "NMAX", "XMAX",
  "TITAN150", "TITAN160", "TITAN125", "TITAN", "FAN125", "FAN150", "FAN160", "FAN", "BROS150", "BROS160", "BROS", "NXR",
  "BIZ100", "BIZ125", "BIZ", "TWISTER", "CBX250", "CBX", "CB300R", "CB300", "CB250F", "CB500", "XRE300", "XRE190", "XRE",
  "FALCON", "NX400", "CG125", "CG150", "CG160", "CG", "PCX", "BURGMAN", "POP100", "POP110", "SCOOTER",
  "CBR1000RR", "CBR1000", "CBR600RR", "CBR600", "CBR250", "CBR", "HORNET", "XJ6", "NINJA300", "NINJA250", "NINJA", "Z750", "Z800", "Z900",
  // Carros e Utilitários
  "FH12", "FH13", "FH440", "FH460", "FH500", "FH", "FM12", "FM", "D124", "P94", "R113", "T113",
  "C3", "C4", "C5", "AIRCROSS", "FIORINO", "PALIO", "UNO", "GOL", "CELTA", "CORSA", "CIVIC", "COROLLA", "FIT", "KA", "FIESTA", "FOCUS",
  "ECOSPORT", "SAVEIRO", "STRADA", "HILUX", "AMAROK", "RANGER", "S10", "SPIN", "ONIX", "PRISMA", "COBALT", "CRUZE", "TRACKER", "EQUINOX",
  "MONTANA", "ASTRA", "VECTRA", "ZAFIRA", "MERIVA", "KADETT", "MONZA", "CHEVETTE", "KWID", "SANDERO", "DUSTER", "LOGAN", "ARGO", "MOBI",
  "TORO", "CRONOS", "RENEGADE", "COMPASS", "CRETA", "HB20", "IX35", "TUCSON", "SANTA FE", "AZERA", "ELANTRA", "KICKS", "VERSA", "MARCH", "208", "308", "2008", "HRV", "WRV", "WR-V",
  "A3", "A4", "A5", "Q3", "Q5", "320I", "325I", "528I", "X1", "X3", "X5"
];

// Termos de posição e lados para remoção das sugestões de autocomplete
const SIDE_NOISE = [
  "LADO DIREITO", "LADO ESQUERDO", "L/D", "L/E", "L.D.", "L.E.", "LD", "LE", "LH", "RH",
  "PASSAGEIRO", "MOTORISTA", "DIREITO", "ESQUERDO", "PAR / AMBOS OS LADOS", "AMBOS OS LADOS"
];

// Marcas/Modelos de motos para filtragem cruzada de segmento
export const MOTORCYCLE_BRANDS_MODELS = [
  "yamaha", "factor", "fazer", "ybr", "xtz", "xt660", "lander", "crosser", "nmax", "xmax",
  "titan", "fan", "bros", "biz", "twister", "cbx", "cb300", "xre", "falcon", "cg125", "cg150", "cg160", "cg",
  "burgman", "pop100", "pop110", "suzuki moto", "kawasaki", "ducati", "triumph", "shineray", "haojue",
  "cbr", "cbr1000", "cbr1000rr", "cbr600", "cbr600rr", "hornet", "xj6", "ninja", "z750", "z800", "z900", "scooter", "pcx", "lead", "neo"
];

export function cleanMasterPartTitle(rawName: string): string {
  if (!rawName) return "";

  let clean = rawName.trim();

  // Remove modelos com barras combinados (ex: Factor/xtz/ybr125 00, Fazer/lander250 06, Fazer250/xt660 09-11)
  clean = clean.replace(/\b[A-Za-z0-9]+(?:\/[A-Za-z0-9]+)+(?:\s+\d{2}(?:-\d{2})?)?\b/gi, "");

  // Remove marcas de veículos conhecidas do título mestre
  for (const b of BRAND_NOISE) {
    const regex = new RegExp(`\\b${b}\\b`, "gi");
    clean = clean.replace(regex, "");
  }

  // Remove modelos de veículos conhecidos do título mestre
  for (const m of MODEL_NOISE) {
    const regex = new RegExp(`\\b${m}\\b`, "gi");
    clean = clean.replace(regex, "");
  }

  // Remove indicações de lado e posição do título da sugestão
  for (const s of SIDE_NOISE) {
    const regex = new RegExp(`\\b${s}\\b`, "gi");
    clean = clean.replace(regex, "");
  }

  // Remove códigos de ano isolados no final (ex: 00, 06, 14, 09-11)
  clean = clean.replace(/\b\d{2}(?:-\d{2})?\b$/g, "");

  // Padronizações Canônicas de Mercado Automotivo (Unificação de Nomenclatura)
  clean = clean.replace(/\bLanterna de Freio\b/gi, "Lanterna Traseira");
  clean = clean.replace(/\bLanterna Freio\b/gi, "Lanterna Traseira");
  clean = clean.replace(/\bLanterna Seta Traseira\b/gi, "Lanterna Traseira");
  clean = clean.replace(/\bLanterna de Seta do Retrovisor \/ Paralama\b/gi, "Lanterna de Seta do Retrovisor");
  clean = clean.replace(/\bLanterna Seta Retrovisor\b/gi, "Lanterna de Seta do Retrovisor");
  clean = clean.replace(/\bBreak Light\b/gi, "Brake Light (Luz de Freio)");
  clean = clean.replace(/\bBrake-Light\b/gi, "Brake Light (Luz de Freio)");
  clean = clean.replace(/\bLuz de Freio Elevada\b/gi, "Brake Light (Luz de Freio)");
  clean = clean.replace(/\bLuz Freio Elevada\b/gi, "Brake Light (Luz de Freio)");

  clean = clean.replace(/\bAutomático Partida\b/gi, "Automático de Partida");
  clean = clean.replace(/\bMotor Partida\b/gi, "Motor de Partida");
  clean = clean.replace(/\bPastilha Freio\b/gi, "Pastilha de Freio");
  clean = clean.replace(/\bDisco Freio\b/gi, "Disco de Freio");
  clean = clean.replace(/\bFiltro Oleo\b/gi, "Filtro de Óleo");
  clean = clean.replace(/\bFiltro Ar\b/gi, "Filtro de Ar");
  clean = clean.replace(/\bFiltro Combustivel\b/gi, "Filtro de Combustível");
  clean = clean.replace(/\bVela Ignicao\b/gi, "Vela de Ignição");
  clean = clean.replace(/\bVelas Ignicao\b/gi, "Velas de Ignição");

  // Limpa hífens soltos, parênteses vazios, barras e múltiplos espaços
  clean = clean
    .replace(/\(\s*\)/g, "")
    .replace(/\s+-\s+/g, " ")
    .replace(/[/\\-]$/g, "")
    .replace(/^[/\\-]\s*/g, "")
    .replace(/\s+/g, " ")
    .trim();

  // Se a limpeza zerou a string, devolve a versão higienizada mínima
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
