import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { eq, asc } from "drizzle-orm";

export const runtime = "edge";

function formatModelName(name: string): string {
  if (!name) return "";
  const trimmed = name.trim();
  // Preserve short codes like S10, D10, D20, HB20, A3, X5, A4, CR-V, HR-V
  if (/^([a-z]\d+|\d+[a-z]+|[a-z]{1,2}-\d+)$/i.test(trimmed)) {
    return trimmed.toUpperCase();
  }

  return trimmed
    .toLowerCase()
    .split(/\s+/)
    .map((word) => {
      if (/^[a-z]\d+$/i.test(word) || /^\d+[a-z]+$/i.test(word)) return word.toUpperCase();
      return word.charAt(0).toUpperCase() + word.slice(1);
    })
    .join(" ");
}

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const brandId = searchParams.get("brandId");

    if (!brandId) {
      return NextResponse.json({ error: "brandId é obrigatório" }, { status: 400 });
    }

    let modelsData: any[] = [];
    await withDbOrMock(
      async (db) => {
        const rows = await db
          .select({
            id: schema.carModels.id,
            name: schema.carModels.name,
            slug: schema.carModels.slug,
          })
          .from(schema.carModels)
          .where(eq(schema.carModels.brandId, brandId))
          .orderBy(asc(schema.carModels.name));

        const map = new Map<string, any>();
        rows.forEach((r) => {
          const clean = formatModelName(r.name);
          const key = clean.toLowerCase();
          if (!map.has(key)) {
            map.set(key, { ...r, name: clean });
          }
        });

        modelsData = Array.from(map.values()).sort((a, b) => a.name.localeCompare(b.name, "pt-BR"));
      },
      () => {
        modelsData = [{ id: "m-palio", name: "Palio", slug: "palio-carro" }];
      }
    );

    return NextResponse.json({ success: true, data: modelsData });
  } catch (error: any) {
    console.error("FIPE Models error:", error);
    return NextResponse.json({ error: "Erro ao buscar modelos" }, { status: 500 });
  }
}
