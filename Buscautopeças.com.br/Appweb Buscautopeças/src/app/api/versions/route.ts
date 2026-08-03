import { NextRequest, NextResponse } from "next/server";
import { eq, asc } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import { mockVersions } from "@/db/mock";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  const modelId = req.nextUrl.searchParams.get("model_id");
  if (!modelId) {
    return NextResponse.json({ error: "model_id é obrigatório" }, { status: 400 });
  }

  const versions = await withDbOrMock(
    async (db) => {
      const rows = await db
        .select()
        .from(schema.carVersions)
        .where(eq(schema.carVersions.modelId, modelId))
        .orderBy(asc(schema.carVersions.yearStart));
      return rows.length ? rows : mockVersions.filter((v) => v.modelId === modelId);
    },
    () => mockVersions.filter((v) => v.modelId === modelId)
  );

  return NextResponse.json({ versions });
}
