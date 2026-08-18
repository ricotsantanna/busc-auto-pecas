"use client";

import { useState, useEffect, useRef } from "react";
import { Plus, Search, Filter, Loader2, PackageX, Sparkles, Car, ChevronDown, CheckCircle2, X, Edit3, Trash2, PauseCircle, PlayCircle, AlertTriangle } from "lucide-react";

export function groupCompatibilities(rawItems: string[]): string[] {
  if (!rawItems || rawItems.length === 0) return [];

  const modelYearsMap = new Map<string, Set<number>>();
  const unparsedItems: string[] = [];

  for (const item of rawItems) {
    if (typeof item !== "string" || !item.trim()) continue;
    const cleanItem = item.trim();

    // Tenta extrair ano de 4 dígitos (19xx ou 20xx) do final ou entre parênteses
    const yearMatch = cleanItem.match(/\b(19\d{2}|20\d{2})\b/);
    if (yearMatch) {
      const year = parseInt(yearMatch[1], 10);
      // Remove o ano e parênteses do modelo para agrupar
      let modelKey = cleanItem
        .replace(/\b(19\d{2}|20\d{2})\b/g, "")
        .replace(/\(\s*\)/g, "")
        .replace(/-\s*$/g, "")
        .replace(/\s+/g, " ")
        .trim();

      if (modelKey.length > 0) {
        if (!modelYearsMap.has(modelKey)) {
          modelYearsMap.set(modelKey, new Set<number>());
        }
        modelYearsMap.get(modelKey)!.add(year);
        continue;
      }
    }

    if (!unparsedItems.includes(cleanItem)) {
      unparsedItems.push(cleanItem);
    }
  }

  const result: string[] = [];

  modelYearsMap.forEach((yearSet, model) => {
    const years = Array.from(yearSet).sort((a, b) => a - b);

    const ranges: string[] = [];
    let startYear = years[0];
    let prevYear = years[0];

    for (let i = 1; i < years.length; i++) {
      if (years[i] === prevYear + 1) {
        prevYear = years[i];
      } else {
        if (startYear === prevYear) {
          ranges.push(`${startYear}`);
        } else {
          ranges.push(`${startYear}–${prevYear}`);
        }
        startYear = years[i];
        prevYear = years[i];
      }
    }

    if (startYear === prevYear) {
      ranges.push(`${startYear}`);
    } else {
      ranges.push(`${startYear}–${prevYear}`);
    }

    result.push(`${model} (${ranges.join(", ")})`);
  });

  return [...result, ...unparsedItems];
}

