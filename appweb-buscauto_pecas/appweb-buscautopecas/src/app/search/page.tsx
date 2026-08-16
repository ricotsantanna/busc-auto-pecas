"use client";

import { Suspense, useEffect, useMemo, useState } from "react";
import Link from "next/link";
import { useSearchParams } from "next/navigation";
import {
  ArrowLeft,
  MapPin,
  MessageCircle,
  Search as SearchIcon,
  Star,
  ShieldCheck,
  Package,
  TrendingDown,
  Wrench,
  Store as StoreIcon,
  Loader2,
  Filter,
  BadgeCheck,
  History,
  Sparkles,
} from "lucide-react";
import {
  Drawer,
  DrawerClose,
  DrawerContent,
  DrawerFooter,
  DrawerHeader,
  DrawerTitle,
  DrawerTrigger,
} from "@/components/ui/drawer";

type Offer = {
  id: string;
  partId: string;
  partName: string;
  partCode: string;
  categoryName: string;
  storeId: string;
  storeName: string;
  storeCity: string;
  storeState: string;
  storeWhatsapp: string;
  storeRating: number;
  price: number;
  condition: "NOVO" | "USADO";
  inStock: boolean;
  notes?: string | null;
  isLocal?: boolean;
};

type SearchResponse = {
  vehicle: { brand: string; model: string; version: string } | null;
  query: string;
  offers: Offer[];
  meta: {
    totalCount: number;
    minPrice: number | null;
    avgPrice: number | null;
    cities: string[];
    matchedParts: number;
  };
};

type ConditionFilter = "ALL" | "NOVO" | "USADO";

