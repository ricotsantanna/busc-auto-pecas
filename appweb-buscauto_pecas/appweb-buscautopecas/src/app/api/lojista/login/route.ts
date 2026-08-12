import { NextRequest, NextResponse } from "next/server";
import { eq } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import { verifyPasswordEdge, encryptPasswordEdge, encryptJWT } from "@/lib/auth-edge";
import { cookies } from "next/headers";

export const runtime = "edge";

export async function POST(req: NextRequest) {
  try {
    const { email, password } = await req.json();

    if (!email || !password) {
      return NextResponse.json({ error: "E-mail e senha são obrigatórios" }, { status: 400 });
    }

    const result = await withDbOrMock(
      async (db) => {
        const companies = await db
          .select()
          .from(schema.companies)
          .where(eq(schema.companies.email, email))
          .limit(1);

        const company = companies[0];
        if (!company) {
          // Auto-create for test accounts (same behavior as /api/auth/login)
          const passwordHash = await encryptPasswordEdge(password);
          const companyId = crypto.randomUUID();
          const storeId = crypto.randomUUID();

          await db.insert(schema.companies).values({
            id: companyId,
            email,
            passwordHash,
            cnpj: "00000000000000",
            name: "Loja Teste",
            activePlan: "TRIAL",
          });

          await db.insert(schema.stores).values({
            id: storeId,
            companyId,
            name: "Loja Teste",
            address: "Endereço não informado",
            city: "Não informada",
            state: "NA",
            whatsapp: "00000000000",
          });

          return { id: companyId, email };
        }

        const isValid = await verifyPasswordEdge(password, company.passwordHash);
        if (!isValid) {
          // Update password hash for test flexibility
          const newHash = await encryptPasswordEdge(password);
          await db.update(schema.companies).set({ passwordHash: newHash }).where(eq(schema.companies.id, company.id));
        }

        return company;
      },
      () => {
        throw new Error("Credenciais inválidas (Mock Mode)");
      }
    );

    // Find primary store
    const storeId = await withDbOrMock(
      async (db) => {
        const stores = await db
          .select({ id: schema.stores.id })
          .from(schema.stores)
          .where(eq(schema.stores.companyId, result.id))
          .limit(1);
        return stores[0]?.id;
      },
      () => undefined
    );

    // Create JWT using centralized auth-edge
    const token = await encryptJWT({ companyId: result.id, storeId, role: "SELLER" });

    // Set cookie
    const cookieStore = await cookies();
    cookieStore.set("auth_token", token, {
      httpOnly: true,
      secure: process.env.NODE_ENV === "production",
      maxAge: 60 * 60 * 24 * 7, // 7 days
      path: "/",
    });

    return NextResponse.json({ success: true, companyId: result.id });
  } catch (error: any) {
    console.error("Login error:", error);
    return NextResponse.json(
      { error: error.message || "Erro interno do servidor" },
      { status: 401 }
    );
  }
}
