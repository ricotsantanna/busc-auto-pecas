import { NextResponse } from "next/server";
import { db } from "@/db";
import { masterParts, categories } from "@/db/schema";
import { like, or, eq } from "drizzle-orm";
import { getSession } from "@/lib/auth";

export async function GET(req: Request) {
  try {
    const session = await getSession();
    if (!session || !session.storeId) {
      return NextResponse.json({ error: "Não autorizado" }, { status: 401 });
    }

    const { searchParams } = new URL(req.url);
    const q = searchParams.get("q");

    if (!q || q.length < 2) {
      return NextResponse.json({ parts: [] });
    }

    // Search masterParts by name, brand, or partNumber
    const parts = await db
      .select({
        id: masterParts.id,
        name: masterParts.name,
        manufacturer: masterParts.brand,
        partNumber: masterParts.partNumber,
        category: categories.name,
      })
      .from(masterParts)
      .leftJoin(categories, eq(masterParts.categoryId, categories.id))
      .where(
        or(
          like(masterParts.name, `%${q}%`),
          like(masterParts.brand, `%${q}%`),
          like(masterParts.partNumber, `%${q}%`)
        )
      )
      .limit(10);

    return NextResponse.json({ parts });
  } catch (error) {
    console.error("Part search error:", error);
    return NextResponse.json({ error: "Erro interno no servidor." }, { status: 500 });
  }
}
