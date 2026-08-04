import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { eq } from "drizzle-orm";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const vehicleType = searchParams.get("type") || "carro"; // carro ou moto

    let brandsData = [];
    await withDbOrMock(
      async (db) => {
        brandsData = await db.select({
          id: schema.brands.id,
          name: schema.brands.name,
          slug: schema.brands.slug,
          logoUrl: schema.brands.logoUrl,
        }).from(schema.brands).where(eq(schema.brands.vehicleType, vehicleType));
      },
      () => {
        brandsData = [
          { id: "b-fiat", name: "Fiat", slug: "fiat", logoUrl: null },
          { id: "b-chevrolet", name: "Chevrolet", slug: "chevrolet", logoUrl: null }
        ];
      }
    );

    return NextResponse.json({ success: true, data: brandsData });
  } catch (error: any) {
    console.error("FIPE Brands error:", error);
    return NextResponse.json({ error: "Erro ao buscar marcas" }, { status: 500 });
  }
}
