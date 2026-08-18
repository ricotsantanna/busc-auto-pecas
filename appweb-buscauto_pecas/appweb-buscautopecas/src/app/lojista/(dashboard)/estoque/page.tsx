"use client";

import { useState, useEffect, useRef } from "react";
import { Plus, Search, Filter, Loader2, PackageX, Sparkles } from "lucide-react";

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
  condition: string;
  createdAt: string;
  compatibilities?: string[];
  part: Part;
};

export default function LojistaEstoque() {
  const [offers, setOffers] = useState<Offer[]>([]);
  const [loading, setLoading] = useState(true);

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
        const res = await fetch(`/api/seller/parts/search?q=${encodeURIComponent(text)}`);
        const data = await res.json();
        setSuggestions(data.parts || []);
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
        setSelectedPart({
          id: data.partId,
          name: data.extractedData.nomeDaPeca,
          manufacturer: data.extractedData.fabricante || "Original",
          partNumber: data.extractedData.codigoPeca,
        });
        setManufacturerName(data.extractedData.fabricante || "Original");

        // Pre-select Montadora, Modelo e Anos se identificados pela IA!
        if (data.extractedData.brandId) {
          setSelectedBrand(data.extractedData.brandId);
        }
        if (data.extractedData.modelId) {
          setSelectedModel(data.extractedData.modelId);
        }
        if (data.extractedData.ano) {
          setSelectedYear(data.extractedData.ano);
        }
        if (Array.isArray(data.extractedData.anos) && data.extractedData.anos.length > 0) {
          setAiPendingYears(data.extractedData.anos);
        }
        if (data.extractedData.motor) {
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
                      <p className="text-xs text-slate-500">Fab: {part.manufacturer} | Cód: {part.partNumber}</p>
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
                    <p className="text-sm text-slate-600">Peça não encontrada no Catálogo Mestre.</p>
                    <button 
                      onClick={requestAI}
                      className="mt-4 inline-flex items-center px-4 py-2 bg-slate-900 text-white rounded-lg text-sm hover:bg-slate-800 transition-colors"
                    >
                      <Sparkles className="w-4 h-4 mr-2 text-yellow-400" />
                      Solicitar Cadastro via IA
                    </button>
                    <p className="text-xs text-slate-400 mt-2 max-w-sm mx-auto">
                      Nossa Inteligência Artificial lerá seu texto e padronizará o anúncio para manter a busca limpa!
                    </p>
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
              ) : offers.map((offer) => (
                <tr key={offer.id} className="hover:bg-slate-50 transition-colors">
                  <td className="px-6 py-4 font-medium text-slate-900">{offer.part.name}</td>
                  <td className="px-6 py-4">{offer.part.manufacturer} <span className="text-xs text-slate-400 block">{offer.part.partNumber}</span></td>
                  <td className="px-6 py-4 max-w-xs">
                    {offer.compatibilities && offer.compatibilities.length > 0 ? (
                      <div className="flex flex-wrap gap-1">
                        {offer.compatibilities.map((comp, idx) => (
                          <span key={idx} className="inline-flex items-center px-2 py-0.5 rounded text-[11px] font-medium bg-blue-50 text-blue-700 border border-blue-200">
                            {comp}
                          </span>
                        ))}
                      </div>
                    ) : (
                      <span className="text-xs text-slate-400 italic">Sem compatibilidade vinculada</span>
                    )}
                  </td>
                  <td className="px-6 py-4 font-medium text-green-700">R$ {Number(offer.price).toFixed(2)}</td>
                  <td className="px-6 py-4">
                    <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-slate-100 text-slate-800">
                      {offer.stockQuantity}
                    </span>
                  </td>
                  <td className="px-6 py-4 text-xs font-medium">{offer.condition}</td>
                  <td className="px-6 py-4 text-right space-x-3">
                    <button className="text-orange-600 hover:text-orange-800 font-medium">Editar</button>
                    <button className="text-red-600 hover:text-red-800 font-medium">Ocultar</button>
                  </td>
                </tr>
              ))}
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
    </div>
  );
}
