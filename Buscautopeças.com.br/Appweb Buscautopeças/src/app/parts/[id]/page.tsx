"use client";

import { Suspense, useEffect, useMemo, useState } from "react";
import Link from "next/link";
import { useParams } from "next/navigation";
import {
  ArrowLeft,
  BadgeCheck,
  History,
  Info,
  Loader2,
  MapPin,
  MessageCircle,
  Package,
  Sparkles,
  Star,
  Store as StoreIcon,
  TrendingDown,
  Wrench,
} from "lucide-react";
import { localOffersAsSearchOffers } from "@/lib/local-inventory";

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
  isLocal?: boolean;
};

type Payload = {
  part: {
    id: string;
    name: string;
    manufacturerCode: string;
    categoryId: string;
    categoryName: string;
    basePrice: number;
  };
  offers: Offer[];
  meta: {
    total: number;
    minPrice: number | null;
    maxPrice: number | null;
    avgPrice: number | null;
    newCount: number;
    usedCount: number;
    storeCount: number;
  };
};

function formatBRL(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

function buildWhatsAppUrl(o: Offer) {
  const msg =
    `Olá! Vi no *BuscAutoPeças* que vocês têm a peça:\n\n` +
    `🔧 *${o.partName}*\n` +
    `Código: ${o.partCode}\n` +
    `Condição: ${o.condition}\n` +
    `Preço anunciado: *${formatBRL(o.price)}*\n\n` +
    `Ainda está disponível?`;
  return `https://wa.me/${o.storeWhatsapp}?text=${encodeURIComponent(msg)}`;
}

function PartDetailInner() {
  const params = useParams<{ id: string }>();
  const id = params?.id;
  const [data, setData] = useState<Payload | null>(null);
  const [loading, setLoading] = useState(true);
  const [notFound, setNotFound] = useState(false);

  useEffect(() => {
    if (!id) return;
    let cancel = false;
    setLoading(true);

    async function load() {
      const res = await fetch(`/api/parts/${id}`);
      if (res.status === 404) {
        setNotFound(true);
        return;
      }
      const d: Payload = await res.json();

      // mescla ofertas locais desta peça
      const locals = localOffersAsSearchOffers()
        .filter((o) => o.partId === d.part.id)
        .map((o) => ({ ...o, isLocal: true }));
      const merged = [...d.offers, ...locals].sort((a, b) => a.price - b.price);
      const prices = merged.map((o) => o.price);
      const newCount = merged.filter((o) => o.condition === "NOVO").length;
      const usedCount = merged.filter((o) => o.condition === "USADO").length;

      if (!cancel) {
        setData({
          ...d,
          offers: merged,
          meta: {
            ...d.meta,
            total: merged.length,
            minPrice: prices.length ? Math.min(...prices) : null,
            maxPrice: prices.length ? Math.max(...prices) : null,
            avgPrice: prices.length
              ? Math.round(
                  (prices.reduce((a, b) => a + b, 0) / prices.length) * 100
                ) / 100
              : null,
            newCount,
            usedCount,
            storeCount: merged.length,
          },
        });
      }
    }

    load().finally(() => !cancel && setLoading(false));
    const onChange = () => load();
    window.addEventListener("buscautopecas:offers-changed", onChange);
    return () => {
      cancel = true;
      window.removeEventListener("buscautopecas:offers-changed", onChange);
    };
  }, [id]);

  const savings = useMemo(() => {
    if (!data?.meta.minPrice || !data.meta.avgPrice) return 0;
    return Math.round(
      (1 - data.meta.minPrice / data.meta.avgPrice) * 100
    );
  }, [data]);

  if (notFound) {
    return (
      <div className="min-h-screen grid place-items-center">
        <div className="text-center">
          <Package className="h-12 w-12 text-slate-300 mx-auto" />
          <div className="mt-3 font-bold text-brand-ink">Peça não encontrada</div>
          <p className="text-sm text-brand-muted mt-1">
            Essa referência não está no catálogo mestre.
          </p>
          <Link href="/" className="btn-primary mt-6">Voltar para busca</Link>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-brand-bg">
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
                Detalhe da peça
              </div>
            </div>
          </Link>
          <Link
            href="/"
            className="inline-flex items-center gap-1.5 text-sm bg-white/10 hover:bg-white/20 ring-1 ring-white/20 rounded-lg px-3 py-1.5 transition"
          >
            <ArrowLeft className="h-4 w-4" /> Voltar
          </Link>
        </div>
      </header>

      <main className="container py-8">
        {loading && (
          <div className="flex items-center gap-2 text-brand-muted text-sm py-10">
            <Loader2 className="h-4 w-4 animate-spin" /> Carregando peça...
          </div>
        )}

        {!loading && data && (
          <>
            {/* Hero da peça */}
            <section className="grid md:grid-cols-[1fr_360px] gap-6">
              <div className="bg-white rounded-2xl ring-1 ring-slate-200 p-6 md:p-8">
                <Link
                  href={`/search?q=${encodeURIComponent(data.part.categoryName)}`}
                  className="badge bg-blue-100 text-brand-primary hover:bg-blue-200 transition"
                >
                  {data.part.categoryName}
                </Link>
                <h1 className="mt-3 text-3xl md:text-4xl font-extrabold text-brand-ink leading-tight">
                  {data.part.name}
                </h1>
                <div className="mt-2 text-sm text-brand-muted">
                  Código do fabricante:{" "}
                  <span className="font-mono text-brand-ink font-medium">
                    {data.part.manufacturerCode}
                  </span>
                </div>
                <div className="mt-5 flex flex-wrap gap-3">
                  <div className="rounded-xl bg-emerald-50 text-emerald-700 ring-1 ring-emerald-100 px-3 py-2">
                    <div className="text-[10px] font-semibold uppercase tracking-wider">Menor preço</div>
                    <div className="font-bold">
                      {data.meta.minPrice != null ? formatBRL(data.meta.minPrice) : "—"}
                    </div>
                  </div>
                  <div className="rounded-xl bg-orange-50 text-brand-secondary ring-1 ring-orange-100 px-3 py-2">
                    <div className="text-[10px] font-semibold uppercase tracking-wider">Preço médio</div>
                    <div className="font-bold">
                      {data.meta.avgPrice != null ? formatBRL(data.meta.avgPrice) : "—"}
                    </div>
                  </div>
                  <div className="rounded-xl bg-blue-50 text-brand-primary ring-1 ring-blue-100 px-3 py-2">
                    <div className="text-[10px] font-semibold uppercase tracking-wider">Lojas ofertando</div>
                    <div className="font-bold">{data.meta.storeCount}</div>
                  </div>
                </div>
              </div>

              {/* Card de economia */}
              <div className="rounded-2xl bg-gradient-to-br from-emerald-500 to-emerald-600 text-white p-6 shadow-sm">
                <div className="flex items-center gap-2 font-semibold">
                  <TrendingDown className="h-5 w-5" /> Sua economia potencial
                </div>
                <div className="mt-2 text-5xl font-extrabold leading-none">
                  {savings}%
                </div>
                <p className="mt-2 text-sm text-white/85">
                  Comprando pelo menor preço em vez da média da rede.
                </p>
                <div className="mt-4 flex items-center gap-3 text-sm">
                  <span className="bg-white/15 ring-1 ring-white/20 rounded-lg px-2 py-1">
                    {data.meta.newCount} novas
                  </span>
                  <span className="bg-white/15 ring-1 ring-white/20 rounded-lg px-2 py-1">
                    {data.meta.usedCount} usadas
                  </span>
                </div>
              </div>
            </section>

            {/* Compatibilidade */}
            <div className="mt-6 rounded-2xl bg-blue-50 border border-blue-100 p-4 flex items-start gap-3">
              <Info className="h-5 w-5 text-brand-primary shrink-0 mt-0.5" />
              <div className="text-sm text-brand-ink leading-relaxed">
                <b>Catálogo Mestre.</b> Todas as lojas abaixo estão vendendo a{" "}
                <b>mesma referência oficial</b> ({data.part.manufacturerCode}). Confirme a
                compatibilidade com o vendedor pelo WhatsApp antes de finalizar.
              </div>
            </div>

            {/* Lista de ofertas */}
            <section className="mt-8">
              <h2 className="text-lg font-bold text-brand-ink mb-3">
                Todas as ofertas ({data.meta.storeCount})
              </h2>
              <ul className="space-y-3">
                {data.offers.map((o, idx) => (
                  <OfferRow key={o.id} offer={o} rank={idx} avgPrice={data.meta.avgPrice} />
                ))}
              </ul>
            </section>
          </>
        )}
      </main>
    </div>
  );
}

function OfferRow({
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
    avgPrice && avgPrice > offer.price ? Math.round((1 - offer.price / avgPrice) * 100) : 0;

  return (
    <li
      className={`bg-white rounded-2xl ring-1 p-5 hover:shadow-md transition ${
        isBest ? "ring-emerald-300 shadow-emerald-100/60 shadow" : "ring-slate-200"
      }`}
    >
      <div className="flex flex-col md:flex-row md:items-center gap-4">
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
            {!offer.inStock && (
              <span className="badge bg-red-50 text-red-600">Sob encomenda</span>
            )}
          </div>
          <div className="mt-2 flex items-center flex-wrap gap-x-4 gap-y-1 text-sm">
            <div className="inline-flex items-center gap-1.5 text-brand-ink font-semibold">
              <StoreIcon className="h-4 w-4 text-brand-primary" />
              {offer.storeName}
            </div>
            <div className="inline-flex items-center gap-1 text-brand-muted">
              <MapPin className="h-3.5 w-3.5" /> {offer.storeCity}/{offer.storeState}
            </div>
            <div className="inline-flex items-center gap-1 text-amber-600">
              <Star className="h-3.5 w-3.5 fill-amber-500 stroke-amber-500" />
              <span className="font-semibold">{offer.storeRating.toFixed(1)}</span>
            </div>
          </div>
        </div>
        <div className="md:w-64 flex md:flex-col justify-between md:items-end items-center gap-3">
          <div className="text-right">
            <div className="text-2xl md:text-3xl font-extrabold text-brand-ink leading-none">
              {formatBRL(offer.price)}
            </div>
            {savingsPct >= 5 && (
              <div className="text-xs mt-1 font-semibold text-emerald-600">
                Economia de {savingsPct}% vs. média
              </div>
            )}
          </div>
          <a
            href={buildWhatsAppUrl(offer)}
            target="_blank"
            rel="noopener noreferrer"
            className="inline-flex items-center justify-center gap-2 h-11 px-5 rounded-lg bg-emerald-500 hover:bg-emerald-600 active:bg-emerald-700 text-white font-semibold shadow-sm transition w-full md:w-auto"
          >
            <MessageCircle className="h-4 w-4" /> WhatsApp
          </a>
        </div>
      </div>
    </li>
  );
}

export default function Page() {
  return (
    <Suspense
      fallback={
        <div className="min-h-screen grid place-items-center text-brand-muted">
          <Loader2 className="h-5 w-5 animate-spin" />
        </div>
      }
    >
      <PartDetailInner />
    </Suspense>
  );
}
