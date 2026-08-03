import { NextRequest, NextResponse } from "next/server";
import { eq } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import { mockModels } from "@/db/mock";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  const brandId = req.nextUrl.searchParams.get("brand_id");
  if (!brandId) {
    return NextResponse.json({ error: "brand_id é obrigatório" }, { status: 400 });
  }

  const models = await withDbOrMock(
    async (db) => {
      const rows = await db
        .select()
        .from(schema.carModels)
        .where(eq(schema.carModels.brandId, brandId))
        .orderBy(schema.carModels.name);
      return rows.length ? rows : mockModels.filter((m) => m.brandId === brandId);
    },
    () => mockModels.filter((m) => m.brandId === brandId)
  );

  return NextResponse.json({ models });
}
