import { NextRequest, NextResponse } from "next/server";
import { mockMasterParts } from "@/db/mock-offers";

export const runtime = "edge";

// GET /api/parts/search?q=past
// Retorna até 12 peças do catálogo mestre para autocomplete.
export async function GET(req: NextRequest) {
  const q = (req.nextUrl.searchParams.get("q") ?? "").trim().toLowerCase();

  if (q.length < 2) {
    return NextResponse.json({ parts: [] });
  }

  const normalize = (s: string) =>
    s.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
  const qn = normalize(q);

  const matches = mockMasterParts
    .filter((p) => {
      return (
        normalize(p.name).includes(qn) ||
        normalize(p.manufacturerCode).includes(qn) ||
        normalize(p.categoryName).includes(qn)
      );
    })
    .slice(0, 12)
    .map((p) => ({
      id: p.id,
      name: p.name,
      manufacturerCode: p.manufacturerCode,
      categoryName: p.categoryName,
      basePrice: p.basePrice, // dica de preço médio para o lojista
    }));

  return NextResponse.json({ parts: matches });
}