function CompatibilityCell({ compatibilities }: { compatibilities: string[] }) {
  const [isOpen, setIsOpen] = useState(false);
  const popoverRef = useRef<HTMLDivElement>(null);

  const grouped = groupCompatibilities(compatibilities);

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (popoverRef.current && !popoverRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    }
    if (isOpen) {
      document.addEventListener("mousedown", handleClickOutside);
    }
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, [isOpen]);

  if (!grouped || grouped.length === 0) {
    return <span className="text-xs text-slate-400 italic">Sem compatibilidade vinculada</span>;
  }

  const visibleItems = grouped.slice(0, 2);
  const hiddenCount = grouped.length - 2;

  return (
    <div className="relative inline-block text-left" ref={popoverRef}>
      <div className="flex flex-wrap items-center gap-1.5">
        {visibleItems.map((item, idx) => (
          <span
            key={idx}
            className="inline-flex items-center px-2 py-1 rounded-md text-xs font-medium bg-slate-100 text-slate-700 border border-slate-200 whitespace-nowrap"
          >
            <Car className="w-3 h-3 text-slate-400 mr-1 shrink-0" />
            {item}
          </span>
        ))}

        {hiddenCount > 0 && (
          <button
            type="button"
            onClick={() => setIsOpen(!isOpen)}
            className="inline-flex items-center px-2 py-1 rounded-md text-xs font-semibold bg-orange-50 text-orange-700 hover:bg-orange-100 border border-orange-200 transition-colors cursor-pointer gap-1"
          >
            <span>+{hiddenCount} veículo{hiddenCount > 1 ? "s" : ""}</span>
            <ChevronDown className={`w-3 h-3 transition-transform ${isOpen ? "rotate-180" : ""}`} />
          </button>
        )}
      </div>

      {/* Popover elegante */}
      {isOpen && (
        <div className="absolute left-0 top-full mt-2 w-72 bg-white rounded-xl shadow-xl border border-slate-200 p-3 z-30 animate-in fade-in zoom-in-95 duration-150">
          <div className="flex items-center justify-between border-b border-slate-100 pb-2 mb-2">
            <span className="text-xs font-bold text-slate-800 uppercase tracking-wider flex items-center gap-1.5">
              <Car className="w-3.5 h-3.5 text-orange-500" />
              Aplicações Compatíveis ({grouped.length})
            </span>
            <button
              onClick={() => setIsOpen(false)}
              className="text-slate-400 hover:text-slate-600 rounded-lg p-0.5"
            >
              <X className="w-3.5 h-3.5" />
            </button>
          </div>

          <div className="max-h-60 overflow-y-auto pr-1 space-y-1.5">
            {grouped.map((item, idx) => (
              <div
                key={idx}
                className="flex items-center gap-2 p-2 rounded-lg bg-slate-50 border border-slate-100 text-xs font-medium text-slate-700 hover:bg-orange-50/50 hover:border-orange-200 transition-colors"
              >
                <CheckCircle2 className="w-3.5 h-3.5 text-emerald-500 shrink-0" />
                <span className="truncate">{item}</span>
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}


type Part = {
  id: string;
  name: string;
  manufacturer: string;
  partNumber: string;
};

type Offer = {
  id: string;
  price: string | number;
  stockQuantity: number;
  inStock?: boolean;
  condition: string;
  createdAt: string;
  compatibilities?: string[];
  part: Part;
};

export default function LojistaEstoque() {
  const [offers, setOffers] = useState<Offer[]>([]);
  const [loading, setLoading] = useState(true);

  // Edit Offer Modal State
  const [editingOffer, setEditingOffer] = useState<Offer | null>(null);
  const [editPrice, setEditPrice] = useState("");
  const [editQuantity, setEditQuantity] = useState("1");
  const [editCondition, setEditCondition] = useState("NOVO");
  const [editManufacturer, setEditManufacturer] = useState("");
  const [editPartNumber, setEditPartNumber] = useState("");
  const [savingEdit, setSavingEdit] = useState(false);

  // Delete Offer Modal State
  const [deletingOffer, setDeletingOffer] = useState<Offer | null>(null);
  const [deleting, setDeleting] = useState(false);

  // Autocomplete state
  const [query, setQuery] = useState("");
  const [suggestions, setSuggestions] = useState<Part[]>([]);
  const [searching, setSearching] = useState(false);
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
  
  // AI Request State
  const [isAiModalOpen, setIsAiModalOpen] = useState(false);
  const [aiRawText, setAiRawText] = useState("");
  const [aiLoading, setAiLoading] = useState(false);
  const [aiResult, setAiResult] = useState<any>(null);

  // Modal State
  const [selectedPart, setSelectedPart] = useState<Part | null>(null);
  const [price, setPrice] = useState("");
  const [quantity, setQuantity] = useState("1");
  const [condition, setCondition] = useState("NOVO");
  const [sidePosition, setSidePosition] = useState("NENHUM");
  const [observation, setObservation] = useState("");
  const [saving, setSaving] = useState(false);

  // Modal State (Fase 3 - Step 2)
  const [step, setStep] = useState<1 | 2>(1);
  const [segment, setSegment] = useState<"CARRO" | "ELETRICO" | "MOTO" | "AUTOPROPELIDO">("CARRO");
  const [brands, setBrands] = useState<any[]>([]);
  const [models, setModels] = useState<any[]>([]);
  const [versions, setVersions] = useState<any[]>([]);
  const [selectedBrand, setSelectedBrand] = useState("");
  const [selectedModel, setSelectedModel] = useState("");
  const [selectedYear, setSelectedYear] = useState("");
  const [selectedVersions, setSelectedVersions] = useState<string[]>([]);
  const [manufacturerName, setManufacturerName] = useState("");
  const [loadingBrands, setLoadingBrands] = useState(false);
  const [loadingModels, setLoadingModels] = useState(false);
  const [loadingVersions, setLoadingVersions] = useState(false);
  const [existingCompat, setExistingCompat] = useState<string[]>([]);
  const [loadingExistingCompat, setLoadingExistingCompat] = useState(false);
  const [aiPendingYears, setAiPendingYears] = useState<string[]>([]);
  const [aiPendingEngine, setAiPendingEngine] = useState("");

  // Debounce for search
  const debounceRef = useRef<NodeJS.Timeout>();

  // Carrega montadoras
  useEffect(() => {
    setSelectedBrand("");
    setSelectedModel("");
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
        const result = await res.json();
        setBrands(result.data ?? []);
      } catch {
        setBrands([]);
      } finally {
        setLoadingBrands(false);
      }
    })();
  }, [segment]);

  // Carrega modelos
  useEffect(() => {
    setSelectedModel("");
    setModels([]);
    setVersions([]);
    if (!selectedBrand) return;
    setLoadingModels(true);
    (async () => {
      try {
        const res = await fetch(`/api/fipe/models?brandId=${selectedBrand}`);
        const result = await res.json();
        setModels(result.data ?? []);
      } catch {
        setModels([]);
      } finally {
        setLoadingModels(false);
      }
    })();
  }, [selectedBrand]);

  // Carrega versões e auto-seleciona versões detectadas pela IA
  useEffect(() => {
    setVersions([]);
    setSelectedYear("");
    if (!selectedModel) return;
    setLoadingVersions(true);
    (async () => {
      try {
        const res = await fetch(`/api/fipe/versions?modelId=${selectedModel}`);
        const result = await res.json();
        const fetchedVersions: any[] = result.data ?? [];
        setVersions(fetchedVersions);

        // Auto-seleção inteligente via IA se houver anos ou motorização detectados
        if (aiPendingYears.length > 0 && fetchedVersions.length > 0) {
          const autoIds = fetchedVersions
            .filter((v) => {
              const matchesYear = aiPendingYears.includes(String(v.year));
              if (!matchesYear) return false;
              if (aiPendingEngine) {
                const versionName = (v.versionName || v.name || "").toUpperCase();
                const vEngine = (v.engine || "").toUpperCase();
                return versionName.includes(aiPendingEngine) || vEngine.includes(aiPendingEngine);
              }
              return true;
            })
            .map((v) => v.id);

          if (autoIds.length > 0) {
            setSelectedVersions(autoIds);
          }
          setAiPendingYears([]);
          setAiPendingEngine("");
        }
      } catch {
        setVersions([]);
      } finally {
        setLoadingVersions(false);
      }
    })();
  }, [selectedModel, aiPendingYears, aiPendingEngine]);

  useEffect(() => {
    fetchOffers();
  }, []);

  const fetchOffers = async () => {
    try {
      const res = await fetch("/api/seller/inventory");
      const data = await res.json();
      if (data.inventory) {
        const mapped = data.inventory.map((item: any) => ({
          id: item.offerId,
          price: item.price,
          stockQuantity: item.inStock ? 1 : 0,
          condition: item.condition,
          createdAt: item.createdAt,
          compatibilities: item.compatibilities || [],
          part: {
            id: item.partId,
            name: item.partName,
            manufacturer: item.brand || "Geral",
            partNumber: item.partNumber || "N/A",
          },
        }));
        setOffers(mapped);
      } else if (data.offers) {
        setOffers(data.offers);
      }
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  };

  const handleSearch = (text: string) => {
    setQuery(text);
    
    if (debounceRef.current) clearTimeout(debounceRef.current);
    
    if (text.length < 2) {
      setSuggestions([]);
      setIsDropdownOpen(false);
      return;
    }

    setSearching(true);
    setIsDropdownOpen(true);

    debounceRef.current = setTimeout(async () => {
      try {
        let res = await fetch(`/api/seller/parts/search?q=${encodeURIComponent(text)}`);
        let data = await res.json();
        let partsList = data.parts || [];

        // Se digitou frase longa (ex: 'grade frontal hyunday creta') e veio 0 resultados, tenta buscar pelas 2 primeiras palavras (ex: 'grade frontal')
        if (partsList.length === 0 && text.trim().includes(" ")) {
          const firstTwoWords = text.trim().split(/\s+/).slice(0, 2).join(" ");
          if (firstTwoWords.length >= 2) {
            const fallbackRes = await fetch(`/api/seller/parts/search?q=${encodeURIComponent(firstTwoWords)}`);
            const fallbackData = await fallbackRes.json();
            partsList = fallbackData.parts || [];
          }
        }

        setSuggestions(partsList);
      } catch (e) {
        console.error(e);
      } finally {
        setSearching(false);
      }
    }, 400);
  };

  const handleSelectPart = (part: Part) => {
    setSelectedPart(part);
    setManufacturerName(part.manufacturer && part.manufacturer !== "Desconhecido" ? part.manufacturer : "");
    setQuery("");
    setIsDropdownOpen(false);
    setStep(1);
    setSelectedVersions([]);
    setExistingCompat([]);
    setLoadingExistingCompat(true);

    fetch(`/api/parts/${part.id}`)
      .then((res) => res.json())
      .then((data) => {
        if (data.compatibleVehicles) {
          const list: string[] = [];
          Object.entries(data.compatibleVehicles).forEach(([brand, models]: [string, any]) => {
            Object.entries(models).forEach(([model, versions]: [string, any]) => {
              (versions as any[]).forEach((v) => {
                list.push(`${brand} ${model} (${v.year})`);
              });
            });
          });
          setExistingCompat(list);
        }
      })
      .catch((e) => console.error(e))
      .finally(() => setLoadingExistingCompat(false));
  };

  const handleNextStep = (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedPart) return;
    if (selectedPart && manufacturerName) {
      selectedPart.manufacturer = manufacturerName;
    }
    setStep(2);
  };

  const handleFinalizeOffer = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedPart) return;
    if (selectedVersions.length === 0) {
      alert("Selecione ao menos um veículo compatível.");
      return;
    }

    setSaving(true);
    try {
      const res = await fetch("/api/seller/inventory/add", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          partId: selectedPart.id,
          manufacturer: manufacturerName,
          price: parseFloat(price.replace(",", ".")),
          stockQuantity: parseInt(quantity, 10),
          condition,
          versionIds: selectedVersions
        }),
      });
      
      if (res.ok) {
        setSelectedPart(null);
        setPrice("");
        setManufacturerName("");
        setQuantity("1");
        setStep(1);
        setSelectedVersions([]);
        fetchOffers();
      } else {
        const data = await res.json();
        alert(data.error || "Erro ao salvar");
      }
    } catch (error) {
      console.error(error);
      alert("Erro ao salvar oferta");
    } finally {
      setSaving(false);
    }
  };

  const toggleVersion = (versionId: string) => {
    setSelectedVersions((prev) =>
      prev.includes(versionId)
        ? prev.filter((v) => v !== versionId)
        : [...prev, versionId]
    );
  };

  const requestAI = () => {
    setIsAiModalOpen(true);
    setAiRawText(query); // pre-fill with what they typed
  };

  const handleAiSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!aiRawText.trim()) return;

    setAiLoading(true);
    try {
      const res = await fetch("/api/lojista/ai/parse-part", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ rawText: aiRawText }),
      });
      const data = await res.json();
      
      if (res.ok) {
        setIsAiModalOpen(false);
        setAiRawText("");
        const cleanName = data.cleanPartName || data.extractedData?.nomeDaPeca || "Peça Automotiva";
        const mPartId = data.masterPartId || data.partId || `mp-${cleanName.toLowerCase().replace(/[^a-z0-9]+/g, "-")}`;
        
        setSelectedPart({
          id: mPartId,
          name: cleanName,
          manufacturer: data.extractedData?.fabricante || "Original",
          partNumber: data.extractedData?.codigoPeca || `IA-${mPartId.substring(0, 8).toUpperCase()}`,
        });
        setManufacturerName(data.extractedData?.fabricante || "Original");
        setSidePosition(data.sidePosition || data.extractedData?.sidePosition || "NENHUM");

        // Pre-select Montadora, Modelo e Anos se identificados pela IA!
        if (data.brandId || data.extractedData?.brandId) {
          setSelectedBrand(data.brandId || data.extractedData?.brandId);
        }
        if (data.modelId || data.extractedData?.modelId) {
          setSelectedModel(data.modelId || data.extractedData?.modelId);
        }
        if (data.yearStart || data.extractedData?.ano) {
          setSelectedYear(String(data.yearStart || data.extractedData?.ano));
        }

        const yearsList = data.years ? data.years.map(String) : (data.extractedData?.anos || []);
        if (Array.isArray(yearsList) && yearsList.length > 0) {
          setAiPendingYears(yearsList);
        }
        if (data.extractedData?.motor) {
          setAiPendingEngine(data.extractedData.motor);
        }

        setStep(1);
      } else {
        alert(data.error || "Erro ao processar com IA");
      }
    } catch (e) {
      console.error(e);
      alert("Erro de comunicação com o servidor.");
    } finally {
      setAiLoading(false);
    }
  };

  // Modal de Edição de Oferta
  const handleOpenEditModal = (offer: Offer) => {
    setEditingOffer(offer);
    setEditPrice(String(offer.price));
    setEditQuantity(String(offer.stockQuantity !== undefined ? offer.stockQuantity : (offer.inStock !== false ? 1 : 0)));
    setEditCondition(offer.condition || "NOVO");
    setEditManufacturer(offer.part.manufacturer || "Original");
    setEditPartNumber(offer.part.partNumber || "");
  };

  // Salvar Alterações na Oferta (PATCH)
  const handleSaveEdit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!editingOffer) return;

    setSavingEdit(true);
    try {
      const res = await fetch(`/api/lojista/offers/${editingOffer.id}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          price: parseFloat(editPrice),
          stockQuantity: parseInt(editQuantity, 10),
          inStock: parseInt(editQuantity, 10) > 0,
          condition: editCondition,
          manufacturer: editManufacturer,
          partNumber: editPartNumber,
        }),
      });

      if (res.ok) {
        const newStockNum = parseInt(editQuantity, 10);
        setOffers((prev) =>
          prev.map((off) =>
            off.id === editingOffer.id
              ? {
                  ...off,
                  price: parseFloat(editPrice),
                  stockQuantity: newStockNum,
                  inStock: newStockNum > 0,
                  condition: editCondition,
                  part: {
                    ...off.part,
                    manufacturer: editManufacturer,
                    partNumber: editPartNumber,
                  },
                }
              : off
          )
        );
        setEditingOffer(null);
      } else {
        const errData = await res.json();
        alert(errData.error || "Erro ao salvar alterações na oferta.");
      }
    } catch (e) {
      console.error(e);
      alert("Erro de conexão ao salvar a oferta.");
    } finally {
      setSavingEdit(false);
    }
  };

  // Alternar Status de Oferta (Pausado / Ativo)
  const handleToggleStatus = async (offer: Offer) => {
    const isCurrentlyPaused = offer.inStock === false || offer.stockQuantity === 0;
    const nextInStock = isCurrentlyPaused ? true : false;
    const nextQuantity = nextInStock ? (offer.stockQuantity > 0 ? offer.stockQuantity : 1) : 0;

    // Atualização otimista na UI
    setOffers((prev) =>
      prev.map((off) =>
        off.id === offer.id ? { ...off, inStock: nextInStock, stockQuantity: nextQuantity } : off
      )
    );

    try {
      const res = await fetch(`/api/lojista/offers/${offer.id}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ inStock: nextInStock, stockQuantity: nextQuantity }),
      });

      if (!res.ok) {
        // Reverte se falhou
        setOffers((prev) =>
          prev.map((off) => (off.id === offer.id ? { ...off, inStock: offer.inStock, stockQuantity: offer.stockQuantity } : off))
        );
        alert("Erro ao alterar o status da oferta.");
      }
    } catch (e) {
      console.error(e);
      setOffers((prev) =>
        prev.map((off) => (off.id === offer.id ? { ...off, inStock: offer.inStock, stockQuantity: offer.stockQuantity } : off))
      );
    }
  };

  // Excluir Oferta (DELETE)
  const handleConfirmDelete = async () => {
    if (!deletingOffer) return;

    setDeleting(true);
    try {
      const res = await fetch(`/api/lojista/offers/${deletingOffer.id}`, {
        method: "DELETE",
      });

      if (res.ok) {
        setOffers((prev) => prev.filter((off) => off.id !== deletingOffer.id));
        setDeletingOffer(null);
      } else {
        const errData = await res.json();
        alert(errData.error || "Erro ao excluir a oferta.");
      }
    } catch (e) {
      console.error(e);
      alert("Erro de conexão ao excluir a oferta.");
    } finally {
      setDeleting(false);
    }
  };

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
        <div>
          <h1 className="text-2xl font-bold text-slate-900">Meu Estoque</h1>
          <p className="mt-1 text-sm text-slate-500">
            Gerencie as peças que estão visíveis para os clientes.
          </p>
        </div>
      </div>

      {/* Adicionar nova peça (Busca Autocomplete) */}
      <div className="bg-white p-6 rounded-xl border border-slate-200 shadow-sm relative">
        <h3 className="text-lg font-medium text-slate-900 mb-4">Adicionar Nova Peça</h3>
        <div className="relative">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
          <input
            type="text"
            placeholder="Comece a digitar o nome da peça ou código oficial (ex: Amortecedor Monroe)..."
            value={query}
            onChange={(e) => handleSearch(e.target.value)}
            className="w-full pl-10 pr-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500 shadow-inner"
          />
          {searching && (
            <Loader2 className="absolute right-3 top-1/2 -translate-y-1/2 w-5 h-5 text-orange-500 animate-spin" />
          )}
        </div>

        {/* Dropdown de Sugestões */}
        {isDropdownOpen && query.length >= 2 && (
          <div className="absolute z-10 w-full mt-1 bg-white border border-slate-200 rounded-lg shadow-xl overflow-hidden max-h-80 overflow-y-auto">
            {/* Opção Destacada de IA sempre no topo */}
            <div 
              onClick={requestAI}
              className="p-3 bg-gradient-to-r from-slate-900 to-slate-800 text-white cursor-pointer flex justify-between items-center hover:from-slate-800 hover:to-slate-700 transition-all border-b border-slate-700"
            >
              <div className="flex items-center gap-2">
                <Sparkles className="w-4 h-4 text-yellow-400 shrink-0 animate-pulse" />
                <div>
                  <p className="text-xs font-bold text-yellow-400 uppercase tracking-wider">Cadastrar via Inteligência Artificial</p>
                  <p className="text-sm font-medium truncate max-w-md">Processar: "{query}"</p>
                </div>
              </div>
              <span className="text-xs bg-yellow-400/20 text-yellow-300 font-semibold px-2 py-1 rounded border border-yellow-400/30">
                Extrair Veículo e Peça →
              </span>
            </div>

            {suggestions.length > 0 ? (
              <ul className="divide-y divide-slate-100">
                {suggestions.map((part) => (
                  <li 
                    key={part.id} 
                    className="p-3 hover:bg-orange-50 cursor-pointer flex justify-between items-center transition-colors"
                    onClick={() => handleSelectPart(part)}
                  >
                    <div>
                      <p className="font-medium text-slate-900">{part.name}</p>
                      <p className="text-xs text-slate-500">
                        Fab: {part.manufacturer || "Original / Genuíno"} {part.partNumber || part.manufacturerCode ? `| Cód: ${part.partNumber || part.manufacturerCode}` : ""}
                      </p>
                    </div>
                    <Plus className="w-4 h-4 text-orange-600 opacity-50" />
                  </li>
                ))}
              </ul>
            ) : (
              <div className="p-4 text-center">
                {!searching && (
                  <div className="flex flex-col items-center">
                    <PackageX className="w-8 h-8 text-slate-400 mb-2" />
                    <p className="text-sm text-slate-600">Nenhum termo exato no Catálogo Mestre.</p>
                    <button 
                      onClick={requestAI}
                      className="mt-3 inline-flex items-center px-4 py-2 bg-orange-600 text-white rounded-lg text-sm font-medium hover:bg-orange-700 transition-colors shadow-sm"
                    >
                      <Sparkles className="w-4 h-4 mr-2 text-yellow-300" />
                      Cadastrar Peça e Compatibilidade via IA
                    </button>
                  </div>
                )}
              </div>
            )}
          </div>
        )}
      </div>

      {/* Tabela */}
      <div className="bg-white rounded-xl border border-slate-200 shadow-sm overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full text-left text-sm text-slate-600">
            <thead className="bg-slate-50 text-slate-500 font-medium border-b border-slate-200">
              <tr>
                <th className="px-6 py-4">Peça (Catálogo Oficial)</th>
                <th className="px-6 py-4">Fabricante / Cód.</th>
                <th className="px-6 py-4">Catálogo Cruzado (Serve em)</th>
                <th className="px-6 py-4">Preço (R$)</th>
                <th className="px-6 py-4">Qtd.</th>
                <th className="px-6 py-4">Condição</th>
                <th className="px-6 py-4 text-right">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-200">
              {loading ? (
                <tr>
                  <td colSpan={7} className="px-6 py-8 text-center text-slate-500">
                    <Loader2 className="w-6 h-6 animate-spin mx-auto text-orange-500" />
                  </td>
                </tr>
              ) : offers.map((offer) => {
                const isPaused = offer.inStock === false || (offer.stockQuantity !== undefined && offer.stockQuantity === 0);

                return (
                  <tr
                    key={offer.id}
                    className={`transition-colors ${
                      isPaused ? "bg-amber-50/40 opacity-75 hover:bg-amber-50/70" : "hover:bg-slate-50"
                    }`}
                  >
                    <td className="px-6 py-4 font-medium text-slate-900">
                      <div className="flex items-center gap-2 flex-wrap">
                        <span>{offer.part.name}</span>
                        {isPaused && (
                          <span className="inline-flex items-center px-2 py-0.5 rounded-full text-[11px] font-semibold bg-amber-100 text-amber-800 border border-amber-300">
                            Pausado
                          </span>
                        )}
                      </div>
                    </td>
                    <td className="px-6 py-4">
                      {offer.part.manufacturer}{" "}
                      <span className="text-xs text-slate-400 block">{offer.part.partNumber}</span>
                    </td>
                    <td className="px-6 py-4 max-w-xs">
                      <CompatibilityCell compatibilities={offer.compatibilities || []} />
                    </td>
                    <td className="px-6 py-4 font-medium text-green-700">R$ {Number(offer.price).toFixed(2)}</td>
                    <td className="px-6 py-4">
                      <span
                        className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${
                          isPaused ? "bg-amber-100 text-amber-900" : "bg-slate-100 text-slate-800"
                        }`}
                      >
                        {offer.stockQuantity ?? (isPaused ? 0 : 1)}
                      </span>
                    </td>
                    <td className="px-6 py-4 text-xs font-medium">
                      <span
                        className={`inline-block px-2 py-0.5 rounded text-[11px] font-semibold ${
                          offer.condition === "NOVO"
                            ? "bg-emerald-50 text-emerald-700 border border-emerald-200"
                            : "bg-blue-50 text-blue-700 border border-blue-200"
                        }`}
                      >
                        {offer.condition || "NOVO"}
                      </span>
                    </td>
                    <td className="px-6 py-4 text-right space-x-2 whitespace-nowrap">
                      {/* Botão Editar */}
                      <button
                        onClick={() => handleOpenEditModal(offer)}
                        className="inline-flex items-center px-2.5 py-1 text-xs font-semibold text-orange-700 bg-orange-50 hover:bg-orange-100 border border-orange-200 rounded-lg transition-colors cursor-pointer"
                      >
                        <Edit3 className="w-3.5 h-3.5 mr-1" />
                        Editar
                      </button>

                      {/* Botão Ocultar / Ativar */}
                      <button
                        onClick={() => handleToggleStatus(offer)}
                        className={`inline-flex items-center px-2.5 py-1 text-xs font-semibold border rounded-lg transition-colors cursor-pointer ${
                          !isPaused
                            ? "text-amber-700 bg-amber-50 hover:bg-amber-100 border-amber-200"
                            : "text-emerald-700 bg-emerald-50 hover:bg-emerald-100 border-emerald-200"
                        }`}
                      >
                        {!isPaused ? (
                          <>
                            <PauseCircle className="w-3.5 h-3.5 mr-1" />
                            Ocultar
                          </>
                        ) : (
                          <>
                            <PlayCircle className="w-3.5 h-3.5 mr-1" />
                            Ativar
                          </>
                        )}
                      </button>

                      {/* Botão Excluir */}
                      <button
                        onClick={() => setDeletingOffer(offer)}
                        className="inline-flex items-center px-2 py-1 text-xs font-semibold text-red-600 hover:text-red-700 hover:bg-red-50 border border-transparent hover:border-red-200 rounded-lg transition-colors cursor-pointer"
                        title="Excluir Oferta"
                      >
                        <Trash2 className="w-3.5 h-3.5" />
                      </button>
                    </td>
                  </tr>
                );
              })}
              {!loading && offers.length === 0 && (
                <tr>
                  <td colSpan={7} className="px-6 py-8 text-center text-slate-500 flex flex-col items-center">
                    <PackageX className="w-10 h-10 mb-2 opacity-20" />
                    Seu estoque está vazio. Busque uma peça acima para anunciar.
                  </td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </div>

      {/* Modal Definição de Preço e Compatibilidade (2 Etapas) */}
      {selectedPart && (
        <div className="fixed inset-0 bg-slate-900/50 flex items-center justify-center p-4 z-50">
          <div className="bg-white rounded-xl shadow-2xl max-w-2xl w-full max-h-[90vh] flex flex-col overflow-hidden">
            <div className="p-6 border-b border-slate-100 bg-slate-50 flex justify-between items-center shrink-0">
              <div>
                <h3 className="text-lg font-bold text-slate-900">
                  {step === 1 ? "1. Anunciar Peça" : "2. Veículos Compatíveis"}
                </h3>
                <p className="text-sm text-slate-500 mt-1">{selectedPart.name} - {selectedPart.manufacturer}</p>
              </div>
              <div className="flex gap-2">
                <span className={`w-3 h-3 rounded-full ${step === 1 ? 'bg-orange-500' : 'bg-slate-300'}`}></span>
                <span className={`w-3 h-3 rounded-full ${step === 2 ? 'bg-orange-500' : 'bg-slate-300'}`}></span>
              </div>
            </div>
            
            {step === 1 ? (
              <form onSubmit={handleNextStep} className="p-6 flex-1 overflow-y-auto pr-2 space-y-4">
                <div>
                  <label className="block text-sm font-medium text-slate-700 mb-1">Fabricante / Marca da Peça</label>
                  <input 
                    type="text" 
                    value={manufacturerName}
                    onChange={e => setManufacturerName(e.target.value)}
                    placeholder="ex: Bosch, Cobreq, Monroe, Nakata, Fremax, Original..."
                    className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 font-medium" 
                  />
                  <p className="text-xs text-slate-400 mt-1">Insira a fabricante oficial da peça se souber.</p>
                </div>
                <div>
                  <label className="block text-sm font-medium text-slate-700 mb-1">Preço de Venda (R$)</label>
                  <input 
                    type="number" 
                    step="0.01"
                    required
                    value={price}
                    onChange={e => setPrice(e.target.value)}
                    className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500" 
                    placeholder="0.00" 
                  />
                </div>
                <div className="grid grid-cols-2 gap-4">
                  <div>
                    <label className="block text-sm font-medium text-slate-700 mb-1">Qtd. em Estoque</label>
                    <input 
                      type="number" 
                      required
                      min="1"
                      value={quantity}
                      onChange={e => setQuantity(e.target.value)}
                      className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500" 
                    />
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-slate-700 mb-1">Condição</label>
                    <select 
                      value={condition}
                      onChange={e => setCondition(e.target.value)}
                      className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 bg-white"
                    >
                      <option value="NOVO">Novo</option>
                      <option value="USADO">Usado</option>
                    </select>
                  </div>
                </div>

                <div className="grid grid-cols-2 gap-4">
                  <div>
                    <label className="block text-sm font-medium text-slate-700 mb-1">Lado / Posição (para Carros)</label>
                    <select 
                      value={sidePosition}
                      onChange={e => setSidePosition(e.target.value)}
                      className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 bg-white"
                    >
                      <option value="NENHUM">Indiferente / Central</option>
                      <option value="DIREITO">Lado Direito (Passageiro)</option>
                      <option value="ESQUERDO">Lado Esquerdo (Motorista)</option>
                      <option value="PAR">Par (Direito + Esquerdo)</option>
                      <option value="DIANTEIRO">Dianteiro</option>
                      <option value="TRASEIRO">Traseiro</option>
                    </select>
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-slate-700 mb-1">Observações da Peça (opcional)</label>
                    <input 
                      type="text" 
                      value={observation}
                      onChange={e => setObservation(e.target.value)}
                      placeholder="ex: Com bojo original Arteb"
                      className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500" 
                    />
                  </div>
                </div>

                {/* Bloco Catálogo Cruzado (Compatibilidade Existente) */}
                <div className="bg-slate-50 p-4 rounded-xl border border-slate-200">
                  <div className="flex items-center gap-2 mb-1.5">
                    <span className="text-sm font-semibold text-slate-900">Catálogo Cruzado (Veículos Compatíveis)</span>
                  </div>
                  {loadingExistingCompat ? (
                    <div className="text-xs text-slate-500 flex items-center gap-2">
                      <Loader2 className="w-3.5 h-3.5 animate-spin text-orange-500" /> Carregando compatibilidade do catálogo...
                    </div>
                  ) : existingCompat.length > 0 ? (
                    <div className="flex flex-wrap gap-1.5 max-h-28 overflow-y-auto pt-1">
                      {existingCompat.map((c, i) => (
                        <span key={i} className="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium bg-blue-50 text-blue-800 border border-blue-200">
                          {c}
                        </span>
                      ))}
                    </div>
                  ) : (
                    <p className="text-xs text-slate-500">
                      Nenhum veículo vinculado ainda. Você poderá adicionar veículos na próxima etapa!
                    </p>
                  )}
                </div>

                <div className="sticky bottom-0 bg-white pt-4 border-t mt-4 flex justify-end gap-3 z-10 shrink-0">
                  <button 
                    type="button" 
                    onClick={() => {
                      setSelectedPart(null);
                      setStep(1);
                    }}
                    className="px-4 py-2 text-slate-600 hover:bg-slate-100 rounded-lg font-medium transition-colors"
                  >
                    Cancelar
                  </button>
                  <button 
                    type="submit" 
                    className="px-4 py-2 bg-orange-600 text-white rounded-lg font-medium hover:bg-orange-700 transition-colors flex items-center shadow-md"
                  >
                    Avançar
                  </button>
                </div>
              </form>
            ) : (
              <form onSubmit={handleFinalizeOffer} className="p-6 flex-1 overflow-y-auto pr-2 space-y-4 flex flex-col justify-between">
                <div>
                  <p className="text-sm text-slate-600 mb-4">
                    Selecione todos os veículos (montadora, modelo e anos) que são compatíveis com esta peça.
                  </p>
                  <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
                    <div>
                      <label className="block text-sm font-medium text-slate-700 mb-1">Veículo</label>
                      <select 
                        value={segment} 
                        onChange={(e) => setSegment(e.target.value as any)}
                        className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 text-sm bg-white"
                      >
                        <option value="CARRO">Carros</option>
                        <option value="MOTO">Motos</option>
                        <option value="ELETRICO">Elétricos</option>
                        <option value="AUTOPROPELIDO">Autopropelido</option>
                      </select>
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-slate-700 mb-1">Montadora</label>
                      <select 
                        value={selectedBrand} 
                        onChange={(e) => setSelectedBrand(e.target.value)}
                        disabled={loadingBrands || brands.length === 0}
                        className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 text-sm bg-white disabled:bg-slate-100 disabled:opacity-75"
                      >
                        <option value="">{loadingBrands ? "Carregando..." : "Selecione..."}</option>
                        {brands.map(b => (
                          <option key={b.id} value={b.id}>{b.name}</option>
                        ))}
                      </select>
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-slate-700 mb-1">Modelo</label>
                      <select 
                        value={selectedModel} 
                        onChange={(e) => setSelectedModel(e.target.value)}
                        disabled={!selectedBrand || loadingModels || models.length === 0}
                        className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 text-sm bg-white disabled:bg-slate-100 disabled:opacity-75"
                      >
                        <option value="">{loadingModels ? "Carregando..." : "Selecione..."}</option>
                        {models.map(m => (
                          <option key={m.id} value={m.id}>{m.name}</option>
                        ))}
                      </select>
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-slate-700 mb-1">Filtro de Ano</label>
                      <select 
                        value={selectedYear} 
                        onChange={(e) => setSelectedYear(e.target.value)}
                        disabled={!selectedModel || loadingVersions || versions.length === 0}
                        className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 text-sm bg-white disabled:bg-slate-100 disabled:opacity-75 font-medium"
                      >
                        <option value="">Todos os Anos</option>
                        {Array.from(new Set(versions.map(v => v.year))).sort((a: any, b: any) => b - a).map(yr => (
                          <option key={yr} value={String(yr)}>Ano {yr}</option>
                        ))}
                      </select>
                    </div>
                  </div>

                  {/* Bloco de Seleção Rápida por Múltiplos Anos */}
                  {selectedModel && versions.length > 0 && (
                    <div className="bg-slate-50 p-3 rounded-lg border border-slate-200 mt-3">
                      <div className="flex items-center justify-between mb-2">
                        <span className="text-xs font-bold text-slate-700 uppercase tracking-wider">
                          Clique no Ano para Marcar/Desmarcar todas as versões de uma vez:
                        </span>
                        <button
                          type="button"
                          onClick={() => setSelectedYear("")}
                          className={`text-xs px-2 py-0.5 rounded font-medium ${!selectedYear ? 'bg-orange-600 text-white' : 'bg-white border text-slate-700'}`}
                        >
                          Ver Todos os Anos
                        </button>
                      </div>
                      <div className="flex flex-wrap gap-1.5 max-h-32 overflow-y-auto p-1">
                        {Array.from(new Set(versions.map(v => v.year))).sort((a: any, b: any) => b - a).map(yr => {
                          const yearVersions = versions.filter(v => v.year === yr);
                          const allYearSelected = yearVersions.length > 0 && yearVersions.every(v => selectedVersions.includes(v.id));
                          const someYearSelected = yearVersions.some(v => selectedVersions.includes(v.id));

                          return (
                            <button
                              key={yr}
                              type="button"
                              onClick={() => {
                                const yearIds = yearVersions.map(v => v.id);
                                if (allYearSelected) {
                                  setSelectedVersions(prev => prev.filter(id => !yearIds.includes(id)));
                                } else {
                                  setSelectedVersions(prev => Array.from(new Set([...prev, ...yearIds])));
                                }
                                setSelectedYear(String(yr));
                              }}
                              className={`px-3 py-1 text-xs rounded-full border font-semibold transition-all flex items-center gap-1.5 shadow-sm ${
                                allYearSelected 
                                  ? 'bg-orange-600 text-white border-orange-700' 
                                  : someYearSelected
                                  ? 'bg-orange-100 text-orange-800 border-orange-300'
                                  : selectedYear === String(yr)
                                  ? 'bg-blue-600 text-white border-blue-700'
                                  : 'bg-white text-slate-700 border-slate-300 hover:border-orange-400 hover:bg-orange-50'
                              }`}
                            >
                              <span>Ano {yr}</span>
                              <span className={`text-[10px] px-1.5 py-0.2 rounded-full ${allYearSelected ? 'bg-white/20 text-white' : 'bg-slate-100 text-slate-600'}`}>
                                {yearVersions.length}
                              </span>
                              {allYearSelected && <span>✓</span>}
                            </button>
                          );
                        })}
                      </div>
                    </div>
                  )}

                  {selectedModel && (() => {
                    const filteredVersions = selectedYear 
                      ? versions.filter(v => String(v.year) === selectedYear)
                      : versions;
                    const allFilteredSelected = filteredVersions.length > 0 && filteredVersions.every(v => selectedVersions.includes(v.id));

                    const toggleAllFiltered = () => {
                      const filteredIds = filteredVersions.map(v => v.id);
                      if (allFilteredSelected) {
                        setSelectedVersions(prev => prev.filter(id => !filteredIds.includes(id)));
                      } else {
                        setSelectedVersions(prev => Array.from(new Set([...prev, ...filteredIds])));
                      }
                    };

                    return (
                      <div className="mt-4 border border-slate-200 rounded-lg overflow-hidden">
                        <div className="bg-slate-50 px-4 py-2.5 border-b border-slate-200 flex justify-between items-center flex-wrap gap-2">
                          <div className="flex items-center gap-2">
                            <span className="text-sm font-semibold text-slate-800">Versões Disponíveis</span>
                            {selectedYear && (
                              <span className="text-xs bg-blue-100 text-blue-800 font-medium px-2 py-0.5 rounded-full border border-blue-200">
                                Ano {selectedYear}
                              </span>
                            )}
                          </div>
                          <div className="flex items-center gap-3">
                            {filteredVersions.length > 0 && (
                              <button
                                type="button"
                                onClick={toggleAllFiltered}
                                className="text-xs text-orange-600 font-medium hover:text-orange-800 transition-colors"
                              >
                                {allFilteredSelected ? "Desmarcar exibidos" : "Marcar todos exibidos"}
                              </button>
                            )}
                            <span className="text-xs text-orange-600 font-medium bg-orange-100 px-2.5 py-1 rounded-full">
                              {selectedVersions.length} selecionados
                            </span>
                          </div>
                        </div>
                        <div className="p-4 max-h-56 overflow-y-auto grid grid-cols-1 sm:grid-cols-2 gap-2.5 bg-white">
                          {loadingVersions ? (
                            <div className="col-span-full py-4 text-center">
                              <Loader2 className="w-5 h-5 mx-auto animate-spin text-orange-500" />
                            </div>
                          ) : filteredVersions.length > 0 ? (
                            filteredVersions.map(v => (
                              <label key={v.id} className="flex items-center justify-between p-2.5 rounded-lg hover:bg-orange-50 cursor-pointer border border-slate-200 bg-white transition-all shadow-sm hover:border-orange-200">
                                <div className="flex items-center gap-3 min-w-0 pr-2">
                                  <input 
                                    type="checkbox" 
                                    checked={selectedVersions.includes(v.id)}
                                    onChange={() => toggleVersion(v.id)}
                                    className="w-4 h-4 text-orange-600 rounded border-slate-300 focus:ring-orange-500 flex-shrink-0"
                                  />
                                  <span className="text-sm font-medium text-slate-800 truncate">
                                    {v.versionName || v.name}
                                  </span>
                                </div>
                                <span className="text-xs font-semibold px-2 py-0.5 rounded bg-slate-100 text-slate-600 border border-slate-200 flex-shrink-0">
                                  {v.year}
                                </span>
                              </label>
                            ))
                          ) : (
                            <div className="col-span-full text-center text-sm text-slate-500 py-4">
                              Nenhuma versão encontrada para o ano selecionado.
                            </div>
                          )}
                        </div>
                      </div>
                    );
                  })()}
                </div>

                <div className="sticky bottom-0 bg-white pt-4 border-t mt-4 flex justify-end gap-3 z-10 shrink-0">
                  <button 
                    type="button" 
                    onClick={() => setStep(1)}
                    className="px-4 py-2 text-slate-600 hover:bg-slate-100 rounded-lg font-medium transition-colors"
                  >
                    Voltar
                  </button>
                  <button 
                    type="submit" 
                    disabled={saving || selectedVersions.length === 0}
                    className="px-4 py-2 bg-orange-600 text-white rounded-lg font-medium hover:bg-orange-700 transition-colors disabled:opacity-50 flex items-center shadow-md"
                  >
                    {saving && <Loader2 className="w-4 h-4 mr-2 animate-spin" />}
                    Confirmar Anúncio
                  </button>
                </div>
              </form>
            )}
          </div>
        </div>
      )}
      {/* Modal Inteligência Artificial */}
      {isAiModalOpen && (
        <div className="fixed inset-0 bg-slate-900/50 flex items-center justify-center p-4 z-50">
          <div className="bg-white rounded-xl shadow-2xl max-w-lg w-full overflow-hidden">
            <div className="p-6 border-b border-slate-100 bg-slate-900 text-white flex items-center">
              <Sparkles className="w-5 h-5 text-yellow-400 mr-2" />
              <h3 className="text-lg font-bold">Assistente IA</h3>
            </div>
            
            <form onSubmit={handleAiSubmit} className="p-6 space-y-4">
              <p className="text-sm text-slate-600">
                Descreva a peça como você costuma chamar. Nossa Inteligência Artificial vai identificar o nome oficial, fabricante e código para organizar o catálogo automaticamente.
              </p>
              <div>
                <textarea 
                  required
                  rows={3}
                  value={aiRawText}
                  onChange={e => setAiRawText(e.target.value)}
                  className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 text-sm" 
                  placeholder="Ex: Parachoque dianteiro gol g4 2008 sem farol de milha fabricante plastparts" 
                />
              </div>

              <div className="pt-4 flex gap-3 justify-end border-t mt-6">
                <button 
                  type="button" 
                  onClick={() => setIsAiModalOpen(false)}
                  className="px-4 py-2 text-slate-600 hover:bg-slate-100 rounded-lg font-medium transition-colors"
                >
                  Cancelar
                </button>
                <button 
                  type="submit" 
                  disabled={aiLoading}
                  className="px-4 py-2 bg-slate-900 text-white rounded-lg font-medium hover:bg-slate-800 transition-colors disabled:opacity-50 flex items-center"
                >
                  {aiLoading ? (
                    <><Loader2 className="w-4 h-4 mr-2 animate-spin" /> Analisando...</>
                  ) : (
                    <><Sparkles className="w-4 h-4 mr-2 text-yellow-400" /> Processar Texto</>
                  )}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
      {/* Modal de Edição de Oferta */}
      {editingOffer && (
        <div className="fixed inset-0 bg-slate-900/60 backdrop-blur-xs flex items-center justify-center p-4 z-50 animate-in fade-in duration-150">
          <div className="bg-white rounded-2xl shadow-2xl max-w-md w-full overflow-hidden border border-slate-100">
            <div className="p-6 border-b border-slate-100 bg-slate-50 flex justify-between items-center">
              <div>
                <h3 className="text-lg font-bold text-slate-900">Editar Oferta no Estoque</h3>
                <p className="text-xs text-slate-500 mt-0.5 truncate max-w-xs">{editingOffer.part.name}</p>
              </div>
              <button
                onClick={() => setEditingOffer(null)}
                className="text-slate-400 hover:text-slate-600 rounded-lg p-1"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            <form onSubmit={handleSaveEdit} className="p-6 space-y-4">
              <div>
                <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-1">
                  Fabricante / Marca da Peça
                </label>
                <input
                  type="text"
                  required
                  value={editManufacturer}
                  onChange={(e) => setEditManufacturer(e.target.value)}
                  placeholder="ex: Bosch, Cobreq, Monroe, Original..."
                  className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 font-medium text-sm"
                />
              </div>

              <div>
                <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-1">
                  Código do Fabricante / Código Interno
                </label>
                <input
                  type="text"
                  value={editPartNumber}
                  onChange={(e) => setEditPartNumber(e.target.value)}
                  placeholder="ex: N-1234, BOS-PAST-01..."
                  className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 font-medium text-sm"
                />
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-1">
                    Preço (R$)
                  </label>
                  <input
                    type="number"
                    step="0.01"
                    required
                    min="0.01"
                    value={editPrice}
                    onChange={(e) => setEditPrice(e.target.value)}
                    className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 font-semibold text-sm text-green-700"
                  />
                </div>
                <div>
                  <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-1">
                    Qtd. em Estoque
                  </label>
                  <input
                    type="number"
                    required
                    min="0"
                    value={editQuantity}
                    onChange={(e) => setEditQuantity(e.target.value)}
                    className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 font-semibold text-sm"
                  />
                </div>
              </div>

              <div>
                <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-1">
                  Condição do Item
                </label>
                <select
                  value={editCondition}
                  onChange={(e) => setEditCondition(e.target.value)}
                  className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 bg-white font-medium text-sm"
                >
                  <option value="NOVO">Novo</option>
                  <option value="USADO">Usado</option>
                </select>
              </div>

              <div className="pt-4 border-t border-slate-100 flex justify-end gap-3">
                <button
                  type="button"
                  onClick={() => setEditingOffer(null)}
                  className="px-4 py-2 text-sm font-medium text-slate-600 hover:bg-slate-100 rounded-lg transition-colors"
                >
                  Cancelar
                </button>
                <button
                  type="submit"
                  disabled={savingEdit}
                  className="px-5 py-2 text-sm font-semibold text-white bg-orange-600 hover:bg-orange-700 rounded-lg transition-colors shadow-sm disabled:opacity-50 flex items-center gap-2"
                >
                  {savingEdit && <Loader2 className="w-4 h-4 animate-spin" />}
                  Salvar Alterações
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* Modal de Confirmação de Exclusão */}
      {deletingOffer && (
        <div className="fixed inset-0 bg-slate-900/60 backdrop-blur-xs flex items-center justify-center p-4 z-50 animate-in fade-in duration-150">
          <div className="bg-white rounded-2xl shadow-2xl max-w-md w-full p-6 border border-slate-100 text-center">
            <div className="w-12 h-12 rounded-full bg-red-100 text-red-600 flex items-center justify-center mx-auto mb-4">
              <AlertTriangle className="w-6 h-6" />
            </div>
            <h3 className="text-lg font-bold text-slate-900 mb-2">Excluir Oferta do Estoque</h3>
            <p className="text-sm text-slate-600 mb-6">
              Tem certeza que deseja excluir a oferta de <strong className="text-slate-900">{deletingOffer.part.name}</strong>? Esta ação é irreversível e o item deixará de aparecer nas pesquisas públicas.
            </p>

            <div className="flex justify-center gap-3">
              <button
                type="button"
                onClick={() => setDeletingOffer(null)}
                className="px-4 py-2.5 text-sm font-medium text-slate-700 bg-slate-100 hover:bg-slate-200 rounded-xl transition-colors"
              >
                Cancelar
              </button>
              <button
                type="button"
                disabled={deleting}
                onClick={handleConfirmDelete}
                className="px-5 py-2.5 text-sm font-semibold text-white bg-red-600 hover:bg-red-700 rounded-xl transition-colors shadow-sm disabled:opacity-50 flex items-center gap-2"
              >
                {deleting && <Loader2 className="w-4 h-4 animate-spin" />}
                Sim, Excluir Oferta
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
