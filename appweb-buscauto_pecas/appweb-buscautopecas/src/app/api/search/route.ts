import { NextRequest, NextResponse } from "next/server";
import { generateSearchResults } from "@/db/mock-offers";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  const sp = req.nextUrl.searchParams;
  const q = sp.get("q") ?? "";
  const brand = sp.get("brand") ?? undefined;
  const model = sp.get("model") ?? undefined;
  const version = sp.get("version") ?? undefined;

  // TODO (produção D1): substituir por query real com joins entre
  //   store_offers -> stores + master_parts + part_compatibility (versionId)
  // filtrando por versionId e ordenando por price ASC.
  const result = generateSearchResults(q, brand, model, version);

  return NextResponse.json(result, {
    headers: {
      "Cache-Control": "public, max-age=30, s-maxage=60",
    },
  });
}
