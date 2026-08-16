import { NextRequest, NextResponse } from "next/server";
import { getDb, schema } from "@/db";
import { like, or, and, eq } from "drizzle-orm";

export const runtime = "edge";

// Initial catalog of partner workshops
const INITIAL_WORKSHOPS = [
  {
    id: "w-1",
    name: "Oficina Mecânica Centro-Sul",
    address: "Rua Marquês de Olinda, 142",
    neighborhood: "Botafogo",
    city: "Rio de Janeiro",
    state: "RJ",
    phone: "(21) 2551-8890",
    whatsapp: "5521998877665",
    rating: 4.9,
    specialties: "Freios, Suspensão, Injeção Eletrônica, Motor",
    lat: -22.9519,
    lng: -43.1856,
  },
  {
    id: "w-2",
    name: "Auto Center Icaraí",
    address: "Av. Roberto Silveira, 320",
    neighborhood: "Icaraí",
    city: "Niterói",
    state: "RJ",
    phone: "(21) 2710-4433",
    whatsapp: "5521987654321",
    rating: 4.8,
    specialties: "Troca de Óleo, Alinhamento e Balanceamento, Freios",
    lat: -22.9056,
    lng: -43.1097,
  },
  {
    id: "w-3",
    name: "Oficina Especializada Bosch Service",
    address: "Rua Barão do Rio Branco, 850",
    neighborhood: "Santo Amaro",
    city: "São Paulo",
    state: "SP",
    phone: "(11) 5521-1200",
    whatsapp: "5511999887766",
    rating: 5.0,
    specialties: "Injeção Eletrônica, Ar Condicionado, Câmbio Automático",
    lat: -23.6521,
    lng: -46.7089,
  },
  {
    id: "w-4",
    name: "Mecânica Rápida Tijuca",
    address: "Rua Conde de Bonfim, 610",
    neighborhood: "Tijuca",
    city: "Rio de Janeiro",
    state: "RJ",
    phone: "(21) 2268-9000",
    whatsapp: "5521977665544",
    rating: 4.7,
    specialties: "Escapamentos, Embreagem, Correia Dentada",
    lat: -22.9298,
    lng: -43.2356,
  },
  {
    id: "w-5",
    name: "Auto Center Barra da Tijuca",
    address: "Av. das Américas, 4200",
    neighborhood: "Barra da Tijuca",
    city: "Rio de Janeiro",
    state: "RJ",
    phone: "(21) 3325-1122",
    whatsapp: "5521966554433",
    rating: 4.9,
    specialties: "Diagnóstico Computadorizado, Suspensão, Freios ABS",
    lat: -23.0003,
    lng: -43.3658,
  },
];

export async function GET(req: NextRequest) {
  try {
    const sp = req.nextUrl.searchParams;
    const q = sp.get("q")?.trim().toLowerCase() ?? "";
    const city = sp.get("city")?.trim() ?? "";

    let list = INITIAL_WORKSHOPS;

    try {
      const db = await getDb();
      const rows = await db.select().from(schema.workshops);
      if (rows && rows.length > 0) {
        list = rows as any;
      }
    } catch (e) {
      // Use fallback catalog
    }

    let filtered = list.filter((w) => {
      if (city && city !== "ALL" && w.city.toLowerCase() !== city.toLowerCase()) return false;
      if (q) {
        const text = `${w.name} ${w.specialties} ${w.address} ${w.city} ${w.neighborhood}`.toLowerCase();
        return text.includes(q);
      }
      return true;
    });

    const cities = Array.from(new Set(list.map((w) => `${w.city}/${w.state}`))).sort();

    return NextResponse.json({
      success: true,
      workshops: filtered,
      cities,
      totalCount: filtered.length,
    });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
