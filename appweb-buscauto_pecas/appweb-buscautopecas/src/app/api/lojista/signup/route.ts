import { NextRequest, NextResponse } from "next/server";
import { eq } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import { encryptPasswordEdge, encryptJWT } from "@/lib/auth-edge";
import { cookies } from "next/headers";

export const runtime = "edge";

export async function POST(req: NextRequest) {
  try {
    const { cnpj, name, email, password, storeName, city, state, whatsapp, address } = await req.json();

    if (!cnpj || !email || !password || !storeName || !city || !state || !whatsapp) {
      return NextResponse.json({ error: "Dados incompletos" }, { status: 400 });
    }

    const companyId = crypto.randomUUID();
    const storeId = crypto.randomUUID();
    const passwordHash = await encryptPasswordEdge(password);

    const result = await withDbOrMock(
      async (db) => {
        // Check if email or CNPJ exists
        const existing = await db
          .select()
          .from(schema.companies)
          .where(eq(schema.companies.email, email))
          .limit(1);

        if (existing.length > 0) {
          throw new Error("E-mail já cadastrado");
        }

        // Insert company
        await db.insert(schema.companies).values({
          id: companyId,
          cnpj,
          name,
          email,
          passwordHash,
          activePlan: "TRIAL",
        });

        // Insert primary store
        await db.insert(schema.stores).values({
          id: storeId,
          companyId,
          name: storeName,
          address: address || "Endereço não informado",
          city,
          state,
          whatsapp,
          rating: 5.0,
        });

        return { companyId, storeId };
      },
      () => {
        return { companyId, storeId };
      }
    );

    // Create JWT using centralized auth-edge
    const token = await encryptJWT({ companyId: result.companyId, storeId, role: "SELLER" });

    // Set cookie
    const cookieStore = await cookies();
    cookieStore.set("auth_token", token, {
      httpOnly: true,
      secure: process.env.NODE_ENV === "production",
      maxAge: 60 * 60 * 24 * 7, // 7 days
      path: "/",
    });

    return NextResponse.json({ success: true, companyId: result.companyId });
  } catch (error: any) {
    console.error("Signup error:", error);
    return NextResponse.json(
      { error: error.message || "Erro interno do servidor" },
      { status: 500 }
    );
  }
}
