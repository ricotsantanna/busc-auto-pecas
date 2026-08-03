import { NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { mockBrands } from "@/db/mock";

export const runtime = "edge";

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const type = searchParams.get("type")?.toUpperCase() ?? "CARRO";

  const allBrands = await withDbOrMock(
    async (db) => {
      const rows = await db.select().from(schema.brands).orderBy(schema.brands.name);
      return rows.length ? rows : mockBrands;
    },
    () => mockBrands
  );

  const filtered = allBrands.filter((b: any) => {
    if (!b.vehicleType) return true;
    if (type === "ELETRICO") {
      return b.vehicleType === "ELETRICO" || b.powertrain === "ELETRICO" || b.powertrain === "HIBRIDO";
    }
    return b.vehicleType === type;
  });

  return NextResponse.json({ brands: filtered.length ? filtered : allBrands });
}
