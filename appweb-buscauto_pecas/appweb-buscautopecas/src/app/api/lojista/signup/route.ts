import { NextRequest, NextResponse } from "next/server";
import { eq } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import bcrypt from "bcryptjs";
import { SignJWT } from "jose";
import { cookies } from "next/headers";
import { crypto } from "@/lib/crypto-polyfill";

export const runtime = "edge";
const JWT_SECRET = new TextEncoder().encode(process.env.JWT_SECRET || "super_secret_dev_key");

export async function POST(req: NextRequest) {
  try {
    const { cnpj, name, email, password, storeName, city, state, whatsapp, address } = await req.json();

    if (!cnpj || !email || !password || !storeName || !city || !state || !whatsapp) {
      return NextResponse.json({ error: "Dados incompletos" }, { status: 400 });
    }

    const companyId = crypto.randomUUID();
    const storeId = crypto.randomUUID();
    const passwordHash = await bcrypt.hash(password, 10);

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

    // Create JWT
    const token = await new SignJWT({ companyId: result.companyId, email })
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

    return NextResponse.json({ success: true, companyId: result.companyId });
  } catch (error: any) {
    console.error("Signup error:", error);
    return NextResponse.json(
      { error: error.message || "Erro interno do servidor" },
      { status: 500 }
    );
  }
}
