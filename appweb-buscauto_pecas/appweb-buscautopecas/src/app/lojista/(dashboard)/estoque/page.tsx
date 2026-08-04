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
  price: string;
  stockQuantity: number;
  condition: string;
  createdAt: string;
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
  const [condition, setCondition] = useState("NOVA");
  const [saving, setSaving] = useState(false);

  // Debounce for search
  const debounceRef = useRef<NodeJS.Timeout>();

  useEffect(() => {
    fetchOffers();
  }, []);

  const fetchOffers = async () => {
    try {
      const res = await fetch("/api/lojista/offers");
      const data = await res.json();
      if (data.offers) setOffers(data.offers);
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
        const res = await fetch(`/api/lojista/parts/search?q=${encodeURIComponent(text)}`);
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
    setQuery("");
    setIsDropdownOpen(false);
  };

  const handleSaveOffer = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedPart) return;

    setSaving(true);
    try {
      const res = await fetch("/api/lojista/offers", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          partId: selectedPart.id,
          price: parseFloat(price.replace(",", ".")),
          stockQuantity: parseInt(quantity, 10),
          condition
        }),
      });
      
      if (res.ok) {
        setSelectedPart(null);
        setPrice("");
        setQuantity("1");
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
        // AI successfully parsed and added to masterParts (unapproved)
        // Now open the regular offer modal with this part
        setIsAiModalOpen(false);
        setAiRawText("");
        setSelectedPart({
          id: data.partId,
          name: data.extractedData.nomeDaPeca,
          manufacturer: data.extractedData.fabricante,
          partNumber: data.extractedData.codigoPeca,
        });
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
                <th className="px-6 py-4">Preço (R$)</th>
                <th className="px-6 py-4">Qtd.</th>
                <th className="px-6 py-4">Condição</th>
                <th className="px-6 py-4 text-right">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-200">
              {loading ? (
                <tr>
                  <td colSpan={6} className="px-6 py-8 text-center text-slate-500">
                    <Loader2 className="w-6 h-6 animate-spin mx-auto text-orange-500" />
                  </td>
                </tr>
              ) : offers.map((offer) => (
                <tr key={offer.id} className="hover:bg-slate-50 transition-colors">
                  <td className="px-6 py-4 font-medium text-slate-900">{offer.part.name}</td>
                  <td className="px-6 py-4">{offer.part.manufacturer} <span className="text-xs text-slate-400 block">{offer.part.partNumber}</span></td>
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
                  <td colSpan={6} className="px-6 py-8 text-center text-slate-500 flex flex-col items-center">
                    <PackageX className="w-10 h-10 mb-2 opacity-20" />
                    Seu estoque está vazio. Busque uma peça acima para anunciar.
                  </td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </div>

      {/* Modal Definição de Preço */}
      {selectedPart && (
        <div className="fixed inset-0 bg-slate-900/50 flex items-center justify-center p-4 z-50">
          <div className="bg-white rounded-xl shadow-2xl max-w-md w-full overflow-hidden">
            <div className="p-6 border-b border-slate-100 bg-slate-50">
              <h3 className="text-lg font-bold text-slate-900">Anunciar Peça</h3>
              <p className="text-sm text-slate-500 mt-1">{selectedPart.name} - {selectedPart.manufacturer}</p>
            </div>
            
            <form onSubmit={handleSaveOffer} className="p-6 space-y-4">
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
                    <option value="NOVA">Nova</option>
                    <option value="USADA">Usada (Desmanche)</option>
                    <option value="RECONDICIONADA">Recondicionada</option>
                  </select>
                </div>
              </div>

              <div className="pt-4 flex gap-3 justify-end border-t mt-6">
                <button 
                  type="button" 
                  onClick={() => setSelectedPart(null)}
                  className="px-4 py-2 text-slate-600 hover:bg-slate-100 rounded-lg font-medium transition-colors"
                >
                  Cancelar
                </button>
                <button 
                  type="submit" 
                  disabled={saving}
                  className="px-4 py-2 bg-orange-600 text-white rounded-lg font-medium hover:bg-orange-700 transition-colors disabled:opacity-50 flex items-center"
                >
                  {saving && <Loader2 className="w-4 h-4 mr-2 animate-spin" />}
                  Confirmar Anúncio
                </button>
              </div>
            </form>
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
