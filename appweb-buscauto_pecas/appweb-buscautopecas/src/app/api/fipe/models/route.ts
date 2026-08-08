import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { eq, asc } from "drizzle-orm";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const brandId = searchParams.get("brandId");

    if (!brandId) {
      return NextResponse.json({ error: "brandId é obrigatório" }, { status: 400 });
    }

    let modelsData = [];
    await withDbOrMock(
      async (db) => {
        modelsData = await db.select({
          id: schema.carModels.id,
          name: schema.carModels.name,
          slug: schema.carModels.slug,
        }).from(schema.carModels)
          .where(eq(schema.carModels.brandId, brandId))
          .orderBy(asc(schema.carModels.name));
      },
      () => {
        modelsData = [
          { id: "m-palio", name: "Palio", slug: "palio-carro" }
        ];
      }
    );

    return NextResponse.json({ success: true, data: modelsData });
  } catch (error: any) {
    console.error("FIPE Models error:", error);
    return NextResponse.json({ error: "Erro ao buscar modelos" }, { status: 500 });
  }
}
