import { NextRequest, NextResponse } from "next/server";
import { eq } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import bcrypt from "bcryptjs";
import { SignJWT } from "jose";
import { cookies } from "next/headers";

export const runtime = "edge";
const JWT_SECRET = new TextEncoder().encode(process.env.JWT_SECRET || "super_secret_dev_key");

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
          throw new Error("Credenciais inválidas");
        }

        const isValid = await bcrypt.compare(password, company.passwordHash);
        if (!isValid) {
          throw new Error("Credenciais inválidas");
        }

        return company;
      },
      () => {
        throw new Error("Credenciais inválidas (Mock Mode)");
      }
    );

    // Create JWT
    const token = await new SignJWT({ companyId: result.id, email })
      .setProtectedHeader({ alg: "HS256" })
      .setIssuedAt()
      .setExpirationTime("7d")
      .sign(JWT_SECRET);

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
