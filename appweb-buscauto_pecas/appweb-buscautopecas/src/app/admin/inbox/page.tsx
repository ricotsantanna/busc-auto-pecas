"use client";

import { useState, useEffect } from "react";
import {
  Inbox,
  CheckCircle2,
  XCircle,
  Clock,
  Sparkles,
  GitMerge,
  Loader2,
  Store,
  Tag,
  Car,
  Search,
  Filter,
  Check,
  X,
  AlertTriangle,
} from "lucide-react";

type InboxItem = {
  id: string;
  storeId: string;
  storeName: string | null;
  rawPartName: string;
  cleanPartName: string;
  manufacturer: string | null;
  manufacturerCode: string | null;
  make: string | null;
  model: string | null;
  years: string | null;
  status: "PENDING_REVIEW" | "APPROVED" | "REJECTED";
  suggestedMasterPartId: string | null;
  createdAt: number;
};

type MasterPart = {
  id: string;
  name: string;
  manufacturer: string;
  manufacturerCode: string;
};

const CATEGORIES = [
  { id: "cat-freios", name: "Freios e Componentes" },
  { id: "cat-filtros", name: "Filtros e Fluídos" },
  { id: "cat-eletrica", name: "Elétrica e Eletrônica" },
  { id: "cat-suspensao", name: "Suspensão e Amortecedores" },
  { id: "cat-transmissao", name: "Embreagem e Transmissão" },
  { id: "cat-motor", name: "Motor e Componentes Internos" },
  { id: "cat-lataria", name: "Lataria e Acessórios" },
  { id: "cat-arrefecimento", name: "Sistema de Arrefecimento" },
  { id: "cat-iluminacao", name: "Iluminação e Faróis" },
  { id: "cat-climatizacao", name: "Ar Condicionado e Climatização" },
];

