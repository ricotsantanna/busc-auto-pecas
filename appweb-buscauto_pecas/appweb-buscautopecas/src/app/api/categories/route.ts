import { NextResponse } from "next/server";
import masterPartsData from "@/db/master-parts.json";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function GET() {
  const categories = masterPartsData.categories.map((c) => ({
    id: c.id,
    name: c.name,
    slug: c.slug,
    icon: c.icon,
    partCount: masterPartsData.masterParts.filter((p) => p.categoryId === c.id).length,
  }));
  return NextResponse.json({ categories });
}
