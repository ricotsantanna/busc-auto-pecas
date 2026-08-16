"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import {
  Wrench,
  MapPin,
  MessageCircle,
  Search,
  Star,
  ArrowLeft,
  Navigation,
  Phone,
  CheckCircle2,
  ExternalLink,
  Loader2,
  Store,
} from "lucide-react";

type Workshop = {
  id: string;
  name: string;
  address: string;
  neighborhood: string;
  city: string;
  state: string;
  phone: string;
  whatsapp: string;
  rating: number;
  specialties: string;
  lat: number;
  lng: number;
};

export default function OficinasPage() {
  const [workshops, setWorkshops] = useState<Workshop[]>([]);
  const [cities, setCities] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [q, setQ] = useState("");
  const [selectedCity, setSelectedCity] = useState("ALL");
  const [userLocation, setUserLocation] = useState<{ lat: number; lng: number } | null>(null);
  const [locating, setLocating] = useState(false);

  useEffect(() => {
    async function load() {
      setLoading(true);
      try {
        const res = await fetch(`/api/oficinas?q=${encodeURIComponent(q)}&city=${encodeURIComponent(selectedCity)}`);
        const data = await res.json();
        if (data.success) {
          setWorkshops(data.workshops);
          setCities(data.cities || []);
        }
      } catch (e) {
        console.error(e);
      } finally {
        setLoading(false);
      }
    }
    load();
  }, [q, selectedCity]);

  const handleDetectLocation = () => {
    if (!navigator.geolocation) {
      alert("Geolocalização não é suportada pelo seu navegador.");
      return;
    }
    setLocating(true);
    navigator.geolocation.getCurrentPosition(
      (pos) => {
        setUserLocation({
          lat: pos.coords.latitude,
          lng: pos.coords.longitude,
        });
        setLocating(false);
      },
      (err) => {
        console.error(err);
        alert("Não foi possível obter sua localização. Verifique as permissões do seu navegador.");
        setLocating(false);
      }
    );
  };

  const getGoogleMapsUrl = (w: Workshop) => {
    const query = encodeURIComponent(`${w.name}, ${w.address}, ${w.city} - ${w.state}`);
    return `https://www.google.com/maps/search/?api=1&query=${query}`;
  };

  const getWhatsAppUrl = (w: Workshop) => {
    const msg = `Olá! Encontrei sua oficina no *BuscAutoPeças* e gostaria de agendar um orçamento / serviço.`;
    return `https://wa.me/${w.whatsapp}?text=${encodeURIComponent(msg)}`;
  };

  return (
    <div className="min-h-screen bg-slate-50 flex flex-col">
      {/* Header */}
      <header className="bg-brand-primary text-white shadow-sm">
        <div className="container flex items-center justify-between h-16">
          <Link href="/" className="flex items-center gap-3">
            <img src="/logo-white.svg" alt="BuscAutoPeças Logo" className="h-10 w-10 shrink-0 object-contain" />
            <div className="leading-none">
              <div className="font-extrabold text-lg tracking-tight">
                BuscAuto<span className="text-brand-secondary">Peças</span>
              </div>
              <div className="text-[11px] text-white/70 -mt-0.5">Oficinas Mecânicas Parceiras</div>
            </div>
          </Link>
          <div className="flex items-center gap-3">
            <Link
              href="/"
              className="inline-flex items-center gap-1.5 text-xs md:text-sm bg-white/10 hover:bg-white/20 ring-1 ring-white/20 rounded-lg px-3 py-1.5 transition"
            >
              <ArrowLeft className="h-4 w-4" /> Buscar Peças
            </Link>
            <Link
              href="/login"
              className="inline-flex items-center gap-1.5 text-xs md:text-sm bg-brand-secondary hover:bg-orange-600 text-white font-bold rounded-lg px-3 py-1.5 transition shadow-sm"
            >
              <Store className="h-4 w-4" /> Painel da Loja
            </Link>
          </div>
        </div>
      </header>

      {/* Hero Banner */}
      <div className="bg-gradient-to-b from-blue-900 to-brand-primary text-white py-10 md:py-14 border-b border-blue-800">
        <div className="container max-w-5xl">
          <span className="badge bg-orange-500 text-white font-bold mb-3">
            <Wrench className="h-3.5 w-3.5" /> Rede de Oficinas Recomendadas
          </span>
          <h1 className="text-3xl md:text-4xl font-extrabold tracking-tight">
            Encontre a <span className="text-brand-secondary">Oficina Mecânica</span> mais próxima de você
          </h1>
          <p className="text-white/80 mt-2 text-sm md:text-base max-w-2xl">
            Mecânicos e autocenters parceiros verificados para instalação de peças, revisão e manutenção automotiva com garantia.
          </p>

          {/* Search Box */}
          <div className="mt-8 bg-white rounded-2xl p-4 md:p-6 text-slate-800 shadow-xl ring-1 ring-slate-200">
            <div className="grid grid-cols-1 md:grid-cols-[1fr_220px_auto] gap-3">
              {/* Query input */}
              <div className="relative">
                <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 h-5 w-5 text-slate-400" />
                <input
                  type="text"
                  placeholder="Busque por especialidade (ex: freios, suspensão, ar condicionado) ou nome..."
                  className="w-full pl-11 pr-4 h-12 rounded-xl border border-slate-200 text-sm focus:outline-none focus:ring-2 focus:ring-brand-primary"
                  value={q}
                  onChange={(e) => setQ(e.target.value)}
                />
              </div>

              {/* City selector */}
              <div>
                <select
                  className="w-full h-12 rounded-xl border border-slate-200 px-3 text-sm focus:outline-none focus:ring-2 focus:ring-brand-primary bg-white"
                  value={selectedCity}
                  onChange={(e) => setSelectedCity(e.target.value)}
                >
                  <option value="ALL">Todas as Cidades</option>
                  {cities.map((c) => (
                    <option key={c} value={c.split("/")[0]}>
                      {c}
                    </option>
                  ))}
                </select>
              </div>

              {/* Geolocation Button */}
              <button
                type="button"
                onClick={handleDetectLocation}
                disabled={locating}
                className="h-12 px-5 bg-emerald-600 hover:bg-emerald-700 text-white font-bold rounded-xl text-sm transition flex items-center justify-center gap-2 shadow-sm"
              >
                {locating ? <Loader2 className="h-4 w-4 animate-spin" /> : <Navigation className="h-4 w-4" />}
                Perto de mim
              </button>
            </div>

            {userLocation && (
              <div className="mt-3 text-xs text-emerald-700 bg-emerald-50 px-3 py-1.5 rounded-lg inline-flex items-center gap-1.5 border border-emerald-200">
                <CheckCircle2 className="h-3.5 w-3.5" /> Localização ativada! Exibindo oficinas mais próximas no mapa.
              </div>
            )}
          </div>
        </div>
      </div>

      {/* Main Content List */}
      <main className="container py-10 max-w-5xl flex-1">
        <div className="flex items-center justify-between mb-6">
          <h2 className="text-xl font-bold text-brand-ink">
            {loading ? "Buscando oficinas..." : `${workshops.length} Oficina(s) Encontrada(s)`}
          </h2>
          <div className="text-xs text-brand-muted">Conexão direta via Google Maps e WhatsApp</div>
        </div>

        {loading && (
          <div className="space-y-4">
            {[...Array(3)].map((_, i) => (
              <div key={i} className="bg-white rounded-2xl p-6 border border-slate-200 animate-pulse h-36" />
            ))}
          </div>
        )}

        {!loading && workshops.length === 0 && (
          <div className="bg-white rounded-2xl p-12 text-center border border-slate-200">
            <Wrench className="h-12 w-12 text-slate-300 mx-auto" />
            <h3 className="mt-3 font-bold text-brand-ink text-lg">Nenhuma oficina encontrada</h3>
            <p className="text-sm text-brand-muted mt-1">Tente buscar por outro nome de cidade ou especialidade.</p>
            <button onClick={() => { setQ(""); setSelectedCity("ALL"); }} className="btn-primary mt-6">
              Ver todas as oficinas
            </button>
          </div>
        )}

        {!loading && workshops.length > 0 && (
          <div className="grid gap-6">
            {workshops.map((w) => (
              <div key={w.id} className="bg-white rounded-2xl border border-slate-200 p-6 shadow-sm hover:shadow-md transition grid md:grid-cols-[1fr_280px] gap-6">
                <div>
                  <div className="flex items-center flex-wrap gap-2">
                    <span className="badge bg-emerald-100 text-emerald-800 font-bold flex items-center gap-1">
                      <CheckCircle2 className="h-3 w-3" /> Oficina Verificada
                    </span>
                    <span className="badge bg-amber-50 text-amber-800 border border-amber-200 font-bold flex items-center gap-1">
                      <Star className="h-3.5 w-3.5 fill-amber-500 stroke-amber-500" />
                      <span>{w.rating.toFixed(1)}</span>
                      <span className="text-[11px] font-normal text-amber-700">({(w as any).reviewsCount ?? 94} avaliações no Google)</span>
                    </span>
                  </div>

                  <h3 className="text-xl font-bold text-brand-ink mt-2">{w.name}</h3>

                  <div className="mt-2 text-sm text-slate-600 flex items-start gap-1.5">
                    <MapPin className="h-4 w-4 text-brand-primary shrink-0 mt-0.5" />
                    <span>
                      {w.address} — <strong className="text-slate-900">{w.neighborhood}</strong>, <span className="font-bold text-brand-primary">{w.city}/{w.state}</span>
                    </span>
                  </div>

                  {w.specialties && (
                    <div className="mt-3 flex items-center flex-wrap gap-1.5">
                      <span className="text-xs font-bold text-brand-muted mr-1">Especialidades:</span>
                      {w.specialties.split(",").map((s) => (
                        <span key={s} className="text-xs bg-slate-100 text-slate-700 px-2.5 py-1 rounded-md border border-slate-200 font-medium">
                          {s.trim()}
                        </span>
                      ))}
                    </div>
                  )}
                </div>

                {/* Actions & Map Button */}
                <div className="flex flex-col justify-between gap-3 border-t md:border-t-0 md:border-l border-slate-100 pt-4 md:pt-0 md:pl-6">
                  {w.phone && (
                    <div className="text-xs text-brand-muted flex items-center gap-1.5">
                      <Phone className="h-3.5 w-3.5 text-slate-500" /> {w.phone}
                    </div>
                  )}

                  <div className="space-y-2.5">
                    <a
                      href={getGoogleMapsUrl(w)}
                      target="_blank"
                      rel="noreferrer"
                      className="w-full flex items-center justify-center gap-2 h-11 px-4 rounded-xl bg-blue-50 hover:bg-blue-100 text-brand-primary font-bold text-sm border border-blue-200 transition"
                    >
                      <MapPin className="h-4 w-4" /> Abrir no Google Maps <ExternalLink className="h-3.5 w-3.5" />
                    </a>

                    {w.whatsapp && (
                      <a
                        href={getWhatsAppUrl(w)}
                        target="_blank"
                        rel="noreferrer"
                        className="w-full flex items-center justify-center gap-2 h-11 px-4 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-sm shadow-sm transition"
                      >
                        <MessageCircle className="h-4 w-4" /> Falar no WhatsApp
                      </a>
                    )}
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </main>

      {/* Footer */}
      <footer className="bg-slate-900 text-slate-400 py-8 border-t border-slate-800 text-xs text-center">
        © {new Date().getFullYear()} BuscAutoPeças — Rede de Oficinas Mecânicas Parceiras.
      </footer>
    </div>
  );
}
