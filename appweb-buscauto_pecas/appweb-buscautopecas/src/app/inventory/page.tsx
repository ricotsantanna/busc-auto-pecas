"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import Link from "next/link";
import {
  ArrowLeft,
  BadgeCheck,
  History,
  Package,
  Pencil,
  Plus,
  Save,
  Search,
  Store as StoreIcon,
  Trash2,
  Wrench,
  X,
  Info,
  Check,
  ExternalLink,
} from "lucide-react";
import { mockStores } from "@/db/mock-offers";
import {
  deleteOffer,
  getSelectedStoreId,
  listOffersByStore,
  saveOffer,
  setSelectedStoreId,
  type LocalOffer,
} from "@/lib/local-inventory";
import { formatBRLInput, parseBRL } from "@/lib/currency";

type CatalogPart = {
  id: string;
  name: string;
  manufacturerCode: string;
  categoryName: string;
  basePrice: number;
};

function formatBRL(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

export default function InventoryPage() {
  const [storeId, setStoreId] = useState<string>(mockStores[0].id);
  const [offers, setOffers] = useState<LocalOffer[]>([]);

  // form state
  const [editingId, setEditingId] = useState<string | null>(null);
  const [selectedPart, setSelectedPart] = useState<CatalogPart | null>(null);
  const [price, setPrice] = useState<string>("");
  const [condition, setCondition] = useState<"NOVO" | "USADO">("NOVO");
  const [inStock, setInStock] = useState<boolean>(true);
  const [notes, setNotes] = useState<string>("");

  const [toast, setToast] = useState<string | null>(null);

  // ---------- estado cruzado ----------
  const [compatibleVehicles, setCompatibleVehicles] = useState<Record<string, any> | null>(null);
  const [loadingCompat, setLoadingCompat] = useState(false);

  // ---------- carregamento inicial ----------
  useEffect(() => {
    const sid = getSelectedStoreId();
    setStoreId(sid);
    setOffers(listOffersByStore(sid));
  }, []);

  useEffect(() => {
    setOffers(listOffersByStore(storeId));
  }, [storeId]);

  useEffect(() => {
    const h = () => setOffers(listOffersByStore(storeId));
    window.addEventListener("buscautopecas:offers-changed", h);
    return () => window.removeEventListener("buscautopecas:offers-changed", h);
  }, [storeId]);

  useEffect(() => {
    if (!selectedPart) {
      setCompatibleVehicles(null);
      return;
    }
    setLoadingCompat(true);
    fetch(`/api/parts/${selectedPart.id}`)
      .then((r) => r.json())
      .then((data) => {
        if (data.compatibleVehicles) {
          setCompatibleVehicles(data.compatibleVehicles);
        }
      })
      .finally(() => setLoadingCompat(false));
  }, [selectedPart]);

  const currentStore = useMemo(
    () => mockStores.find((s) => s.id === storeId) ?? mockStores[0],
    [storeId]
  );

  function changeStore(id: string) {
    setStoreId(id);
    setSelectedStoreId(id);
    resetForm();
  }

  function resetForm() {
    setEditingId(null);
    setSelectedPart(null);
    setPrice("");
    setCondition("NOVO");
    setInStock(true);
    setNotes("");
  }

  function loadInto(o: LocalOffer) {
    // busca a peça do catálogo (pra mostrar nome no card do form)
    fetch(`/api/parts/search?q=${encodeURIComponent(o.partId)}`);
    // simpler: derive from offers list join with mock parts on client:
    import("@/db/mock-offers").then(({ mockMasterParts }) => {
      const p = mockMasterParts.find((mp) => mp.id === o.partId);
      if (!p) return;
      setSelectedPart({
        id: p.id,
        name: p.name,
        manufacturerCode: p.manufacturerCode,
        categoryName: p.categoryName,
        basePrice: p.basePrice,
      });
      setEditingId(o.id);
      setPrice(formatBRLInput(String(Math.round(o.price * 100))));
      setCondition(o.condition);
      setInStock(o.inStock);
      setNotes(o.notes ?? "");
      window.scrollTo({ top: 0, behavior: "smooth" });
    });
  }

  function handleSave(e: React.FormEvent) {
    e.preventDefault();
    if (!selectedPart) {
      showToast("Selecione uma peça do catálogo");
      return;
    }
    const priceNum = parseBRL(price);
    if (!priceNum || priceNum <= 0) {
      showToast("Informe um preço válido");
      return;
    }
    saveOffer({
      id: editingId ?? undefined,
      storeId,
      partId: selectedPart.id,
      price: priceNum,
      condition,
      inStock,
      notes,
    });
    showToast(editingId ? "Oferta atualizada!" : "Oferta cadastrada!");
    resetForm();
  }

  function handleDelete(id: string) {
    if (!confirm("Excluir esta oferta?")) return;
    deleteOffer(id);
    showToast("Oferta excluída");
    if (editingId === id) resetForm();
  }

  function showToast(msg: string) {
    setToast(msg);
    setTimeout(() => setToast(null), 2500);
  }

  return (
    <div className="min-h-screen bg-brand-bg">
      {/* header */}
      <header className="bg-brand-primary text-white shadow-sm sticky top-0 z-30">
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
                Painel do lojista
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

      {/* store selector */}
      <div className="bg-white border-b border-slate-200">
        <div className="container py-4 flex flex-col md:flex-row md:items-center gap-3">
          <div className="flex items-center gap-3 flex-1">
            <div className="h-11 w-11 rounded-xl bg-brand-primary/10 grid place-items-center text-brand-primary">
              <StoreIcon className="h-5 w-5" />
            </div>
            <div className="leading-tight">
              <div className="text-xs uppercase tracking-wider text-brand-muted font-semibold">
                Loja logada (demo)
              </div>
              <div className="text-lg font-bold text-brand-ink">
                {currentStore.name}{" "}
                <span className="text-brand-muted font-normal text-sm">
                  — {currentStore.city}/{currentStore.state}
                </span>
              </div>
            </div>
          </div>
          {/* Dropdown removed as per user request to avoid exposing all stores */}
        </div>
      </div>

      {/* body */}
      <main className="container py-8">
        {/* info bar */}
        <div className="rounded-2xl bg-blue-50 border border-blue-100 p-4 flex items-start gap-3 mb-6">
          <Info className="h-5 w-5 text-brand-primary shrink-0 mt-0.5" />
          <div className="text-sm text-brand-ink leading-relaxed">
            <b>Catálogo Mestre Controlado.</b> Você não cadastra peças novas —
            escolhe do catálogo oficial, define preço e condição. Isso evita
            duplicidade e faz seu anúncio aparecer para quem busca a mesma
            referência.{" "}
            <Link href="/" className="text-brand-primary font-semibold underline underline-offset-2">
              Ver como o comprador enxerga
            </Link>
          </div>
        </div>

        <div className="grid lg:grid-cols-[420px_1fr] gap-6">
          {/* FORM */}
          <section className="bg-white ring-1 ring-slate-200 rounded-2xl p-6 h-fit">
            <div className="flex items-center justify-between mb-5">
              <h2 className="text-lg font-bold text-brand-ink flex items-center gap-2">
                {editingId ? (
                  <>
                    <Pencil className="h-4 w-4" /> Editar oferta
                  </>
                ) : (
                  <>
                    <Plus className="h-4 w-4" /> Nova oferta
                  </>
                )}
              </h2>
              {editingId && (
                <button
                  onClick={resetForm}
                  className="text-xs text-brand-muted hover:text-brand-ink inline-flex items-center gap-1"
                >
                  <X className="h-3.5 w-3.5" /> cancelar edição
                </button>
              )}
            </div>

            <form onSubmit={handleSave} className="space-y-5">
              {/* 1. Escolha da peça */}
              <div>
                <label className="field-label">1. Peça (catálogo oficial)</label>
                {selectedPart ? (
                  <div className="rounded-xl border border-brand-primary/40 bg-blue-50 p-3 flex items-start gap-3">
                    <div className="h-9 w-9 rounded-lg bg-white grid place-items-center text-brand-primary ring-1 ring-brand-primary/20">
                      <Package className="h-4 w-4" />
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="font-semibold text-brand-ink leading-tight">
                        {selectedPart.name}
                      </div>
                      <div className="text-xs text-brand-muted mt-0.5">
                        {selectedPart.categoryName} • <span className="font-mono">{selectedPart.manufacturerCode}</span>
                      </div>
                      
                      {/* Cruzamento de dados */}
                      <div className="mt-2 pt-2 border-t border-brand-primary/20">
                        <div className="text-[11px] font-semibold text-brand-ink mb-1 flex items-center gap-1">
                          <Wrench className="h-3 w-3" /> Serve em (Catálogo Cruzado):
                        </div>
                        {loadingCompat ? (
                          <div className="text-[11px] text-brand-muted">Carregando compatibilidade...</div>
                        ) : compatibleVehicles && Object.keys(compatibleVehicles).length > 0 ? (
                          <div className="text-[11px] text-brand-muted leading-relaxed space-y-1">
                            {Object.entries(compatibleVehicles).map(([brand, models]) => (
                              <div key={brand}>
                                <strong className="text-brand-ink">{brand}:</strong>{" "}
                                {Object.entries(models as any).map(([model, versions]) => (
                                  <span key={model}>
                                    {model} ({(versions as any[]).map(v => `${v.year}`).join(", ")}),{" "}
                                  </span>
                                ))}
                              </div>
                            ))}
                          </div>
                        ) : (
                          <div className="text-[11px] text-brand-muted">Nenhuma compatibilidade registrada.</div>
                        )}
                      </div>
                    </div>
                    <button
                      type="button"
                      onClick={() => setSelectedPart(null)}
                      className="text-brand-muted hover:text-red-600"
                      aria-label="trocar peça"
                    >
                      <X className="h-4 w-4" />
                    </button>
                  </div>
                ) : (
                  <PartAutocomplete onPick={setSelectedPart} />
                )}
              </div>

              {/* 2. Preço */}
              <div>
                <label className="field-label">2. Preço (R$)</label>
                <div className="relative">
                  <span className="absolute left-3 top-1/2 -translate-y-1/2 text-brand-muted">
                    R$
                  </span>
                  <input
                    type="text"
                    inputMode="decimal"
                    className="field pl-10"
                    placeholder="189,90"
                    value={price}
                    onChange={(e) => setPrice(formatBRLInput(e.target.value))}
                  />
                </div>
              </div>

              {/* 3. Condição */}
              <div>
                <label className="field-label">3. Condição</label>
                <div className="grid grid-cols-2 gap-2">
                  <button
                    type="button"
                    onClick={() => setCondition("NOVO")}
                    className={`h-12 rounded-lg border-2 font-semibold inline-flex items-center justify-center gap-2 transition ${
                      condition === "NOVO"
                        ? "border-emerald-500 bg-emerald-50 text-emerald-700"
                        : "border-slate-200 bg-white text-brand-muted hover:border-slate-300"
                    }`}
                  >
                    <BadgeCheck className="h-4 w-4" />
                    Novo
                  </button>
                  <button
                    type="button"
                    onClick={() => setCondition("USADO")}
                    className={`h-12 rounded-lg border-2 font-semibold inline-flex items-center justify-center gap-2 transition ${
                      condition === "USADO"
                        ? "border-amber-500 bg-amber-50 text-amber-700"
                        : "border-slate-200 bg-white text-brand-muted hover:border-slate-300"
                    }`}
                  >
                    <History className="h-4 w-4" />
                    Usado
                  </button>
                </div>
              </div>

              {/* 4. Estoque */}
              <label className="flex items-center justify-between gap-3 rounded-lg border border-slate-200 px-4 py-3 cursor-pointer hover:bg-slate-50">
                <div>
                  <div className="text-sm font-semibold text-brand-ink">
                    Em estoque agora?
                  </div>
                  <div className="text-xs text-brand-muted">
                    Se desligar, aparece como “Sob encomenda”.
                  </div>
                </div>
                <span
                  className={`relative inline-flex h-6 w-11 items-center rounded-full transition ${
                    inStock ? "bg-emerald-500" : "bg-slate-300"
                  }`}
                >
                  <span
                    className={`inline-block h-5 w-5 rounded-full bg-white shadow transition ${
                      inStock ? "translate-x-5" : "translate-x-1"
                    }`}
                  />
                </span>
                <input
                  type="checkbox"
                  className="sr-only"
                  checked={inStock}
                  onChange={(e) => setInStock(e.target.checked)}
                />
              </label>

              {/* 5. Observações */}
              <div>
                <label className="field-label">Observações (opcional)</label>
                <textarea
                  rows={3}
                  className="field !h-auto py-2 leading-relaxed resize-none"
                  placeholder="Ex.: garantia de 6 meses, entrega grátis na região..."
                  value={notes}
                  onChange={(e) => setNotes(e.target.value)}
                />
              </div>

              <button type="submit" className="btn-primary w-full">
                <Save className="h-4 w-4" />
                {editingId ? "Salvar alterações" : "Publicar oferta"}
              </button>
            </form>
          </section>

          {/* LISTA */}
          <section>
            <div className="flex items-baseline justify-between mb-4">
              <div>
                <h2 className="text-lg font-bold text-brand-ink">
                  Suas ofertas ativas
                </h2>
                <p className="text-sm text-brand-muted">
                  {offers.length}{" "}
                  {offers.length === 1 ? "oferta cadastrada" : "ofertas cadastradas"}
                  {offers.length > 0 && (
                    <>
                      {" • "}
                      <Link
                        href="/search?q="
                        className="text-brand-primary font-medium hover:underline inline-flex items-center gap-1"
                      >
                        Ver na busca do comprador <ExternalLink className="h-3 w-3" />
                      </Link>
                    </>
                  )}
                </p>
              </div>
            </div>

            {offers.length === 0 ? (
              <div className="bg-white ring-1 ring-slate-200 rounded-2xl p-10 text-center">
                <div className="h-14 w-14 rounded-full bg-slate-100 grid place-items-center mx-auto">
                  <Package className="h-6 w-6 text-slate-400" />
                </div>
                <div className="mt-3 font-semibold text-brand-ink">
                  Você ainda não publicou ofertas
                </div>
                <p className="text-sm text-brand-muted mt-1 max-w-sm mx-auto">
                  Escolha uma peça do catálogo ao lado, defina preço e condição.
                  Sua loja passa a aparecer para compradores da região.
                </p>
              </div>
            ) : (
              <ul className="space-y-3">
                {offers.map((o) => (
                  <InventoryRow
                    key={o.id}
                    offer={o}
                    onEdit={() => loadInto(o)}
                    onDelete={() => handleDelete(o.id)}
                  />
                ))}
              </ul>
            )}
          </section>
        </div>
      </main>

      {/* toast */}
      {toast && (
        <div className="fixed bottom-6 left-1/2 -translate-x-1/2 z-50">
          <div className="bg-brand-ink text-white text-sm rounded-lg shadow-lg px-4 py-2.5 inline-flex items-center gap-2">
            <Check className="h-4 w-4 text-emerald-400" />
            {toast}
          </div>
        </div>
      )}
    </div>
  );
}

// -------- Row --------
function InventoryRow({
  offer,
  onEdit,
  onDelete,
}: {
  offer: LocalOffer;
  onEdit: () => void;
  onDelete: () => void;
}) {
  const [partInfo, setPartInfo] = useState<{
    name: string;
    code: string;
    category: string;
  } | null>(null);

  useEffect(() => {
    import("@/db/mock-offers").then(({ mockMasterParts }) => {
      const p = mockMasterParts.find((mp) => mp.id === offer.partId);
      if (p) {
        setPartInfo({
          name: p.name,
          code: p.manufacturerCode,
          category: p.categoryName,
        });
      }
    });
  }, [offer.partId]);

  return (
    <li className="bg-white ring-1 ring-slate-200 rounded-2xl p-4 md:p-5 hover:shadow-sm transition">
      <div className="flex items-start gap-4">
        <div className="flex-1 min-w-0">
          <div className="flex items-center flex-wrap gap-2">
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
            {partInfo && (
              <span className="badge bg-slate-100 text-brand-muted">
                {partInfo.category}
              </span>
            )}
          </div>
          <div className="mt-1.5 font-bold text-brand-ink">
            {partInfo?.name ?? "Carregando..."}
          </div>
          {partInfo && (
            <div className="text-xs text-brand-muted mt-0.5">
              Cód.: <span className="font-mono">{partInfo.code}</span>
            </div>
          )}
          {offer.notes && (
            <div className="text-sm text-brand-muted mt-2 italic">
              “{offer.notes}”
            </div>
          )}
        </div>

        <div className="text-right">
          <div className="text-xl font-extrabold text-brand-ink leading-none">
            {formatBRL(offer.price)}
          </div>
          <div className="flex items-center gap-1 mt-3 justify-end">
            <button
              onClick={onEdit}
              className="h-8 w-8 grid place-items-center rounded-lg text-brand-muted hover:text-brand-primary hover:bg-blue-50 transition"
              title="Editar"
            >
              <Pencil className="h-4 w-4" />
            </button>
            <button
              onClick={onDelete}
              className="h-8 w-8 grid place-items-center rounded-lg text-brand-muted hover:text-red-600 hover:bg-red-50 transition"
              title="Excluir"
            >
              <Trash2 className="h-4 w-4" />
            </button>
          </div>
        </div>
      </div>
    </li>
  );
}

// -------- Autocomplete --------
function PartAutocomplete({
  onPick,
}: {
  onPick: (p: CatalogPart) => void;
}) {
  const [q, setQ] = useState("");
  const [items, setItems] = useState<CatalogPart[]>([]);
  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);
  const ref = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (q.trim().length < 2) {
      setItems([]);
      return;
    }
    setLoading(true);
    const t = setTimeout(() => {
      fetch(`/api/seller/parts/search?q=${encodeURIComponent(q.trim())}`)
        .then((r) => r.json())
        .then((d: any) => setItems(d.parts ?? []))
        .finally(() => setLoading(false));
    }, 200);
    return () => clearTimeout(t);
  }, [q]);

  useEffect(() => {
    function handle(e: MouseEvent) {
      if (ref.current && !ref.current.contains(e.target as Node)) setOpen(false);
    }
    document.addEventListener("click", handle);
    return () => document.removeEventListener("click", handle);
  }, []);

  return (
    <div className="relative" ref={ref}>
      <div className="relative">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400" />
        <input
          type="text"
          className="field pl-10"
          placeholder="Buscar peça no catálogo (ex.: pastilha, correia...)"
          value={q}
          onChange={(e) => {
            setQ(e.target.value);
            setOpen(true);
          }}
          onFocus={() => setOpen(true)}
        />
      </div>
      {open && q.trim().length >= 2 && (
        <div className="absolute z-20 left-0 right-0 mt-2 bg-white rounded-xl shadow-xl ring-1 ring-slate-200 max-h-80 overflow-y-auto">
          {loading && (
            <div className="px-4 py-3 text-sm text-brand-muted">Buscando...</div>
          )}
          {!loading && items.length === 0 && (
            <div className="px-4 py-3 text-sm text-brand-muted">
              Nenhuma peça encontrada no catálogo.
            </div>
          )}
          {items.map((p) => (
            <button
              key={p.id}
              type="button"
              className="w-full text-left px-4 py-3 hover:bg-blue-50 border-b border-slate-100 last:border-0 transition"
              onClick={() => {
                onPick(p);
                setOpen(false);
                setQ("");
              }}
            >
              <div className="font-semibold text-brand-ink text-sm">
                {p.name}
              </div>
              <div className="text-xs text-brand-muted mt-0.5 flex items-center gap-2">
                <span>{p.categoryName}</span>
                <span>•</span>
                <span className="font-mono">{p.manufacturerCode}</span>
                <span>•</span>
                <span className="text-brand-primary">
                  ref. {formatBRL(p.basePrice)}
                </span>
              </div>
            </button>
          ))}
        </div>
      )}
    </div>
  );
}
