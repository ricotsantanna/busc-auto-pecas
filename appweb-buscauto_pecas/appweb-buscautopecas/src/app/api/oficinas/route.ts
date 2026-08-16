import { NextRequest, NextResponse } from "next/server";
import workshopsData from "@/db/workshops.json";

export const runtime = "edge";

export async function GET(req: NextRequest) {
  try {
    const sp = req.nextUrl.searchParams;
    const q = sp.get("q")?.trim().toLowerCase() ?? "";
    const city = sp.get("city")?.trim() ?? "";

    let list = workshopsData as any[];

    let filtered = list.filter((w) => {
      if (city && city !== "ALL" && w.city.toLowerCase() !== city.toLowerCase()) return false;
      if (q) {
        const text = `${w.name} ${w.specialties} ${w.address} ${w.city} ${w.neighborhood} ${w.state}`.toLowerCase();
        return text.includes(q);
      }
      return true;
    });

    const citiesSet = new Set(list.map((w) => `${w.city}/${w.state}`).filter(Boolean));
    const cities = Array.from(citiesSet).sort();

    return NextResponse.json({
      success: true,
      workshops: filtered.slice(0, 100), // Paginated top 100 matches
      cities,
      totalCount: filtered.length,
    });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
