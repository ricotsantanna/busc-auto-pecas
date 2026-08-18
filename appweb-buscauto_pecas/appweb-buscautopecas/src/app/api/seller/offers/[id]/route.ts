// src/app/api/seller/offers/[id]/route.ts — Alias para Edição e Exclusão de Ofertas do Vendedor
import { NextRequest, NextResponse } from "next/server";
import { PATCH as lojistaPatch, DELETE as lojistaDelete } from "@/app/api/lojista/offers/[id]/route";

export const runtime = "edge";

export async function PATCH(req: NextRequest, context: { params: Promise<{ id: string }> }) {
  return lojistaPatch(req, context);
}

export async function DELETE(req: NextRequest, context: { params: Promise<{ id: string }> }) {
  return lojistaDelete(req, context);
}