export default function AdminInboxPage() {
  const [items, setItems] = useState<InboxItem[]>([]);
  const [masterParts, setMasterParts] = useState<MasterPart[]>([]);
  const [pendingCount, setPendingCount] = useState(0);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState<"PENDING_REVIEW" | "APPROVED" | "REJECTED">("PENDING_REVIEW");

  // State para Ação de Aprovação (Modal)
  const [approvingItem, setApprovingItem] = useState<InboxItem | null>(null);
  const [approveName, setApproveName] = useState("");
  const [approveCategory, setApproveCategory] = useState("cat-freios");
  const [submittingAction, setSubmittingAction] = useState(false);

  // State para De-Para Manual (Mesclar)
  const [mergeMap, setMergeMap] = useState<Record<string, string>>({});

  // Busca dados da fila de triagem
  const fetchInbox = async () => {
    setLoading(true);
    try {
      const res = await fetch(`/api/admin/inbox?status=${activeTab}`);
      const data = await res.json();
      if (res.ok) {
        setItems(data.items || []);
        setMasterParts(data.masterParts || []);
        setPendingCount(data.pendingCount || 0);
      }
    } catch (e) {
      console.error("Erro ao carregar fila de triagem:", e);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchInbox();
  }, [activeTab]);

  // Modal para Homologar Nova Peça Canônica
  const handleOpenApproveModal = (item: InboxItem) => {
    setApprovingItem(item);
    setApproveName(item.cleanPartName);
    setApproveCategory("cat-freios");
  };

  // Submeter Aprovação
  const handleConfirmApprove = async () => {
    if (!approvingItem) return;

    setSubmittingAction(true);
    try {
      const res = await fetch(`/api/admin/inbox/${approvingItem.id}`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          action: "approve",
          cleanName: approveName,
          categoryId: approveCategory,
        }),
      });

      if (res.ok) {
        setApprovingItem(null);
        fetchInbox();
      } else {
        const err = await res.json();
        alert(err.error || "Erro ao aprovar peça.");
      }
    } catch (e) {
      console.error(e);
      alert("Erro de conexão ao aprovar a peça.");
    } finally {
      setSubmittingAction(false);
    }
  };

  // Submeter Mesclagem De-Para
  const handleConfirmMerge = async (item: InboxItem) => {
    const targetId = mergeMap[item.id];
    if (!targetId) {
      alert("Selecione uma peça mestre do catálogo para realizar o De-Para.");
      return;
    }

    setSubmittingAction(true);
    try {
      const res = await fetch(`/api/admin/inbox/${item.id}`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          action: "merge",
          targetMasterPartId: targetId,
        }),
      });

      if (res.ok) {
        fetchInbox();
      } else {
        const err = await res.json();
        alert(err.error || "Erro ao mesclar com peça existente.");
      }
    } catch (e) {
      console.error(e);
      alert("Erro de conexão ao mesclar.");
    } finally {
      setSubmittingAction(false);
    }
  };

  // Submeter Rejeição
  const handleReject = async (item: InboxItem) => {
    if (!confirm(`Tem certeza que deseja rejeitar a solicitação da peça "${item.cleanPartName}"?`)) return;

    setSubmittingAction(true);
    try {
      const res = await fetch(`/api/admin/inbox/${item.id}`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ action: "reject" }),
      });

      if (res.ok) {
        fetchInbox();
      } else {
        const err = await res.json();
        alert(err.error || "Erro ao rejeitar item.");
      }
    } catch (e) {
      console.error(e);
      alert("Erro de conexão ao rejeitar.");
    } finally {
      setSubmittingAction(false);
    }
  };

  return (
    <div className="min-h-screen bg-slate-900 text-slate-100 p-6 md:p-10 font-sans">
      <div className="max-w-7xl mx-auto space-y-8">
        
        {/* Header Admin */}
        <div className="flex flex-col md:flex-row md:items-center justify-between gap-4 border-b border-slate-800 pb-6">
          <div>
            <div className="flex items-center gap-3 mb-1">
              <Sparkles className="w-7 h-7 text-amber-400" />
              <h1 className="text-2xl md:text-3xl font-extrabold tracking-tight text-white">
                Fila de Triagem de IA & Homologação
              </h1>
            </div>
            <p className="text-sm text-slate-400">
              Painel Administrativo para moderação e validação de peças inéditas importadas por lojistas.
            </p>
          </div>

          <div className="flex items-center gap-3">
            <div className="bg-slate-800 border border-slate-700 rounded-xl px-4 py-2 flex items-center gap-2 text-xs font-semibold text-amber-300 shadow-inner">
              <Inbox className="w-4 h-4 text-amber-400" />
              <span>Pendências de Homologação:</span>
              <span className="bg-amber-400/20 text-amber-300 px-2 py-0.5 rounded-full text-xs font-bold border border-amber-400/30">
                {pendingCount}
              </span>
            </div>
          </div>
        </div>

        {/* Tabs de Filtro */}
        <div className="flex items-center gap-2 border-b border-slate-800 pb-1">
          <button
            onClick={() => setActiveTab("PENDING_REVIEW")}
            className={`px-4 py-2.5 rounded-lg text-xs font-bold transition-all flex items-center gap-2 ${
              activeTab === "PENDING_REVIEW"
                ? "bg-amber-500 text-slate-950 shadow-md"
                : "text-slate-400 hover:bg-slate-800 hover:text-slate-200"
            }`}
          >
            <Clock className="w-4 h-4" />
            Pendentes de Revisão ({pendingCount})
          </button>

          <button
            onClick={() => setActiveTab("APPROVED")}
            className={`px-4 py-2.5 rounded-lg text-xs font-bold transition-all flex items-center gap-2 ${
              activeTab === "APPROVED"
                ? "bg-emerald-500 text-slate-950 shadow-md"
                : "text-slate-400 hover:bg-slate-800 hover:text-slate-200"
            }`}
          >
            <CheckCircle2 className="w-4 h-4" />
            Aprovadas / Homologadas
          </button>

          <button
            onClick={() => setActiveTab("REJECTED")}
            className={`px-4 py-2.5 rounded-lg text-xs font-bold transition-all flex items-center gap-2 ${
              activeTab === "REJECTED"
                ? "bg-red-500 text-white shadow-md"
                : "text-slate-400 hover:bg-slate-800 hover:text-slate-200"
            }`}
          >
            <XCircle className="w-4 h-4" />
            Rejeitadas
          </button>
        </div>

        {/* Tabela de Moderação */}
        <div className="bg-slate-800/80 rounded-2xl border border-slate-700/80 shadow-2xl overflow-hidden backdrop-blur-md">
          <div className="overflow-x-auto">
            <table className="w-full text-left text-xs text-slate-300">
              <thead className="bg-slate-900/90 text-slate-400 font-semibold uppercase tracking-wider border-b border-slate-700">
                <tr>
                  <th className="px-6 py-4">Peça Sanitizada / Descrição Original</th>
                  <th className="px-6 py-4">Loja Solicitante</th>
                  <th className="px-6 py-4">Fabricante & Código</th>
                  <th className="px-6 py-4">Veículo Aplicação</th>
                  <th className="px-6 py-4 text-center">Ações de Homologação</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-slate-700/60">
                {loading ? (
                  <tr>
                    <td colSpan={5} className="px-6 py-12 text-center text-slate-400">
                      <Loader2 className="w-7 h-7 animate-spin mx-auto text-amber-400 mb-2" />
                      Carregando fila de triagem...
                    </td>
                  </tr>
                ) : items.length === 0 ? (
                  <tr>
                    <td colSpan={5} className="px-6 py-12 text-center text-slate-400">
                      <Inbox className="w-10 h-10 mx-auto mb-2 opacity-30 text-slate-400" />
                      Nenhum item encontrado nesta aba de triagem.
                    </td>
                  </tr>
                ) : (
                  items.map((item) => (
                    <tr key={item.id} className="hover:bg-slate-700/40 transition-colors">
                      
                      {/* Peça Sanitizada & Nome Original */}
                      <td className="px-6 py-4">
                        <div className="space-y-0.5">
                          <p className="font-bold text-white text-sm flex items-center gap-1.5">
                            {item.cleanPartName}
                            {item.status === "PENDING_REVIEW" && (
                              <span className="bg-amber-500/20 text-amber-300 border border-amber-500/30 text-[10px] px-2 py-0.5 rounded-full font-bold">
                                Triagem IA
                              </span>
                            )}
                          </p>
                          <p className="text-slate-400 text-xs italic">
                            Bruto: "{item.rawPartName}"
                          </p>
                        </div>
                      </td>

                      {/* Loja Solicitante */}
                      <td className="px-6 py-4 whitespace-nowrap">
                        <span className="inline-flex items-center gap-1 text-slate-300 font-medium bg-slate-900/60 px-2.5 py-1 rounded-lg border border-slate-700">
                          <Store className="w-3.5 h-3.5 text-orange-400" />
                          {item.storeName || "Loja Parceira"}
                        </span>
                      </td>

                      {/* Fabricante & Código */}
                      <td className="px-6 py-4 whitespace-nowrap">
                        <div className="space-y-0.5">
                          <span className="font-semibold text-slate-200 block">{item.manufacturer || "Original"}</span>
                          <span className="text-[11px] text-slate-400 block font-mono">{item.manufacturerCode || "S/CÓD"}</span>
                        </div>
                      </td>

                      {/* Veículo Aplicação */}
                      <td className="px-6 py-4">
                        {item.make || item.model ? (
                          <span className="inline-flex items-center gap-1 text-slate-300 bg-slate-900/40 px-2.5 py-1 rounded-lg border border-slate-700/60">
                            <Car className="w-3.5 h-3.5 text-blue-400" />
                            {item.make} {item.model} <small className="text-slate-400">({item.years || "Geral"})</small>
                          </span>
                        ) : (
                          <span className="text-slate-500 italic">Aplicação Geral</span>
                        )}
                      </td>

                      {/* Ações de Homologação */}
                      <td className="px-6 py-4 text-center whitespace-nowrap">
                        {item.status === "PENDING_REVIEW" ? (
                          <div className="flex items-center justify-center gap-2">
                            
                            {/* 1. Aprovar Nova Peça Canônica */}
                            <button
                              onClick={() => handleOpenApproveModal(item)}
                              disabled={submittingAction}
                              className="inline-flex items-center gap-1 px-3 py-1.5 bg-emerald-600 hover:bg-emerald-500 text-white rounded-lg font-bold text-xs shadow-sm transition-all cursor-pointer"
                              title="Aprovar e cadastrar como nova Peça Canônica no catálogo mestre"
                            >
                              <Check className="w-3.5 h-3.5" />
                              Aprovar
                            </button>

                            {/* 2. De-Para Manual (Mesclar com Existente) */}
                            <div className="flex items-center gap-1">
                              <select
                                value={mergeMap[item.id] || ""}
                                onChange={(e) => setMergeMap((prev) => ({ ...prev, [item.id]: e.target.value }))}
                                className="bg-slate-900 text-slate-200 border border-slate-700 rounded-lg px-2 py-1.5 text-xs focus:ring-2 focus:ring-amber-500 max-w-[180px] truncate"
                              >
                                <option value="">-- Mesclar com --</option>
                                {masterParts.map((mp) => (
                                  <option key={mp.id} value={mp.id}>
                                    {mp.name} ({mp.manufacturer})
                                  </option>
                                ))}
                              </select>

                              {mergeMap[item.id] && (
                                <button
                                  onClick={() => handleConfirmMerge(item)}
                                  disabled={submittingAction}
                                  className="inline-flex items-center gap-1 px-2.5 py-1.5 bg-amber-600 hover:bg-amber-500 text-slate-950 font-bold rounded-lg text-xs shadow-sm transition-all cursor-pointer"
                                  title="Confirmar De-Para Manual"
                                >
                                  <GitMerge className="w-3.5 h-3.5" />
                                  Mesclar
                                </button>
                              )}
                            </div>

                            {/* 3. Rejeitar */}
                            <button
                              onClick={() => handleReject(item)}
                              disabled={submittingAction}
                              className="inline-flex items-center p-1.5 bg-red-950/60 text-red-400 hover:bg-red-900 border border-red-800/80 rounded-lg text-xs transition-all cursor-pointer"
                              title="Rejeitar solicitação"
                            >
                              <X className="w-4 h-4" />
                            </button>
                          </div>
                        ) : item.status === "APPROVED" ? (
                          <span className="inline-flex items-center gap-1 text-emerald-400 bg-emerald-950/40 border border-emerald-800/60 px-3 py-1 rounded-full text-xs font-bold">
                            <CheckCircle2 className="w-3.5 h-3.5" />
                            Homologada
                          </span>
                        ) : (
                          <span className="inline-flex items-center gap-1 text-red-400 bg-red-950/40 border border-red-800/60 px-3 py-1 rounded-full text-xs font-bold">
                            <XCircle className="w-3.5 h-3.5" />
                            Rejeitada
                          </span>
                        )}
                      </td>

                    </tr>
                  ))
                )}
              </tbody>
            </table>
          </div>
        </div>

        {/* Modal de Confirmação de Aprovação */}
        {approvingItem && (
          <div className="fixed inset-0 bg-slate-950/80 backdrop-blur-sm flex items-center justify-center p-4 z-50 animate-in fade-in duration-150">
            <div className="bg-slate-800 border border-slate-700 rounded-2xl shadow-2xl max-w-md w-full overflow-hidden text-slate-100">
              <div className="p-6 border-b border-slate-700 bg-slate-900 flex justify-between items-center">
                <div className="flex items-center gap-2">
                  <CheckCircle2 className="w-5 h-5 text-emerald-400" />
                  <h3 className="text-lg font-bold text-white">Homologar Peça Canônica</h3>
                </div>
                <button
                  onClick={() => setApprovingItem(null)}
                  className="text-slate-400 hover:text-slate-200 rounded-lg p-1"
                >
                  <X className="w-5 h-5" />
                </button>
              </div>

              <div className="p-6 space-y-4">
                <div>
                  <label className="block text-xs font-bold text-slate-400 uppercase tracking-wider mb-1">
                    Nome Oficial Canônico no Catálogo Mestre
                  </label>
                  <input
                    type="text"
                    required
                    value={approveName}
                    onChange={(e) => setApproveName(e.target.value)}
                    className="w-full bg-slate-900 border border-slate-700 text-white px-3.5 py-2.5 rounded-xl text-sm font-semibold focus:ring-2 focus:ring-emerald-500"
                  />
                </div>

                <div>
                  <label className="block text-xs font-bold text-slate-400 uppercase tracking-wider mb-1">
                    Categoria Oficial
                  </label>
                  <select
                    value={approveCategory}
                    onChange={(e) => setApproveCategory(e.target.value)}
                    className="w-full bg-slate-900 border border-slate-700 text-white px-3.5 py-2.5 rounded-xl text-sm font-semibold focus:ring-2 focus:ring-emerald-500"
                  >
                    {CATEGORIES.map((cat) => (
                      <option key={cat.id} value={cat.id}>
                        {cat.name}
                      </option>
                    ))}
                  </select>
                </div>

                <div className="bg-slate-900/80 p-3 rounded-xl border border-slate-700 text-xs text-slate-300 space-y-1">
                  <p><strong>Fabricante:</strong> {approvingItem.manufacturer || "Original"}</p>
                  <p><strong>Código:</strong> {approvingItem.manufacturerCode || "S/CÓD"}</p>
                  <p><strong>Loja Origem:</strong> {approvingItem.storeName}</p>
                </div>

                <div className="pt-4 border-t border-slate-700 flex justify-end gap-3">
                  <button
                    type="button"
                    onClick={() => setApprovingItem(null)}
                    className="px-4 py-2 text-xs font-semibold text-slate-400 hover:bg-slate-700 rounded-xl transition-colors"
                  >
                    Cancelar
                  </button>
                  <button
                    type="button"
                    disabled={submittingAction}
                    onClick={handleConfirmApprove}
                    className="px-5 py-2 text-xs font-bold text-white bg-emerald-600 hover:bg-emerald-500 rounded-xl transition-all shadow-md disabled:opacity-50 flex items-center gap-2 cursor-pointer"
                  >
                    {submittingAction && <Loader2 className="w-4 h-4 animate-spin" />}
                    Confirmar Homologação
                  </button>
                </div>
              </div>
            </div>
          </div>
        )}

      </div>
    </div>
  );
}
