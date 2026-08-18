// src/app/api/search/route.ts — Rota de Busca Estruturada e Busca Livre FTS5 (Modelo E-Commerce)
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema, withDbOrMock } from "@/db";
import { eq, and, gte, lte, or, sql, like } from "drizzle-orm";

export const runtime = "edge";

// GET /api/search?q=farol  (Busca Livre FTS5)
// GET /api/search?make=Ford&model=Ecosport&year=2018&engine=1.5  (Busca Estruturada via Vehicles & Fitment)
export async function GET(req: NextRequest) {
  const searchParams = req.nextUrl.searchParams;
  const q = (searchParams.get("q") ?? "").trim();
  const make = (searchParams.get("make") ?? "").trim();
  const model = (searchParams.get("model") ?? "").trim();
  const yearStr = (searchParams.get("year") ?? "").trim();
  const engine = (searchParams.get("engine") ?? "").trim();
  const year = yearStr ? parseInt(yearStr, 10) : NaN;

  // Lógica de consulta ao banco D1
  const handleD1Search = async (db: any) => {
    // -------------------------------------------------------------
    // 1. BUSCA LIVRE (FTS5 Full-Text Search)
    // -------------------------------------------------------------
    if (q) {
      try {
        // Tenta executar consulta FTS5 indexada
        const ftsQuery = sql`
          SELECT p.id, p.sku, p.name, p.description, p.price, p.stock_quantity as stockQuantity,
                 p.image_url as imageUrl, p.brand_id as brandId, p.category_id as categoryId,
                 b.name as brandName, c.name as categoryName
          FROM products_fts fts
          JOIN products p ON fts.product_id = p.id
          LEFT JOIN brands b ON p.brand_id = b.id
          LEFT JOIN categories c ON p.category_id = c.id
          WHERE products_fts MATCH ${q + "*"}
          LIMIT 50
        `;
        const ftsResults: any = await db.all(ftsQuery);
        if (ftsResults && ftsResults.results && ftsResults.results.length > 0) {
          return ftsResults.results;
        }
      } catch (e) {
        console.warn("FTS5 query fallback to LIKE:", e);
      }

      // Fallback robusto via LIKE em produtos + marcas + categorias
      const likeResults = await db
        .select({
          product: schema.products,
          brandName: schema.brands.name,
          categoryName: schema.categories.name,
        })
        .from(schema.products)
        .leftJoin(schema.brands, eq(schema.products.brandId, schema.brands.id))
        .leftJoin(schema.categories, eq(schema.products.categoryId, schema.categories.id))
        .where(
          or(
            like(schema.products.name, `%${q}%`),
            like(schema.products.sku, `%${q}%`),
            like(schema.products.description, `%${q}%`),
            like(schema.brands.name, `%${q}%`)
          )
        )
        .limit(50);

      return likeResults.map((r: any) => ({
        ...r.product,
        brandName: r.brandName,
        categoryName: r.categoryName,
      }));
    }

    // -------------------------------------------------------------
    // 2. BUSCA ESTRUTURADA (Cruzamento vehicles <-> product_fitment <-> products)
    // -------------------------------------------------------------
    const vehicleConditions = [];
    if (make) vehicleConditions.push(like(schema.vehicles.make, `%${make}%`));
    if (model) vehicleConditions.push(like(schema.vehicles.model, `%${model}%`));
    if (engine) vehicleConditions.push(like(schema.vehicles.engine, `%${engine}%`));
    if (!isNaN(year)) {
      vehicleConditions.push(
        and(
          lte(schema.vehicles.yearStart, year),
          or(
            gte(schema.vehicles.yearEnd, year),
            sql`${schema.vehicles.yearEnd} IS NULL`
          )
        )
      );
    }

    // Consulta com cruzamento relacional estrito
    const fitmentQuery = db
      .select({
        product: schema.products,
        brandName: schema.brands.name,
        categoryName: schema.categories.name,
        fitmentNotes: schema.productFitment.notes,
        vehicleMake: schema.vehicles.make,
        vehicleModel: schema.vehicles.model,
        vehicleEngine: schema.vehicles.engine,
        yearStart: schema.vehicles.yearStart,
        yearEnd: schema.vehicles.yearEnd,
      })
      .from(schema.products)
      .innerJoin(
        schema.productFitment,
        eq(schema.products.id, schema.productFitment.productId)
      )
      .innerJoin(
        schema.vehicles,
        eq(schema.productFitment.vehicleId, schema.vehicles.id)
      )
      .leftJoin(schema.brands, eq(schema.products.brandId, schema.brands.id))
      .leftJoin(schema.categories, eq(schema.products.categoryId, schema.categories.id));

    if (vehicleConditions.length > 0) {
      fitmentQuery.where(and(...vehicleConditions));
    }

    const fitmentResults = await fitmentQuery.limit(50);

    return fitmentResults.map((r: any) => ({
      ...r.product,
      brandName: r.brandName,
      categoryName: r.categoryName,
      fitmentNotes: r.fitmentNotes,
      compatibleVehicle: {
        make: r.vehicleMake,
        model: r.vehicleModel,
        engine: r.vehicleEngine,
        yearStart: r.yearStart,
        yearEnd: r.yearEnd,
      },
    }));
  };

  // Handler para Mock Local (em desenvolvimento sem D1 conectado)
  const handleMockFallback = () => {
    return [
      {
        id: "prod-mock-001",
        sku: "BOS-0986-PAST",
        name: "Pastilha de Freio Dianteira Cerâmica",
        description: "Jogo de pastilhas de alta eficiência para frenagem silenciosa",
        price: 189.9,
        stockQuantity: 15,
        imageUrl: "https://images.unsplash.com/photo-1580273916550-e323be2ae537?auto=format&fit=crop&w=400&q=80",
        brandName: make || "Bosch",
        categoryName: "Freios",
        fitmentNotes: "Compatível com discos ventilados de 280mm",
        compatibleVehicle: {
          make: make || "Ford",
          model: model || "Ecosport",
          engine: engine || "1.5 16V Flex",
          yearStart: 2017,
          yearEnd: 2021,
        },
      },
    ];
  };

  try {
    const productsList = await withDbOrMock(handleD1Search, handleMockFallback);
    return NextResponse.json({
      success: true,
      query: { q, make, model, year: isNaN(year) ? null : year, engine },
      count: productsList.length,
      products: productsList,
    });
  } catch (error: any) {
    console.error("Search API Error:", error);
    return NextResponse.json(
      { success: false, error: error.message || "Erro interno na busca" },
      { status: 500 }
    );
  }
}