function formatBRL(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

function buildWhatsAppUrl(offer: Offer) {
  const msg =
    `Olá! Vi no *BuscAutoPeças* que vocês têm a peça:\n\n` +
    `🔧 *${offer.partName}*\n` +
    `Código: ${offer.partCode}\n` +
    `Condição: ${offer.condition}\n` +
    `Preço anunciado: *${formatBRL(offer.price)}*\n\n` +
    `Ainda está disponível?`;
  return `https://wa.me/${offer.storeWhatsapp}?text=${encodeURIComponent(msg)}`;
}

function FilterOptions({
  condition,
  setCondition,
  city,
  setCity,
  onlyStock,
  setOnlyStock,
  cities,
}: {
  condition: ConditionFilter;
  setCondition: (c: ConditionFilter) => void;
  city: string;
  setCity: (c: string) => void;
  onlyStock: boolean;
  setOnlyStock: (s: boolean) => void;
  cities: string[];
}) {
  return (
    <>
      {/* Condição */}
      <div className="mb-5">
        <div className="text-xs font-semibold uppercase text-brand-muted mb-2">Condição</div>
        <div className="space-y-2">
          {(
            [
              { key: "ALL", label: "Todas", icon: <Package className="h-4 w-4" /> },
              { key: "NOVO", label: "Apenas Novas", icon: <BadgeCheck className="h-4 w-4 text-emerald-600" /> },
              { key: "USADO", label: "Apenas Usadas", icon: <History className="h-4 w-4 text-amber-600" /> },
            ] as { key: ConditionFilter; label: string; icon: JSX.Element }[]
          ).map((opt) => (
            <label
              key={opt.key}
              className={`flex items-center gap-2 rounded-lg px-3 py-2 cursor-pointer border text-sm transition ${
                condition === opt.key
                  ? "border-brand-primary bg-blue-50 text-brand-primary font-semibold"
                  : "border-slate-200 hover:bg-slate-50 text-brand-muted"
              }`}
            >
              <input
                type="radio"
                name="cond"
                className="sr-only"
                checked={condition === opt.key}
                onChange={() => setCondition(opt.key)}
              />
              {opt.icon}
              <span>{opt.label}</span>
            </label>
          ))}
        </div>
      </div>

      {/* Cidade */}
      <div className="mb-5">
        <div className="text-xs font-semibold uppercase text-brand-muted mb-2">Cidade</div>
        <select className="field h-10 w-full" value={city} onChange={(e) => setCity(e.target.value)}>
          <option value="ALL">Todas as cidades</option>
          {cities.map((c) => (
            <option key={c} value={c}>{c}</option>
          ))}
        </select>
      </div>

      {/* Estoque */}
      <label className="flex items-center justify-between gap-2 rounded-lg px-3 py-2 border border-slate-200 cursor-pointer hover:bg-slate-50">
        <span className="text-sm text-brand-ink font-medium">Só em estoque</span>
        <span
          className={`relative inline-flex h-5 w-9 items-center rounded-full transition ${
            onlyStock ? "bg-brand-primary" : "bg-slate-300"
          }`}
        >
          <span
            className={`inline-block h-4 w-4 rounded-full bg-white transition ${
              onlyStock ? "translate-x-4" : "translate-x-1"
            }`}
          />
        </span>
        <input
          type="checkbox"
          className="sr-only"
          checked={onlyStock}
          onChange={(e) => setOnlyStock(e.target.checked)}
        />
      </label>
    </>
  );
}

function SearchInner() {
  const params = useSearchParams();
  const brand = params.get("brand") ?? "";
  const model = params.get("model") ?? "";
  const year = params.get("year") ?? "";
  const version = params.get("version") ?? "";
  const q = params.get("q") ?? "";

  const [data, setData] = useState<SearchResponse | null>(null);
  const [loading, setLoading] = useState(true);

  // filtros do lateral
  const [condition, setCondition] = useState<ConditionFilter>("ALL");
  const [city, setCity] = useState<string>("ALL");
  const [onlyStock, setOnlyStock] = useState<boolean>(true);

  useEffect(() => {
    let cancel = false;
    setLoading(true);
    const url = `/api/search?${new URLSearchParams({
      brand,
      model,
      year,
      version,
      q,
    }).toString()}`;

    async function load() {
      const res = await fetch(url);
      const d: SearchResponse = await res.json();
      
      const merged = d.offers || [];
      const cities = Array.from(
        new Set(merged.map((o) => `${o.storeCity}/${o.storeState}`))
      ).sort();

      if (!cancel) {
        setData({
          ...d,
          offers: merged,
          meta: { ...d.meta, cities, totalCount: merged.length },
        });
        const title = q
          ? `${q} — Comparar preços | BuscAutoPeças`
          : "Buscar peças automotivas | BuscAutoPeças";
        document.title = title;
      }
    }

    load().finally(() => !cancel && setLoading(false));

    // reage a mudan\u00e7as no localStorage (ex.: outra aba /inventory)
    const onChange = () => load();
    window.addEventListener("buscautopecas:offers-changed", onChange);
    window.addEventListener("storage", onChange);
    return () => {
      cancel = true;
      window.removeEventListener("buscautopecas:offers-changed", onChange);
      window.removeEventListener("storage", onChange);
    };
  }, [brand, model, year, version, q]);

  const filteredOffers = useMemo(() => {
    if (!data) return [];
    return data.offers.filter((o) => {
      if (condition !== "ALL" && o.condition !== condition) return false;
      if (city !== "ALL" && `${o.storeCity}/${o.storeState}` !== city) return false;
      if (onlyStock && !o.inStock) return false;
      return true;
    });
  }, [data, condition, city, onlyStock]);

  const stats = useMemo(() => {
    if (!filteredOffers.length)
      return { min: null as number | null, avg: null as number | null };
    const prices = filteredOffers.map((o) => o.price);
    return {
      min: Math.min(...prices),
      avg: prices.reduce((a, b) => a + b, 0) / prices.length,
    };
  }, [filteredOffers]);

  return (
    <div className="min-h-screen bg-brand-bg">
      {/* header */}
      <header className="bg-brand-primary text-white shadow-sm">
        <div className="container flex items-center justify-between h-16">
          <Link href="/" className="flex items-center gap-3">
            <img
              src="/logo-white.svg"
              alt="BuscAutoPeças Logo"
              className="h-10 w-10 shrink-0 object-contain"
            />
            <div className="leading-none">
              <div className="font-extrabold text-lg tracking-tight">
                BuscAuto<span className="text-brand-secondary">Peças</span>
              </div>
              <div className="text-[11px] text-white/70 -mt-0.5">
                buscautopecas.com.br
              </div>
            </div>
          </Link>
          <Link
            href="/"
            className="inline-flex items-center gap-1.5 text-sm bg-white/10 hover:bg-white/20 ring-1 ring-white/20 rounded-lg px-3 py-1.5 transition"
          >
            <ArrowLeft className="h-4 w-4" /> Nova busca
          </Link>
        </div>
      </header>

      {/* Sub-header: contexto da busca */}
      <div className="bg-white border-b border-slate-200">
        <div className="container py-5 flex flex-col md:flex-row md:items-center md:justify-between gap-3">
          <div>
            <div className="text-xs font-semibold uppercase tracking-wider text-brand-muted flex items-center gap-1.5">
              <SearchIcon className="h-3.5 w-3.5" /> Resultados para
            </div>
            <div className="mt-1 text-2xl md:text-3xl font-extrabold text-brand-ink leading-tight">
              {q ? <>&ldquo;{q}&rdquo;</> : "Todas as peças"}
            </div>
            {data?.vehicle && (
              <div className="mt-2 text-xs text-brand-muted flex items-center flex-wrap gap-1.5">
                {data.vehicle.brand && (
                  <span className="font-semibold text-slate-800 bg-slate-100 px-2 py-1 rounded border border-slate-200">
                    {data.vehicle.brand}
                  </span>
                )}
                {data.vehicle.model && (
                  <>
                    <span className="text-slate-400">›</span>
                    <span className="font-semibold text-slate-800 bg-slate-100 px-2 py-1 rounded border border-slate-200">
                      {data.vehicle.model}
                    </span>
                  </>
                )}
                {data.vehicle.year && (
                  <>
                    <span className="text-slate-400">›</span>
                    <span className="font-bold text-orange-700 bg-orange-50 px-2.5 py-1 rounded border border-orange-200">
                      Ano {data.vehicle.year}
                    </span>
                  </>
                )}
                {data.vehicle.version && (
                  <>
                    <span className="text-slate-400">›</span>
                    <span className="font-medium text-slate-700 bg-slate-100 px-2 py-1 rounded border border-slate-200">
                      {data.vehicle.version}
                    </span>
                  </>
                )}
              </div>
            )}
          </div>

          {data && !loading && (
            <div className="flex flex-wrap items-center gap-3 text-sm">
              <div className="rounded-xl bg-emerald-50 text-emerald-700 ring-1 ring-emerald-100 px-3 py-2">
                <div className="text-[10px] font-semibold uppercase tracking-wider">
                  Menor preço
                </div>
                <div className="font-bold">
                  {stats.min != null ? formatBRL(stats.min) : "—"}
                </div>
              </div>
              <div className="rounded-xl bg-blue-50 text-brand-primary ring-1 ring-blue-100 px-3 py-2">
                <div className="text-[10px] font-semibold uppercase tracking-wider">
                  Ofertas
                </div>
                <div className="font-bold">{filteredOffers.length}</div>
              </div>
              <div className="rounded-xl bg-orange-50 text-brand-secondary ring-1 ring-orange-100 px-3 py-2">
                <div className="text-[10px] font-semibold uppercase tracking-wider">
                  Preço médio
                </div>
                <div className="font-bold">
                  {stats.avg != null ? formatBRL(stats.avg) : "—"}
                </div>
              </div>
            </div>
          )}
        </div>

        {/* MOBILE FILTERS BUTTON */}
        <div className="md:hidden border-t border-slate-200 p-4 bg-slate-50/50">
          <Drawer>
            <DrawerTrigger asChild>
              <button className="w-full flex items-center justify-center gap-2 bg-white border border-slate-300 text-brand-ink rounded-xl h-11 font-semibold shadow-sm active:bg-slate-50 transition">
                <Filter className="h-4 w-4" /> Filtrar resultados
              </button>
            </DrawerTrigger>
            <DrawerContent>
              <DrawerHeader>
                <DrawerTitle>Filtros</DrawerTitle>
              </DrawerHeader>
              <div className="p-4 px-6 overflow-y-auto">
                <FilterOptions
                  condition={condition}
                  setCondition={setCondition}
                  city={city}
                  setCity={setCity}
                  onlyStock={onlyStock}
                  setOnlyStock={setOnlyStock}
                  cities={data?.meta.cities ?? []}
                />
              </div>
              <DrawerFooter className="px-6 pb-8">
                <DrawerClose asChild>
                  <button className="btn-primary h-12 w-full text-base">
                    Ver resultados ({filteredOffers.length})
                  </button>
                </DrawerClose>
              </DrawerFooter>
            </DrawerContent>
          </Drawer>
        </div>
      </div>

      {/* body */}
      <main className="container py-6">
        <div className="grid md:grid-cols-[280px_1fr] gap-6">
          {/* SIDEBAR FILTROS */}
          <aside className="hidden md:block md:sticky md:top-6 h-fit space-y-4">
            <div className="bg-white ring-1 ring-slate-200 rounded-2xl p-5">
              <div className="flex items-center gap-2 text-brand-ink font-semibold mb-4">
                <Filter className="h-4 w-4" /> Filtros
              </div>

              <FilterOptions
                condition={condition}
                setCondition={setCondition}
                city={city}
                setCity={setCity}
                onlyStock={onlyStock}
                setOnlyStock={setOnlyStock}
                cities={data?.meta.cities ?? []}
              />
            </div>

            {/* Card educativo */}
            <div className="bg-gradient-to-br from-blue-600 to-blue-700 text-white rounded-2xl p-5 shadow-sm">
              <div className="flex items-center gap-2 font-semibold">
                <ShieldCheck className="h-4 w-4" /> Catálogo controlado
              </div>
              <p className="text-sm text-white/85 mt-2 leading-relaxed">
                Todas as peças saem de um catálogo padronizado. Você compara
                exatamente a mesma referência entre lojas diferentes.
              </p>
            </div>
          </aside>

          {/* LISTA DE OFERTAS */}
          <section>
            {loading && (
              <div className="space-y-3">
                {[...Array(4)].map((_, i) => (
                  <div key={i} className="bg-white ring-1 ring-slate-200 rounded-2xl p-5 flex flex-col md:flex-row md:items-center gap-4 animate-pulse">
                    <div className="flex-1 space-y-3">
                      <div className="flex gap-2">
                        <div className="h-6 w-16 bg-slate-100 rounded-md" />
                        <div className="h-6 w-20 bg-slate-100 rounded-md" />
                      </div>
                      <div className="h-5 bg-slate-100 rounded w-2/3" />
                      <div className="h-4 bg-slate-50 rounded w-1/3" />
                    </div>
                    <div className="w-32 h-12 bg-slate-100 rounded-xl" />
                  </div>
                ))}
              </div>
            )}

            {!loading && filteredOffers.length === 0 && (
              <div className="bg-white ring-1 ring-slate-200 rounded-2xl p-10 text-center">
                <StoreIcon className="h-10 w-10 mx-auto text-slate-300" />
                <div className="mt-3 font-semibold text-brand-ink">
                  Nenhuma loja atende esses filtros ainda
                </div>
                <p className="text-sm text-brand-muted mt-1">
                  Tente afrouxar os filtros ou refazer a busca com outro termo.
                </p>
                <Link href="/" className="btn-primary mt-6">
                  <SearchIcon className="h-4 w-4" /> Fazer nova busca
                </Link>
              </div>
            )}

            {!loading && filteredOffers.length > 0 && (
              <ul className="space-y-3">
                {filteredOffers.map((o, idx) => (
                  <OfferCard key={o.id} offer={o} rank={idx} avgPrice={stats.avg} />
                ))}
              </ul>
            )}
          </section>
        </div>
      </main>
    </div>
  );
}

function OfferCard({
  offer,
  rank,
  avgPrice,
}: {
  offer: Offer;
  rank: number;
  avgPrice: number | null;
}) {
  const isBest = rank === 0;
  const savingsPct =
    avgPrice && avgPrice > offer.price
      ? Math.round((1 - offer.price / avgPrice) * 100)
      : 0;

  return (
    <li
      className={`bg-white/90 backdrop-blur-md rounded-2xl ring-1 p-5 hover:shadow-xl hover:-translate-y-1 transition-all duration-300 animate-in fade-in slide-in-from-bottom-4 fill-mode-backwards ${
        isBest ? "ring-emerald-400 shadow-emerald-200/50 shadow-lg" : "ring-slate-200/60"
      }`}
      style={{ animationDelay: `${rank * 100}ms` }}
    >
      <div className="flex flex-col md:flex-row md:items-center gap-4">
        {/* Info peça + loja */}
        <div className="flex-1 min-w-0">
          <div className="flex items-center flex-wrap gap-2">
            {isBest && (
              <span className="badge bg-emerald-500 text-white">
                <TrendingDown className="h-3 w-3" /> MELHOR PREÇO
              </span>
            )}
            {offer.isLocal && (
              <span className="badge bg-orange-100 text-brand-secondary">
                <Sparkles className="h-3 w-3" /> Novo anúncio
              </span>
            )}
            <span
              className={`badge ${
                offer.condition === "NOVO"
                  ? "bg-emerald-100 text-emerald-700"
                  : "bg-amber-100 text-amber-700"
              }`}
            >
              {offer.condition === "NOVO" ? (
                <BadgeCheck className="h-3 w-3" />
              ) : (
                <History className="h-3 w-3" />
              )}
              {offer.condition === "NOVO" ? "Novo" : "Usado"}
            </span>
            <span className="badge bg-slate-100 text-brand-muted">
              {offer.categoryName}
            </span>
            {!offer.inStock && (
              <span className="badge bg-red-50 text-red-600">Sob encomenda</span>
            )}
          </div>

          <h3 className="mt-2 text-lg font-bold text-brand-ink leading-snug">
            <Link
              href={`/parts/${offer.partId}`}
              className="hover:text-brand-primary transition"
            >
              {offer.partName}
            </Link>
          </h3>
          <div className="text-xs text-brand-muted mt-0.5">
            Cód. fabricante: <span className="font-mono">{offer.partCode}</span>
          </div>

          {offer.notes && (
            <div className="mt-2 text-xs bg-slate-50 border-l-2 border-brand-primary p-2 rounded text-slate-700">
              <span className="font-bold text-brand-ink">Obs. da Loja / Aplicação:</span>{" "}
              {offer.notes}
            </div>
          )}

          <div className="mt-3 flex items-center flex-wrap gap-x-4 gap-y-1 text-sm">
            <div className="inline-flex items-center gap-1.5 text-brand-ink font-medium">
              <StoreIcon className="h-4 w-4 text-brand-primary" />
              {offer.storeName}
            </div>
            <div className="inline-flex items-center gap-1 text-brand-muted">
              <MapPin className="h-3.5 w-3.5" /> {offer.storeCity}/{offer.storeState}
            </div>
            <div className="inline-flex items-center gap-1 text-amber-600">
              <Star className="h-3.5 w-3.5 fill-amber-500 stroke-amber-500" />
              <span className="font-semibold">
                {offer.storeRating.toFixed(1)}
              </span>
            </div>
          </div>
        </div>

        {/* Preço + CTA */}
        {/* Preço e Call to Action (Zap) */}
          <div className="flex flex-col gap-2 items-end">
            {savingsPct > 0 && (
              <div className="text-xs font-bold text-emerald-600 bg-emerald-50 px-2 py-0.5 rounded animate-pulse">
                {savingsPct}% mais barato que a média!
              </div>
            )}
            <div className="text-2xl font-black text-brand-ink">
              {formatBRL(offer.price)}
            </div>
            <a
              href={buildWhatsAppUrl(offer)}
              target="_blank"
              rel="noreferrer"
              className="flex items-center justify-center gap-2 h-11 px-5 rounded-xl bg-gradient-to-r from-emerald-500 to-emerald-600 hover:from-emerald-400 hover:to-emerald-500 text-white font-bold shadow-md shadow-emerald-500/30 hover:shadow-emerald-500/50 hover:scale-105 active:scale-95 transition-all w-full md:w-auto"
            >
              <MessageCircle className="h-5 w-5" />
              Chamar no Zap
            </a>
          </div>
      </div>
    </li>
  );
}

export default function SearchPage() {
  return (
    <Suspense
      fallback={
        <div className="min-h-screen grid place-items-center text-brand-muted">
          <Loader2 className="h-5 w-5 animate-spin" />
        </div>
      }
    >
      <SearchInner />
    </Suspense>
  );
}
