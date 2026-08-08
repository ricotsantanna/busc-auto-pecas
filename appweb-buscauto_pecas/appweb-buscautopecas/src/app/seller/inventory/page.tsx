"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { Package, Search, Plus, MoreVertical, Edit2, Trash2, AlertCircle } from "lucide-react";

export default function InventoryPage() {
  const [offers, setOffers] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  // MOCK DATA for now until we connect to the API
  useEffect(() => {
    setTimeout(() => {
      setOffers([
        {
          id: "offer-1",
          partName: "Pastilha de Freio Dianteira",
          partCode: "PF-1002",
          price: 120.50,
          condition: "NOVO",
          inStock: true,
          createdAt: new Date().toISOString(),
        },
        {
          id: "offer-2",
          partName: "Amortecedor Traseiro",
          partCode: "AM-441",
          price: 250.00,
          condition: "USADO",
          inStock: false,
          createdAt: new Date().toISOString(),
        }
      ]);
      setLoading(false);
    }, 1000);
  }, []);

  return (
    <div className="space-y-6 animate-in fade-in slide-in-from-bottom-4 duration-700">
      <header className="flex flex-col md:flex-row md:items-center justify-between gap-4">
        <div>
          <h1 className="text-3xl font-bold tracking-tight bg-clip-text text-transparent bg-gradient-to-r from-neutral-50 to-neutral-400">
            Meu Estoque
          </h1>
          <p className="text-neutral-400 mt-1">Gerencie as peças anunciadas na plataforma.</p>
        </div>
        <Link
          href="/seller/inventory/new"
          className="inline-flex items-center justify-center rounded-xl text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-indigo-500 disabled:pointer-events-none disabled:opacity-50 bg-indigo-600 text-white hover:bg-indigo-700 h-10 px-4 py-2 gap-2 shadow-lg shadow-indigo-600/20"
        >
          <Plus className="w-4 h-4" />
          Adicionar Peça
        </Link>
      </header>

      <div className="bg-neutral-900/40 border border-neutral-800/50 rounded-2xl backdrop-blur-md overflow-hidden flex flex-col">
        {/* Toolbar */}
        <div className="p-4 border-b border-neutral-800/50 flex items-center gap-4">
          <div className="relative flex-1 max-w-sm">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-neutral-500" />
            <input
              type="text"
              placeholder="Buscar por nome ou código..."
              className="w-full bg-neutral-950/50 border border-neutral-800 rounded-lg pl-9 pr-4 py-2 text-sm focus:outline-none focus:ring-1 focus:ring-indigo-500 focus:border-indigo-500 transition-all text-neutral-200 placeholder:text-neutral-500"
            />
          </div>
        </div>

        {/* Table */}
        <div className="overflow-x-auto">
          <table className="w-full text-sm text-left">
            <thead className="text-xs text-neutral-400 uppercase bg-neutral-900/50 border-b border-neutral-800/50">
              <tr>
                <th className="px-6 py-4 font-medium">Peça</th>
                <th className="px-6 py-4 font-medium">Preço</th>
                <th className="px-6 py-4 font-medium">Condição</th>
                <th className="px-6 py-4 font-medium">Status</th>
                <th className="px-6 py-4 text-right font-medium">Ações</th>
              </tr>
            </thead>
            <tbody>
              {loading ? (
                <tr>
                  <td colSpan={5} className="px-6 py-10 text-center">
                    <div className="flex flex-col items-center justify-center text-neutral-500">
                      <div className="w-6 h-6 border-2 border-indigo-500 border-t-transparent rounded-full animate-spin mb-2" />
                      Carregando estoque...
                    </div>
                  </td>
                </tr>
              ) : offers.length === 0 ? (
                <tr>
                  <td colSpan={5} className="px-6 py-10 text-center">
                    <div className="flex flex-col items-center justify-center text-neutral-500">
                      <Package className="w-8 h-8 mb-2 opacity-50" />
                      Nenhuma peça cadastrada.
                    </div>
                  </td>
                </tr>
              ) : (
                offers.map((offer) => (
                  <tr key={offer.id} className="border-b border-neutral-800/50 hover:bg-neutral-800/30 transition-colors">
                    <td className="px-6 py-4">
                      <p className="font-medium text-neutral-200">{offer.partName}</p>
                      <p className="text-xs text-neutral-500 font-mono mt-0.5">{offer.partCode}</p>
                    </td>
                    <td className="px-6 py-4 font-medium">
                      R$ {offer.price.toFixed(2)}
                    </td>
                    <td className="px-6 py-4">
                      <span className={`inline-flex items-center px-2 py-1 rounded-full text-xs font-medium ${
                        offer.condition === "NOVO" 
                          ? "bg-emerald-500/10 text-emerald-400 border border-emerald-500/20"
                          : "bg-amber-500/10 text-amber-400 border border-amber-500/20"
                      }`}>
                        {offer.condition}
                      </span>
                    </td>
                    <td className="px-6 py-4">
                      {offer.inStock ? (
                        <span className="inline-flex items-center text-emerald-400 text-xs font-medium gap-1">
                          <span className="w-1.5 h-1.5 rounded-full bg-emerald-400" />
                          Em Estoque
                        </span>
                      ) : (
                        <span className="inline-flex items-center text-red-400 text-xs font-medium gap-1">
                          <AlertCircle className="w-3 h-3" />
                          Esgotado
                        </span>
                      )}
                    </td>
                    <td className="px-6 py-4 text-right">
                      <div className="flex items-center justify-end gap-2">
                        <button className="p-2 hover:bg-neutral-800 rounded-lg text-neutral-400 hover:text-neutral-200 transition-colors" title="Editar">
                          <Edit2 className="w-4 h-4" />
                        </button>
                        <button className="p-2 hover:bg-red-500/10 rounded-lg text-neutral-400 hover:text-red-400 transition-colors" title="Remover">
                          <Trash2 className="w-4 h-4" />
                        </button>
                      </div>
                    </td>
                  </tr>
                ))
              )}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}
