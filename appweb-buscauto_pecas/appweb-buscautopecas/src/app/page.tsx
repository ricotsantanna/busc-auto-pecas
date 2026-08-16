"use client";

import { useEffect, useMemo, useState, useRef } from "react";
import { useRouter } from "next/navigation";
import {
  Search,
  ShieldCheck,
  Store,
  Percent,
  Wrench,
  MessageCircle,
  ChevronRight,
  Loader2,
  MapPin,
  Disc,
  Cog,
  Waves,
  Zap,
  Filter as FilterIcon,
  GitBranch,
  Lightbulb,
  Package,
  ArrowRight,
} from "lucide-react";

type Brand = { id: string; name: string; slug: string };
type CarModel = { id: string; name: string; brandId: string };
type CarVersion = {
  id: string;
  versionName: string;
  modelId: string;
  year: number;
  engine: string | null;
};
type Category = {
  id: string;
  name: string;
  slug: string;
  icon: string;
  partCount: number;
};

const categoryIconMap: Record<string, React.ComponentType<{ className?: string }>> = {
  Disc,
  Cog,
  Waves,
  Zap,
  Filter: FilterIcon,
  GitBranch,
  Lightbulb,
};

export default function HomePage() {
  const router = useRouter();

  const [segment, setSegment] = useState<"CARRO" | "ELETRICO" | "MOTO" | "AUTOPROPELIDO">("CARRO");

  const [brands, setBrands] = useState<Brand[]>([]);
  const [models, setModels] = useState<CarModel[]>([]);
  const [versions, setVersions] = useState<CarVersion[]>([]);
  const [categories, setCategories] = useState<Category[]>([]);

  const [selectedBrand, setSelectedBrand] = useState<string>("");
  const [selectedModel, setSelectedModel] = useState<string>("");
  const [selectedYear, setSelectedYear] = useState<string>("");
  const [selectedVersion, setSelectedVersion] = useState<string>("");
  const [partQuery, setPartQuery] = useState<string>("");
  const [partSuggestions, setPartSuggestions] = useState<string[]>([]);
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
  const [searchingParts, setSearchingParts] = useState(false);
  const debounceRef = useRef<NodeJS.Timeout>();

  const [loadingBrands, setLoadingBrands] = useState(true);
  const [loadingModels, setLoadingModels] = useState(false);
  const [loadingVersions, setLoadingVersions] = useState(false);

  // Carrega montadoras quando o segmento muda
  useEffect(() => {
    setSelectedBrand("");
    setSelectedModel("");
    setSelectedYear("");
    setSelectedVersion("");
    setBrands([]);
    setModels([]);
    setVersions([]);
    setLoadingBrands(true);

    (async () => {
      try {
        let fetchType = "carro";
        if (segment === "MOTO") fetchType = "moto";
        if (segment === "ELETRICO") fetchType = "eletrico";
        if (segment === "AUTOPROPELIDO") fetchType = "autopropelido";
        
        const res = await fetch(`/api/fipe/brands?type=${fetchType}`);
        const result: any = await res.json();
        setBrands(result.data ?? []);
      } catch {
        setBrands([]);
      } finally {
        setLoadingBrands(false);
      }
    })();
  }, [segment]);

  // Carrega categorias (em paralelo)
  useEffect(() => {
    (async () => {
      try {
        const res = await fetch("/api/categories");
        const data: any = await res.json();
        setCategories(data.categories ?? []);
      } catch {
        setCategories([]);
      }
    })();
  }, []);

  // Modelos quando brand muda
  useEffect(() => {
    setModels([]);
    setVersions([]);
    setSelectedModel("");
    setSelectedYear("");
    setSelectedVersion("");
    if (!selectedBrand) return;
    setLoadingModels(true);
    (async () => {
      try {
        const res = await fetch(`/api/fipe/models?brandId=${selectedBrand}`);
        const result: any = await res.json();
        setModels(result.data ?? []);
      } finally {
        setLoadingModels(false);
      }
    })();
  }, [selectedBrand]);

  // Versões quando modelo muda
  useEffect(() => {
    setVersions([]);
    setSelectedYear("");
    setSelectedVersion("");
    if (!selectedModel) return;
    setLoadingVersions(true);
    (async () => {
      try {
        const res = await fetch(`/api/fipe/versions?modelId=${selectedModel}`);
        const result: any = await res.json();
        setVersions(result.data ?? []);
      } finally {
        setLoadingVersions(false);
      }
    })();
  }, [selectedModel]);

  const handlePartSearch = (text: string) => {
    setPartQuery(text);
    
    if (debounceRef.current) clearTimeout(debounceRef.current);
    
    if (text.length < 2) {
      setPartSuggestions([]);
      setIsDropdownOpen(false);
      return;
    }

    setSearchingParts(true);
    setIsDropdownOpen(true);

    debounceRef.current = setTimeout(async () => {
      try {
        const res = await fetch(`/api/parts/search?q=${encodeURIComponent(text)}`);
        const data = await res.json();
        setPartSuggestions(data.parts || []);
      } catch (e) {
        console.error(e);
      } finally {
        setSearchingParts(false);
      }
    }, 300);
  };

  const handleSelectSuggestion = (suggestion: string) => {
    setPartQuery(suggestion);
    setIsDropdownOpen(false);
  };

  const canSearch = useMemo(
    () => !!selectedVersion && partQuery.trim().length >= 2,
    [selectedVersion, partQuery]
  );

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!canSearch) return;
    const params = new URLSearchParams({
      brand: selectedBrand,
      model: selectedModel,
      version: selectedVersion,
      q: partQuery.trim(),
    });
    router.push(`/search?${params.toString()}`);
  }

  return (
    <div className="min-h-screen flex flex-col bg-brand-bg">
      {/* ==================== HEADER ==================== */}
      <header className="bg-brand-primary text-white sticky top-0 z-40 shadow-sm">
        <div className="container flex items-center justify-between h-16">
          <div className="flex items-center gap-2.5">
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
          </div>
          <nav className="hidden md:flex items-center gap-6 text-sm font-medium text-white/90">
            <a href="#como-funciona" className="hover:text-white transition">Como funciona</a>
            <a href="/login" className="hover:text-white transition">Sou lojista</a>
            <a
              href="/login"
              className="inline-flex items-center gap-1 rounded-lg bg-white/10 hover:bg-white/20 px-3 py-1.5 ring-1 ring-white/20 transition"
            >
              <Store className="h-4 w-4" /> Painel da loja
            </a>
          </nav>
        </div>
      </header>

      {/* ==================== HERO + FORM ==================== */}
      <section className="relative overflow-hidden">
        {/* fundo com gradiente sutil */}
        <div className="absolute inset-0 bg-gradient-to-b from-blue-50 via-brand-bg to-brand-bg" />
        <div className="absolute -top-24 -right-24 w-96 h-96 rounded-full bg-brand-secondary/10 blur-3xl" />
        <div className="absolute top-40 -left-24 w-80 h-80 rounded-full bg-brand-primary/10 blur-3xl" />

        <div className="relative container py-14 md:py-20">
          <div className="max-w-3xl">
            <span className="badge bg-emerald-100 text-emerald-700">
              <ShieldCheck className="h-3.5 w-3.5" /> Catálogo Mestre Controlado
            </span>
            <h1 className="mt-4 text-4xl md:text-5xl font-extrabold tracking-tight text-brand-ink leading-[1.1]">
              Encontre a peça certa,{" "}
              <span className="text-brand-primary">pelo menor preço</span>,
              perto de você.
            </h1>
            <p className="mt-4 text-lg text-brand-muted max-w-2xl">
              Compare ofertas de peças <b>novas</b> e <b>usadas</b> em lojas
              físicas parceiras. Fale direto pelo WhatsApp e economize sem sair
              do seu bairro.
            </p>
          </div>

          {/* SEARCH CARD */}
          <form
            onSubmit={handleSubmit}
            className="mt-10 bg-white rounded-2xl shadow-xl ring-1 ring-slate-200 p-6 md:p-8 max-w-5xl"
          >
            {/* SEGMENT SELECTOR TABS */}
            <div className="grid grid-cols-2 md:flex md:flex-row gap-2 border-b border-slate-100 pb-5 mb-6">
              <button
                type="button"
                onClick={() => setSegment("CARRO")}
                className={`px-2 md:px-4 py-2.5 rounded-xl font-bold text-xs md:text-sm transition flex flex-col md:flex-row items-center justify-center md:justify-start gap-1 md:gap-2 ${
                  segment === "CARRO"
                    ? "bg-brand-primary text-white shadow-md ring-2 ring-brand-primary/20"
                    : "bg-slate-100 text-slate-700 hover:bg-slate-200"
                }`}
              >
                <span className="text-base md:text-sm">🚗</span>
                <span className="hidden md:inline">Carros & Utilitários</span>
                <span className="md:hidden">Carros</span>
              </button>
              <button
                type="button"
                onClick={() => setSegment("ELETRICO")}
                className={`px-2 md:px-4 py-2.5 rounded-xl font-bold text-xs md:text-sm transition flex flex-col md:flex-row items-center justify-center md:justify-start gap-1 md:gap-2 ${
                  segment === "ELETRICO"
                    ? "bg-emerald-600 text-white shadow-md ring-2 ring-emerald-600/20"
                    : "bg-slate-100 text-slate-700 hover:bg-slate-200"
                }`}
              >
                <span className="text-base md:text-sm">⚡</span>
                <span className="hidden md:inline">Elétricos (BYD, GWM...)</span>
                <span className="md:hidden">Elétricos</span>
              </button>
              <button
                type="button"
                onClick={() => setSegment("MOTO")}
                className={`px-2 md:px-4 py-2.5 rounded-xl font-bold text-xs md:text-sm transition flex flex-col md:flex-row items-center justify-center md:justify-start gap-1 md:gap-2 ${
                  segment === "MOTO"
                    ? "bg-brand-secondary text-white shadow-md ring-2 ring-brand-secondary/20"
                    : "bg-slate-100 text-slate-700 hover:bg-slate-200"
                }`}
              >
                <span className="text-base md:text-sm">🏍️</span>
                <span className="hidden md:inline">Motos & Ciclomotores</span>
                <span className="md:hidden">Motos</span>
              </button>
              <button
                type="button"
                onClick={() => setSegment("AUTOPROPELIDO")}
                className={`px-2 md:px-4 py-2.5 rounded-xl font-bold text-xs md:text-sm transition flex flex-col md:flex-row items-center justify-center md:justify-start gap-1 md:gap-2 ${
                  segment === "AUTOPROPELIDO"
                    ? "bg-blue-500 text-white shadow-md ring-2 ring-blue-500/20"
                    : "bg-slate-100 text-slate-700 hover:bg-slate-200"
                }`}
              >
                <span className="text-base md:text-sm">🛴</span>
                <span className="hidden md:inline">Scooters & Autopropel.</span>
                <span className="md:hidden">Scooters</span>
              </button>
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              {/* MONTADORA */}
              <div>
                <label className="field-label" htmlFor="brand">
                  1. Montadora
                </label>
                <div className="relative">
                  <select
                    id="brand"
                    className="field appearance-none pr-10"
                    value={selectedBrand}
                    onChange={(e) => setSelectedBrand(e.target.value)}
                    disabled={loadingBrands}
                  >
                    <option value="">
                      {loadingBrands ? "Carregando..." : "Selecione a montadora"}
                    </option>
                    {brands.map((b) => (
                      <option key={b.id} value={b.id}>
                        {b.name}
                      </option>
                    ))}
                  </select>
                  <ChevronRight className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400 rotate-90" />
                </div>
              </div>

              {/* MODELO */}
              <div>
                <label className="field-label" htmlFor="model">
                  2. Modelo
                </label>
                <div className="relative">
                  <select
                    id="model"
                    className="field appearance-none pr-10"
                    value={selectedModel}
                    onChange={(e) => setSelectedModel(e.target.value)}
                    disabled={!selectedBrand || loadingModels}
                  >
                    <option value="">
                      {!selectedBrand
                        ? "Escolha a montadora primeiro"
                        : loadingModels
                        ? "Carregando..."
                        : "Selecione o modelo"}
                    </option>
                    {models.map((m) => (
                      <option key={m.id} value={m.id}>
                        {m.name}
                      </option>
                    ))}
                  </select>
                  <ChevronRight className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400 rotate-90" />
                </div>
              </div>

              {/* ANO DO MODELO */}
              <div>
                <label className="field-label" htmlFor="year">
                  3. Ano do Modelo
                </label>
                <div className="relative">
                  <select
                    id="year"
                    className="field appearance-none pr-10"
                    value={selectedYear}
                    onChange={(e) => {
                      setSelectedYear(e.target.value);
                      setSelectedVersion("");
                    }}
                    disabled={!selectedModel || loadingVersions || versions.length === 0}
                  >
                    <option value="">
                      {!selectedModel
                        ? "Escolha o modelo primeiro"
                        : loadingVersions
                        ? "Carregando..."
                        : "Todos os Anos"}
                    </option>
                    {Array.from(new Set(versions.map((v) => v.year)))
                      .sort((a, b) => b - a)
                      .map((yr) => (
                        <option key={yr} value={String(yr)}>
                          Ano {yr}
                        </option>
                      ))}
                  </select>
                  <ChevronRight className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400 rotate-90" />
                </div>
              </div>

              {/* VERSÃO */}
              <div>
                <label className="field-label" htmlFor="version">
                  4. Versão / Motorização
                </label>
                <div className="relative">
                  <select
                    id="version"
                    className="field appearance-none pr-10"
                    value={selectedVersion}
                    onChange={(e) => setSelectedVersion(e.target.value)}
                    disabled={!selectedModel || loadingVersions}
                  >
                    <option value="">
                      {!selectedModel
                        ? "Escolha o modelo primeiro"
                        : loadingVersions
                        ? "Carregando..."
                        : "Todas as versões"}
                    </option>
                    {(selectedYear
                      ? versions.filter((v) => String(v.year) === selectedYear)
                      : versions
                    ).map((v) => (
                      <option key={v.id} value={v.id}>
                        {v.year} — {v.versionName} {v.engine}
                      </option>
                    ))}
                  </select>
                  <ChevronRight className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400 rotate-90" />
                </div>
              </div>
            </div>

            {/* PEÇA + BOTÃO */}
            <div className="mt-6 grid grid-cols-1 md:grid-cols-[1fr_auto] gap-4">
              <div>
                <label className="field-label" htmlFor="part">
                  5. Qual peça você precisa?
                </label>
                <div className="relative">
                  <Search className="pointer-events-none absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-slate-400" />
                  <input
                    id="part"
                    name="q"
                    type="text"
                    autoComplete="off"
                    className="field pl-10"
                    placeholder="Ex.: pastilha de freio, farol, coxim do motor..."
                    value={partQuery}
                    onChange={(e) => handlePartSearch(e.target.value)}
                    onFocus={() => {
                      if (partSuggestions.length > 0) setIsDropdownOpen(true);
                    }}
                    onBlur={() => {
                      // Delay hiding so clicks on suggestions register
                      setTimeout(() => setIsDropdownOpen(false), 200);
                    }}
                    disabled={!selectedVersion}
                  />
                  {searchingParts && (
                    <Loader2 className="absolute right-3 top-1/2 -translate-y-1/2 w-5 h-5 text-brand-primary animate-spin" />
                  )}

                  {/* Autocomplete Dropdown */}
                  {isDropdownOpen && partQuery.length >= 2 && (
                    <div className="absolute z-10 w-full mt-1 bg-white border border-slate-200 rounded-lg shadow-xl overflow-hidden max-h-60 overflow-y-auto">
                      {partSuggestions.length > 0 ? (
                        <ul className="divide-y divide-slate-100">
                          {partSuggestions.map((suggestion, idx) => (
                            <li 
                              key={idx} 
                              className="p-3 hover:bg-slate-50 cursor-pointer text-sm font-medium text-slate-700 transition-colors"
                              onClick={() => handleSelectSuggestion(suggestion)}
                            >
                              {suggestion}
                            </li>
                          ))}
                        </ul>
                      ) : (
                        <div className="p-3 text-center text-sm text-slate-500">
                          {!searchingParts && "Nenhuma peça mestre encontrada."}
                        </div>
                      )}
                    </div>
                  )}
                </div>
              </div>
              <div className="flex items-end">
                <button
                  type="submit"
                  disabled={!canSearch}
                  className="btn-primary w-full md:w-auto md:min-w-[180px]"
                >
                  {canSearch ? (
                    <>
                      <Search className="h-5 w-5" /> Buscar peças
                    </>
                  ) : (
                    <>Buscar peças</>
                  )}
                </button>
              </div>
            </div>

            {/* dicas rápidas */}
            <div className="mt-6 flex flex-wrap gap-2">
              <span className="badge bg-slate-100 text-slate-600">Populares:</span>
              {[
                "pastilha de freio",
                "amortecedor",
                "correia dentada",
                "bateria",
                "filtro de óleo",
              ].map((p) => (
                <button
                  key={p}
                  type="button"
                  onClick={() => setPartQuery(p)}
                  className="badge bg-white ring-1 ring-slate-200 text-brand-muted hover:text-brand-primary hover:ring-brand-primary/40 transition"
                >
                  {p}
                </button>
              ))}
            </div>
          </form>

          {/* micro trust bar */}
          <div className="mt-8 flex flex-wrap items-center gap-x-8 gap-y-3 text-sm text-brand-muted">
            <div className="inline-flex items-center gap-2">
              <Percent className="h-4 w-4 text-brand-secondary" />
              Menor preço sempre no topo
            </div>
            <div className="inline-flex items-center gap-2">
              <MessageCircle className="h-4 w-4 text-emerald-600" />
              Contato direto via WhatsApp
            </div>
            <div className="inline-flex items-center gap-2">
              <MapPin className="h-4 w-4 text-brand-primary" />
              Lojas físicas locais
            </div>
          </div>
        </div>
      </section>

      {/* ==================== CATEGORIAS ==================== */}
      <section className="container pt-14 md:pt-20">
        <div className="flex items-end justify-between flex-wrap gap-3">
          <div>
            <h2 className="text-3xl font-bold text-brand-ink">
              Buscar por categoria
            </h2>
            <p className="mt-2 text-brand-muted max-w-lg">
              Não sabe o nome exato da peça? Comece pela categoria e refine.
            </p>
          </div>
          <div className="text-sm text-brand-muted">
            {categories.reduce((acc, c) => acc + c.partCount, 0)} peças
            catalogadas
          </div>
        </div>

        <div className="mt-6 grid grid-cols-2 md:grid-cols-4 xl:grid-cols-8 gap-3">
          {categories.map((c) => {
            const Icon = categoryIconMap[c.icon] ?? Package;
            return (
              <a
                key={c.id}
                href={`/search?q=${encodeURIComponent(c.name)}`}
                className="group bg-white rounded-2xl ring-1 ring-slate-200 p-4 hover:ring-brand-primary hover:shadow-md transition text-center"
              >
                <div className="h-11 w-11 mx-auto rounded-xl bg-blue-50 text-brand-primary grid place-items-center group-hover:bg-brand-primary group-hover:text-white transition">
                  <Icon className="h-5 w-5" />
                </div>
                <div className="mt-3 font-semibold text-brand-ink text-sm">
                  {c.name}
                </div>
                <div className="text-[11px] text-brand-muted mt-0.5">
                  {c.partCount} peças
                </div>
              </a>
            );
          })}
        </div>
      </section>

      {/* ==================== COMO FUNCIONA ==================== */}
      <section id="como-funciona" className="container py-16">
        <div className="max-w-2xl">
          <h2 className="text-3xl font-bold text-brand-ink">Como funciona</h2>
          <p className="mt-2 text-brand-muted">
            Um catálogo padronizado que elimina duplicidade de anúncios: o
            lojista só vincula preço e estoque a peças já cadastradas por nós.
          </p>
        </div>

        <div className="mt-10 grid grid-cols-1 md:grid-cols-3 gap-6">
          {[
            {
              icon: <Search className="h-6 w-6" />,
              title: "1. Selecione seu carro",
              desc: "Montadora, modelo e versão. Digite o nome da peça que você precisa.",
              color: "bg-blue-50 text-brand-primary",
            },
            {
              icon: <Percent className="h-6 w-6" />,
              title: "2. Compare os preços",
              desc: "Veja ofertas de lojas parceiras ordenadas do menor para o maior preço.",
              color: "bg-orange-50 text-brand-secondary",
            },
            {
              icon: <MessageCircle className="h-6 w-6" />,
              title: "3. Fale pelo WhatsApp",
              desc: "Botão direto para a loja com a peça e o valor já preenchidos.",
              color: "bg-emerald-50 text-emerald-600",
            },
          ].map((step, i) => (
            <div
              key={i}
              className="rounded-2xl bg-white ring-1 ring-slate-200 p-6 hover:shadow-md transition"
            >
              <div
                className={`h-11 w-11 rounded-xl grid place-items-center ${step.color}`}
              >
                {step.icon}
              </div>
              <h3 className="mt-4 font-semibold text-brand-ink">{step.title}</h3>
              <p className="mt-1 text-sm text-brand-muted leading-relaxed">
                {step.desc}
              </p>
            </div>
          ))}
        </div>
      </section>

      {/* ==================== LOJISTAS CTA ==================== */}
      <section id="lojistas" className="bg-white border-y border-slate-200">
        <div className="container py-14 grid md:grid-cols-2 gap-8 items-center">
          <div>
            <span className="badge bg-orange-100 text-brand-secondary">
              <Store className="h-3.5 w-3.5" /> Para lojistas
            </span>
            <h2 className="mt-3 text-3xl font-bold text-brand-ink">
              Anuncie preço e estoque em minutos
            </h2>
            <p className="mt-2 text-brand-muted max-w-lg">
              Sem cadastro de peças duplicadas. Escolha do catálogo oficial,
              defina se é <b>Nova</b> ou <b>Usada</b>, coloque o preço e pronto
              — receba clientes locais no seu WhatsApp.
            </p>
            <a href="/login" className="btn-primary mt-6">
              <Store className="h-5 w-5" /> Acessar painel da loja
            </a>
          </div>
          <div className="grid grid-cols-2 gap-4">
            {[
              { k: "Peças no catálogo", v: "12.480+" },
              { k: "Lojas parceiras", v: "340+" },
              { k: "Buscas / mês", v: "98 mil" },
              { k: "Economia média", v: "32%" },
            ].map((s) => (
              <div
                key={s.k}
                className="rounded-2xl bg-brand-bg ring-1 ring-slate-200 p-5"
              >
                <div className="text-2xl font-extrabold text-brand-primary">
                  {s.v}
                </div>
                <div className="text-xs text-brand-muted mt-1">{s.k}</div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ==================== FOOTER ==================== */}
      <footer className="mt-auto">
        <div className="container py-8 flex flex-col md:flex-row items-center justify-between gap-4 text-sm text-brand-muted">
          <div>
            © {new Date().getFullYear()} BuscAutoPeças — buscautopecas.com.br
          </div>
          <div className="flex items-center gap-4">
            <a href="#" className="hover:text-brand-primary">Termos</a>
            <a href="#" className="hover:text-brand-primary">Privacidade</a>
            <a href="#" className="hover:text-brand-primary">Contato</a>
          </div>
        </div>
      </footer>

      {/* loading overlay opcional na primeira carga */}
      {loadingBrands && (
        <div className="fixed bottom-4 right-4 bg-white ring-1 ring-slate-200 shadow rounded-lg px-3 py-2 text-xs text-brand-muted inline-flex items-center gap-2">
          <Loader2 className="h-3.5 w-3.5 animate-spin" /> Carregando catálogo...
        </div>
      )}
    </div>
  );
}
