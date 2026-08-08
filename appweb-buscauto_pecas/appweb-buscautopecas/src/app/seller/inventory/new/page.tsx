"use client";

import { useState } from "react";
import Link from "next/link";
import { ArrowLeft, Save, PackagePlus, AlertCircle } from "lucide-react";

export default function NewOfferPage() {
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    // Simulate API call
    setTimeout(() => {
      setLoading(false);
      setSuccess(true);
      setTimeout(() => {
        window.location.href = "/seller/inventory";
      }, 1500);
    }, 1000);
  };

  return (
    <div className="max-w-2xl mx-auto space-y-6 animate-in fade-in slide-in-from-bottom-4 duration-700">
      <header className="flex items-center gap-4">
        <Link
          href="/seller/inventory"
          className="p-2 hover:bg-neutral-800 rounded-xl text-neutral-400 hover:text-neutral-200 transition-colors"
        >
          <ArrowLeft className="w-5 h-5" />
        </Link>
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Adicionar Nova Peça</h1>
          <p className="text-sm text-neutral-400">Cadastre uma nova oferta no seu estoque.</p>
        </div>
      </header>

      <form onSubmit={handleSubmit} className="bg-neutral-900/40 border border-neutral-800/50 rounded-2xl p-6 md:p-8 backdrop-blur-md space-y-8">
        
        {/* Section 1: Produto */}
        <div className="space-y-4">
          <div className="flex items-center gap-2 border-b border-neutral-800/50 pb-2">
            <PackagePlus className="w-5 h-5 text-indigo-400" />
            <h2 className="text-lg font-medium">Informações da Peça</h2>
          </div>

          <div className="space-y-4">
            <div>
              <label className="block text-sm font-medium text-neutral-300 mb-1.5">
                Peça (Catálogo Master) <span className="text-red-400">*</span>
              </label>
              <select 
                required
                className="w-full bg-neutral-950/50 border border-neutral-800 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-1 focus:ring-indigo-500 focus:border-indigo-500 transition-all text-neutral-200 appearance-none"
              >
                <option value="">Selecione uma peça...</option>
                <option value="p1">Pastilha de Freio Dianteira (Cobreq)</option>
                <option value="p2">Amortecedor Traseiro (Monroe)</option>
                <option value="p3">Filtro de Óleo (Tecfil)</option>
                <option value="p4">Vela de Ignição (NGK)</option>
              </select>
              <p className="text-xs text-neutral-500 mt-1.5">
                Busque pelo nome ou código do fabricante. Se não encontrar, entre em contato com o suporte.
              </p>
            </div>
          </div>
        </div>

        {/* Section 2: Oferta */}
        <div className="space-y-4">
          <div className="flex items-center gap-2 border-b border-neutral-800/50 pb-2">
            <h2 className="text-lg font-medium">Detalhes da Oferta</h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm font-medium text-neutral-300 mb-1.5">
                Preço (R$) <span className="text-red-400">*</span>
              </label>
              <input
                type="number"
                step="0.01"
                min="0"
                required
                placeholder="0,00"
                className="w-full bg-neutral-950/50 border border-neutral-800 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-1 focus:ring-indigo-500 focus:border-indigo-500 transition-all text-neutral-200"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-neutral-300 mb-1.5">
                Condição <span className="text-red-400">*</span>
              </label>
              <div className="flex bg-neutral-950/50 border border-neutral-800 rounded-xl p-1">
                <label className="flex-1 text-center cursor-pointer">
                  <input type="radio" name="condition" value="NOVO" defaultChecked className="peer sr-only" />
                  <div className="py-2 text-sm font-medium rounded-lg text-neutral-400 peer-checked:bg-indigo-500/10 peer-checked:text-indigo-400 transition-all">
                    Nova
                  </div>
                </label>
                <label className="flex-1 text-center cursor-pointer">
                  <input type="radio" name="condition" value="USADO" className="peer sr-only" />
                  <div className="py-2 text-sm font-medium rounded-lg text-neutral-400 peer-checked:bg-indigo-500/10 peer-checked:text-indigo-400 transition-all">
                    Usada
                  </div>
                </label>
              </div>
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-neutral-300 mb-1.5">
              Estoque <span className="text-red-400">*</span>
            </label>
            <label className="flex items-center gap-3 cursor-pointer">
              <input type="checkbox" defaultChecked className="w-5 h-5 rounded border-neutral-800 bg-neutral-950/50 text-indigo-500 focus:ring-indigo-500 focus:ring-offset-neutral-950" />
              <span className="text-sm text-neutral-300">Produto disponível para entrega imediata</span>
            </label>
          </div>

          <div>
            <label className="block text-sm font-medium text-neutral-300 mb-1.5">
              Observações (Opcional)
            </label>
            <textarea
              rows={3}
              placeholder="Ex: Peça com leve arranhão na embalagem..."
              className="w-full bg-neutral-950/50 border border-neutral-800 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-1 focus:ring-indigo-500 focus:border-indigo-500 transition-all text-neutral-200 resize-none"
            />
          </div>
        </div>

        {/* Submit */}
        <div className="pt-4 border-t border-neutral-800/50 flex items-center justify-end gap-3">
          <Link
            href="/seller/inventory"
            className="px-6 py-2.5 rounded-xl text-sm font-medium text-neutral-300 hover:text-white hover:bg-neutral-800 transition-colors"
          >
            Cancelar
          </Link>
          <button
            type="submit"
            disabled={loading || success}
            className="inline-flex items-center justify-center rounded-xl text-sm font-medium transition-all focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-indigo-500 disabled:pointer-events-none disabled:opacity-50 bg-indigo-600 text-white hover:bg-indigo-700 h-10 px-6 gap-2 shadow-lg shadow-indigo-600/20 w-full sm:w-auto"
          >
            {loading ? (
              <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
            ) : success ? (
              "Salvo com sucesso!"
            ) : (
              <>
                <Save className="w-4 h-4" />
                Salvar Oferta
              </>
            )}
          </button>
        </div>
      </form>
    </div>
  );
}
