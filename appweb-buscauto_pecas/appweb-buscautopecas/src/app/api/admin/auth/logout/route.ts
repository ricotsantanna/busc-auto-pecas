// src/app/api/admin/auth/logout/route.ts — Logout do Administrador
import { NextRequest, NextResponse } from "next/server";
import { cookies } from "next/headers";

export const runtime = "edge";

export async function POST(req: NextRequest) {
  const cookieStore = await cookies();
  cookieStore.delete("admin_auth_token");
  return NextResponse.json({ success: true, message: "Sessão encerrada com sucesso." });
}
