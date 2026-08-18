// src/app/api/admin/auth/login/route.ts — Autenticação do Administrador
import { NextRequest, NextResponse } from "next/server";
import { encryptAdminJWT } from "@/lib/auth-edge";
import { cookies } from "next/headers";

export const runtime = "edge";

export async function POST(req: NextRequest) {
  try {
    const { email, password } = await req.json();

    const expectedEmail = process.env.ADMIN_EMAIL || "admin@buscautopecas.com.br";
    const expectedPassword = process.env.ADMIN_PASSWORD || "admin123";

    if (email !== expectedEmail || password !== expectedPassword) {
      return NextResponse.json(
        { error: "E-mail ou senha administrativa incorretos." },
        { status: 401 }
      );
    }

    const token = await encryptAdminJWT({
      email: expectedEmail,
      role: "ADMIN",
    });

    const cookieStore = await cookies();
    cookieStore.set("admin_auth_token", token, {
      httpOnly: true,
      secure: process.env.NODE_ENV === "production",
      sameSite: "lax",
      maxAge: 60 * 60 * 24, // 1 dia
      path: "/",
    });

    return NextResponse.json({
      success: true,
      message: "Login administrativo realizado com sucesso!",
    });
  } catch (error: any) {
    console.error("Erro no login admin:", error);
    return NextResponse.json(
      { error: error.message || "Erro no servidor ao autenticar admin." },
      { status: 500 }
    );
  }
}
