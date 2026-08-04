import { NextRequest, NextResponse } from "next/server";
import { like, or } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const q = searchParams.get("q");

    if (!q || q.length < 2) {
      return NextResponse.json({ parts: [] });
    }

    const searchTerm = `%${q}%`;

    const parts = await withDbOrMock(
      async (db) => {
        return await db
          .select({
            id: schema.masterParts.id,
            name: schema.masterParts.name,
            partNumber: schema.masterParts.partNumber,
            manufacturer: schema.masterParts.manufacturer,
            position: schema.masterParts.position,
            description: schema.masterParts.description,
          })
          .from(schema.masterParts)
          .where(
            or(
              like(schema.masterParts.name, searchTerm),
              like(schema.masterParts.partNumber, searchTerm)
            )
          )
          .limit(10);
      },
      () => {
        return [
          { id: "mock-1", name: "Amortecedor Dianteiro Mock", manufacturer: "Monroe", partNumber: "SP200" },
          { id: "mock-2", name: "Pastilha de Freio Mock", manufacturer: "Cobreq", partNumber: "N123" }
        ];
      }
    );

    return NextResponse.json({ parts });
  } catch (error: any) {
    console.error("Autocomplete search error:", error);
    return NextResponse.json({ error: "Erro ao buscar peças" }, { status: 500 });
  }
}
