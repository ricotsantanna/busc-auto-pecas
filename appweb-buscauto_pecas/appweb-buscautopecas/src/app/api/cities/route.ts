// src/app/api/cities/route.ts — API de busca e listagem de Cidades / Capitais do Brasil (IBGE)

import { NextResponse } from "next/server";
import citiesData from "@/db/brazilian-cities.json";

export const runtime = "edge";

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const q = searchParams.get("q")?.trim().toLowerCase() ?? "";
  const uf = searchParams.get("uf")?.trim().toUpperCase() ?? "";
  const capitalsOnly = searchParams.get("capitals") === "true";

  let result = citiesData;

  if (capitalsOnly) {
    result = result.filter((c) => c.isCapital);
  }

  if (uf) {
    result = result.filter((c) => c.state === uf);
  }

  if (q) {
    result = result.filter(
      (c) =>
        c.name.toLowerCase().includes(q) ||
        c.state.toLowerCase().includes(q)
    );
  }

  // Limita resposta a 100 itens para performance rápida se a busca for genérica
  const totalMatches = result.length;
  const paginated = result.slice(0, 100);

  return NextResponse.json({
    total: totalMatches,
    cities: paginated,
  });
}
