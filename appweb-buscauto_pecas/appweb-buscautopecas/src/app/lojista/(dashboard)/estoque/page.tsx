"use client";

import { useState } from "react";
import { Plus, Search, Filter } from "lucide-react";

export default function LojistaEstoque() {
  const [search, setSearch] = useState("");

  // Dados mockados para demonstração inicial
  const parts = [
    { id: 1, name: "Amortecedor Dianteiro", manufacturer: "Monroe", price: 250.0, stock: 12, cars: "Fiat Argo (2018-2022)" },
    { id: 2, name: "Kit Embreagem", manufacturer: "LUK", price: 680.0, stock: 4, cars: "Chevrolet Onix 1.0 (2013-2019)" },
    { id: 3, name: "Pastilha de Freio Dianteira", manufacturer: "Cobreq", price: 95.0, stock: 24, cars: "VW Gol G6 (2013-2016)" },
  ];

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
        <div>
          <h1 className="text-2xl font-bold text-slate-900">Meu Estoque</h1>
          <p className="mt-1 text-sm text-slate-500">
            Gerencie as peças que estão visíveis para os clientes no BuscAutoPeças.
          </p>
        </div>
        <button className="inline-flex items-center justify-center px-4 py-2 bg-orange-600 text-white rounded-lg font-medium hover:bg-orange-700 transition-colors shadow-sm">
          <Plus className="w-5 h-5 mr-2" />
          Nova Peça
        </button>
      </div>

      <div className="bg-white rounded-xl border border-slate-200 shadow-sm overflow-hidden">
        {/* Barra de Ferramentas */}
        <div className="p-4 border-b border-slate-200 flex flex-col sm:flex-row gap-4">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
            <input
              type="text"
              placeholder="Buscar por nome ou código..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="w-full pl-10 pr-4 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
            />
          </div>
          <button className="inline-flex items-center justify-center px-4 py-2 border border-slate-300 text-slate-700 rounded-lg font-medium hover:bg-slate-50 transition-colors bg-white">
            <Filter className="w-5 h-5 mr-2" />
            Filtros
          </button>
        </div>

        {/* Tabela */}
        <div className="overflow-x-auto">
          <table className="w-full text-left text-sm text-slate-600">
            <thead className="bg-slate-50 text-slate-500 font-medium border-b border-slate-200">
              <tr>
                <th className="px-6 py-4">Peça</th>
                <th className="px-6 py-4">Fabricante</th>
                <th className="px-6 py-4">Compatibilidade Principal</th>
                <th className="px-6 py-4">Preço (R$)</th>
                <th className="px-6 py-4">Qtd.</th>
                <th className="px-6 py-4 text-right">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-200">
              {parts.map((part) => (
                <tr key={part.id} className="hover:bg-slate-50 transition-colors">
                  <td className="px-6 py-4 font-medium text-slate-900">{part.name}</td>
                  <td className="px-6 py-4">{part.manufacturer}</td>
                  <td className="px-6 py-4 text-xs">{part.cars}</td>
                  <td className="px-6 py-4 font-medium text-green-700">R$ {part.price.toFixed(2)}</td>
                  <td className="px-6 py-4">
                    <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-slate-100 text-slate-800">
                      {part.stock} unid.
                    </span>
                  </td>
                  <td className="px-6 py-4 text-right space-x-3">
                    <button className="text-orange-600 hover:text-orange-800 font-medium">Editar</button>
                    <button className="text-red-600 hover:text-red-800 font-medium">Excluir</button>
                  </td>
                </tr>
              ))}
              {parts.length === 0 && (
                <tr>
                  <td colSpan={6} className="px-6 py-8 text-center text-slate-500">
                    Nenhuma peça encontrada no seu estoque.
                  </td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
        
        <div className="p-4 border-t border-slate-200 bg-slate-50 text-xs text-slate-500 flex justify-between items-center">
          <span>Mostrando 3 de 3 peças</span>
          <div className="flex gap-1">
            <button className="px-2 py-1 border border-slate-300 rounded bg-white text-slate-400 cursor-not-allowed">Anterior</button>
            <button className="px-2 py-1 border border-slate-300 rounded bg-white text-slate-400 cursor-not-allowed">Próxima</button>
          </div>
        </div>
      </div>
    </div>
  );
}
