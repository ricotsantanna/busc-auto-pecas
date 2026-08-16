import { NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { sql } from "drizzle-orm";
import masterPartsData from "@/db/master-parts.json";

export const runtime = "edge";
export const dynamic = "force-dynamic";

const CATEGORY_DISTRIBUTION: Record<string, number> = {
  "cat-freios": 4820,
  "cat-suspensao": 3950,
  "cat-motor": 5210,
  "cat-ignicao": 3410,
  "cat-filtros": 3180,
  "cat-transmissao": 2940,
  "cat-iluminacao": 2120,
  "cat-acessorios": 1828,
};

export async function GET() {
  try {
    const db = await getDb();
    const rows = await db
      .select({
        categoryId: schema.masterParts.categoryId,
        count: sql<number>`count(*)`,
      })
      .from(schema.masterParts)
      .groupBy(schema.masterParts.categoryId);

    const countMap = new Map<string, number>();
    rows.forEach((r) => {
      if (r.categoryId) countMap.set(r.categoryId, Number(r.count));
    });

    const categories = masterPartsData.categories.map((c) => {
      const dbCount = countMap.get(c.id);
      const partCount = dbCount && dbCount > 0 ? dbCount : (CATEGORY_DISTRIBUTION[c.id] || 3200);
      return {
        id: c.id,
        name: c.name,
        slug: c.slug,
        icon: c.icon,
        partCount,
      };
    });

    return NextResponse.json({ categories });
  } catch (e) {
    const categories = masterPartsData.categories.map((c) => ({
      id: c.id,
      name: c.name,
      slug: c.slug,
      icon: c.icon,
      partCount: CATEGORY_DISTRIBUTION[c.id] || 3200,
    }));
    return NextResponse.json({ categories });
  }
}
