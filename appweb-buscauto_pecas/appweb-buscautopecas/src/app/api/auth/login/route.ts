import { NextResponse } from "next/server";
import { getDb } from "@/db";
export const runtime = "edge";
import { companies, stores } from "@/db/schema";
import { verifyPassword } from "@/lib/auth";
import { encryptJWT } from "@/lib/auth-edge";
import { cookies } from "next/headers";
import { eq } from "drizzle-orm";

export async function POST(req: Request) {
  try {
    const db = await getDb();
    const { email, password } = await req.json();

    if (!email || !password) {
      return NextResponse.json({ error: "E-mail e senha são obrigatórios." }, { status: 400 });
    }

    // 1. Find Company
    const companyRecords = await db
      .select()
      .from(companies)
      .where(eq(companies.email, email))
      .limit(1);

    const company = companyRecords[0];

    if (!company) {
      return NextResponse.json({ error: "Credenciais inválidas." }, { status: 401 });
    }

    // 2. Verify Password
    const isValid = await verifyPassword(password, company.passwordHash);
    if (!isValid) {
      return NextResponse.json({ error: "Credenciais inválidas." }, { status: 401 });
    }

    // 3. Find primary store for this company
    const storeRecords = await db
      .select({ id: stores.id })
      .from(stores)
      .where(eq(stores.companyId, company.id))
      .limit(1);
    
    const storeId = storeRecords[0]?.id;

    // 4. Generate JWT
    const token = await encryptJWT({ companyId: company.id, storeId, role: "SELLER" });

    // 5. Set Cookie
    cookies().set("auth_token", token, {
      httpOnly: true,
      secure: process.env.NODE_ENV === "production",
      sameSite: "lax",
      maxAge: 7 * 24 * 60 * 60, // 7 days
      path: "/",
    });

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error("Login error:", error);
    return NextResponse.json({ error: "Erro interno no servidor." }, { status: 500 });
  }
}
