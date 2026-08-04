import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { eq } from "drizzle-orm";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const modelId = searchParams.get("modelId");

    if (!modelId) {
      return NextResponse.json({ error: "modelId é obrigatório" }, { status: 400 });
    }

    let versionsData = [];
    await withDbOrMock(
      async (db) => {
        versionsData = await db.select({
          id: schema.carVersions.id,
          versionName: schema.carVersions.versionName,
          year: schema.carVersions.year,
          engine: schema.carVersions.engine,
        }).from(schema.carVersions).where(eq(schema.carVersions.modelId, modelId));
      },
      () => {
        versionsData = [
          { id: "v-palio-1", versionName: "Palio Fire", year: 2014, engine: "N/A" }
        ];
      }
    );

    return NextResponse.json({ success: true, data: versionsData });
  } catch (error: any) {
    console.error("FIPE Versions error:", error);
    return NextResponse.json({ error: "Erro ao buscar versões" }, { status: 500 });
  }
}
