// src/app/api/products/route.ts — Rota de Inserção de Produtos e Aplicação (Transação)
import { NextRequest, NextResponse } from "next/server";
import { getDb, schema, withDbOrMock } from "@/db";
import { eq, sql } from "drizzle-orm";

export const runtime = "edge";

// POST /api/products
// Payload Exemplo:
// {
//   "sku": "FAR-FORD-2018-R",
//   "name": "Farol Principal Máscara Negra - Lado Direito (Passageiro)",
//   "description": "Farol com regulagem elétrica e foco duplo",
//   "price": 489.90,
//   "stockQuantity": 8,
//   "imageUrl": "https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=400&q=80",
//   "brandId": "uuid-da-marca",
//   "categoryId": "uuid-da-categoria",
//   "vehicleIds": ["uuid-veiculo-1", "uuid-veiculo-2"],
//   "notes": "Apenas para modelos com foco duplo"
// }
export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const {
      sku,
      name,
      description,
      price,
      stockQuantity = 0,
      imageUrl,
      brandId,
      categoryId,
      vehicleIds = [],
      notes,
    } = body;

    // Validações básicas de campos obrigatórios
    if (!sku || !name || price === undefined || !brandId || !categoryId) {
      return NextResponse.json(
        {
          success: false,
          error: "Campos obrigatórios ausentes: sku, name, price, brandId, categoryId são necessários.",
        },
        { status: 400 }
      );
    }

    const productId = crypto.randomUUID();

    const handleD1Insertion = async (db: any) => {
      // Executa inserção do produto e fitments em transação atômica
      return await db.transaction(async (tx: any) => {
        // 1. Inserir produto na tabela `products`
        await tx.insert(schema.products).values({
          id: productId,
          sku: sku.trim(),
          name: name.trim(),
          description: description?.trim() || null,
          price: Number(price),
          stockQuantity: Number(stockQuantity),
          imageUrl: imageUrl?.trim() || null,
          brandId: brandId.trim(),
          categoryId: categoryId.trim(),
        });

        // 2. Inserir múltiplas compatibilidades na tabela `product_fitment`
        const fitmentEntries = Array.isArray(vehicleIds)
          ? vehicleIds.map((vId: string) => ({
              productId: productId,
              vehicleId: vId.trim(),
              notes: notes?.trim() || null,
            }))
          : [];

        if (fitmentEntries.length > 0) {
          await tx.insert(schema.productFitment).values(fitmentEntries);
        }

        // 3. Atualizar/Inserir na tabela virtual FTS5 para busca livre instantânea
        try {
          // Busca nome da marca para indexar no FTS5
          const brandRes = await tx
            .select({ name: schema.brands.name })
            .from(schema.brands)
            .where(eq(schema.brands.id, brandId.trim()))
            .limit(1);
          const brandName = brandRes[0]?.name || "";

          await tx.run(sql`
            INSERT INTO products_fts (product_id, name, brand_name, vehicle_model)
            VALUES (${productId}, ${name.trim()}, ${brandName}, '')
          `);
        } catch (e) {
          console.warn("Aviso ao atualizar tabela FTS5:", e);
        }

        return {
          productId,
          sku,
          name,
          price,
          stockQuantity,
          brandId,
          categoryId,
          fitmentsCount: fitmentEntries.length,
        };
      });
    };

    const handleMockInsertion = () => {
      return {
        productId,
        sku,
        name,
        price,
        stockQuantity,
        brandId,
        categoryId,
        fitmentsCount: Array.isArray(vehicleIds) ? vehicleIds.length : 0,
        isMock: true,
      };
    };

    const result = await withDbOrMock(handleD1Insertion, handleMockInsertion);

    return NextResponse.json(
      {
        success: true,
        message: "Produto e compatibilidades de veículo cadastrados com sucesso!",
        data: result,
      },
      { status: 201 }
    );
  } catch (error: any) {
    console.error("Products POST API Error:", error);
    return NextResponse.json(
      { success: false, error: error.message || "Erro ao cadastrar produto" },
      { status: 500 }
    );
  }
}
