import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { eq, asc, desc, and, gte } from "drizzle-orm";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const modelId = searchParams.get("modelId");

    if (!modelId) {
      return NextResponse.json({ error: "modelId é obrigatório" }, { status: 400 });
    }

    let versionsData: any[] = [];
    await withDbOrMock(
      async (db) => {
        const rows = await db
          .select({
            id: schema.carVersions.id,
            versionName: schema.carVersions.versionName,
            year: schema.carVersions.year,
            engine: schema.carVersions.engine,
          })
          .from(schema.carVersions)
          .where(and(eq(schema.carVersions.modelId, modelId), gte(schema.carVersions.year, 1950)))
          .orderBy(desc(schema.carVersions.year), asc(schema.carVersions.versionName));

        versionsData = rows.map((r) => ({
          id: r.id,
          name: r.versionName,
          versionName: r.versionName,
          year: r.year,
          engine: r.engine,
        }));
      },
      () => {
        versionsData = [
          { id: "v-palio-1", name: "Palio Fire", versionName: "Palio Fire", year: 2014, engine: "N/A" },
        ];
      }
    );

    return NextResponse.json({ success: true, data: versionsData });
  } catch (error: any) {
    console.error("FIPE Versions error:", error);
    return NextResponse.json({ error: "Erro ao buscar versões" }, { status: 500 });
  }
}
