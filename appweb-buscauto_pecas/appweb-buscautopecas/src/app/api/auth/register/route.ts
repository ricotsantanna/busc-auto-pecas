import { NextResponse } from "next/server";
import { getDb } from "@/db";
export const runtime = "edge";
import { companies, stores } from "@/db/schema";
import { encryptPassword } from "@/lib/auth";
import { encryptJWT } from "@/lib/auth-edge";
import { cookies } from "next/headers";

export async function POST(req: Request) {
  try {
    const db = await getDb();
    const body = await req.json();
    const { email, password, cnpj, storeName, address, city, state, whatsapp } = body;

    if (!email || !password || !cnpj || !storeName) {
      return NextResponse.json({ error: "Faltam campos obrigatórios." }, { status: 400 });
    }

    // 1. Check if CNPJ or Email already exists
    // O D1 não aceita o mesmo CNPJ ou Email se estiver configurado unique, mas vamos fazer try/catch.
    
    // 2. Hash password
    const passwordHash = await encryptPassword(password);

    const companyId = crypto.randomUUID();
    const storeId = crypto.randomUUID();

    // 3. Create Company and default Store using Batch or Transaction
    await db.batch([
      db.insert(companies).values({
        id: companyId,
        email,
        passwordHash,
        cnpj,
        name: storeName, // Usamos o nome da loja como nome da empresa para simplificar
        activePlan: "TRIAL",
      }),
      db.insert(stores).values({
        id: storeId,
        companyId,
        name: storeName,
        address: address || "Endereço não informado",
        city: city || "Não informada",
        state: state || "NA",
        whatsapp: whatsapp || "00000000000",
      })
    ]);

    // 4. Generate JWT
    const token = await encryptJWT({ companyId, storeId, role: "SELLER" });

    // 5. Set Cookie
    cookies().set("auth_token", token, {
      httpOnly: true,
      secure: process.env.NODE_ENV === "production",
      sameSite: "lax",
      maxAge: 7 * 24 * 60 * 60, // 7 days
      path: "/",
    });

    return NextResponse.json({ success: true, companyId, storeId });
  } catch (error: any) {
    console.error("Register error:", error);
    if (error.message?.includes("UNIQUE constraint failed: companies.email")) {
      return NextResponse.json({ error: "E-mail já cadastrado." }, { status: 400 });
    }
    if (error.message?.includes("UNIQUE constraint failed: companies.cnpj")) {
      return NextResponse.json({ error: "CNPJ já cadastrado." }, { status: 400 });
    }
    return NextResponse.json({ error: "Erro interno ao cadastrar loja." }, { status: 500 });
  }
}
