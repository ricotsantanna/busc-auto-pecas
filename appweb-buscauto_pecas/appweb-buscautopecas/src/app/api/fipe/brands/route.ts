import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { eq, asc } from "drizzle-orm";

export const runtime = "edge";

function formatBrandName(name: string): string {
  if (!name) return "";
  const trimmed = name.trim();
  if (/^gm\s*-\s*chevrolet$/i.test(trimmed)) return "GM - Chevrolet";
  if (/^vw\s*-\s*volkswagen$/i.test(trimmed)) return "VW - Volkswagen";
  if (/^(bmw|byd|gwm|ram|jac|mg)$/i.test(trimmed)) return trimmed.toUpperCase();

  return trimmed
    .toLowerCase()
    .split(/\s+/)
    .map((word) => {
      if (word === "gm") return "GM";
      if (word === "vw") return "VW";
      return word.charAt(0).toUpperCase() + word.slice(1);
    })
    .join(" ");
}

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const vehicleType = searchParams.get("type") || "carro";

    let brandsData: any[] = [];
    await withDbOrMock(
      async (db) => {
        const rows = await db
          .select({
            id: schema.brands.id,
            name: schema.brands.name,
            slug: schema.brands.slug,
            logoUrl: schema.brands.logoUrl,
          })
          .from(schema.brands)
          .where(eq(schema.brands.vehicleType, vehicleType))
          .orderBy(asc(schema.brands.name));

        // Deduplicate by clean formatted name
        const map = new Map<string, any>();
        rows.forEach((r) => {
          const clean = formatBrandName(r.name);
          const key = clean.toLowerCase();
          if (!map.has(key)) {
            map.set(key, { ...r, name: clean });
          }
        });

        brandsData = Array.from(map.values()).sort((a, b) => a.name.localeCompare(b.name, "pt-BR"));
      },
      () => {
        brandsData = [
          { id: "b-fiat", name: "Fiat", slug: "fiat", logoUrl: null },
          { id: "b-chevrolet", name: "Chevrolet", slug: "chevrolet", logoUrl: null },
        ];
      }
    );

    return NextResponse.json({ success: true, data: brandsData });
  } catch (error: any) {
    console.error("FIPE Brands error:", error);
    return NextResponse.json({ error: "Erro ao buscar marcas" }, { status: 500 });
  }
}
