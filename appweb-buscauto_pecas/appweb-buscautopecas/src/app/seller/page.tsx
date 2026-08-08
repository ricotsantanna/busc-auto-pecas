"use client";

import { Package, Eye, Star, TrendingUp, TrendingDown, ArrowUpRight } from "lucide-react";
import Link from "next/link";

export default function SellerDashboard() {
  return (
    <div className="space-y-8 animate-in fade-in slide-in-from-bottom-4 duration-700">
      <header>
        <h1 className="text-3xl font-bold tracking-tight bg-clip-text text-transparent bg-gradient-to-r from-neutral-50 to-neutral-400">
          Visão Geral
        </h1>
        <p className="text-neutral-400 mt-1">Acompanhe o desempenho do seu estoque e da sua loja.</p>
      </header>

      {/* Metrics Cards */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        <div className="bg-neutral-900/40 border border-neutral-800/50 rounded-2xl p-6 backdrop-blur-md relative overflow-hidden group">
          <div className="absolute top-0 right-0 p-4 opacity-10 group-hover:opacity-20 transition-opacity">
            <Package className="w-16 h-16 text-indigo-500" />
          </div>
          <p className="text-sm font-medium text-neutral-400 flex items-center gap-2">
            Total de Peças Ativas
          </p>
          <div className="mt-4 flex items-baseline gap-3">
            <span className="text-4xl font-bold">142</span>
            <span className="text-xs text-green-400 flex items-center bg-green-400/10 px-2 py-1 rounded-full">
              <TrendingUp className="w-3 h-3 mr-1" /> +12%
            </span>
          </div>
        </div>

        <div className="bg-neutral-900/40 border border-neutral-800/50 rounded-2xl p-6 backdrop-blur-md relative overflow-hidden group">
          <div className="absolute top-0 right-0 p-4 opacity-10 group-hover:opacity-20 transition-opacity">
            <Eye className="w-16 h-16 text-purple-500" />
          </div>
          <p className="text-sm font-medium text-neutral-400 flex items-center gap-2">
            Visitas no Perfil (30 dias)
          </p>
          <div className="mt-4 flex items-baseline gap-3">
            <span className="text-4xl font-bold">1.240</span>
            <span className="text-xs text-green-400 flex items-center bg-green-400/10 px-2 py-1 rounded-full">
              <TrendingUp className="w-3 h-3 mr-1" /> +5%
            </span>
          </div>
        </div>

        <div className="bg-neutral-900/40 border border-neutral-800/50 rounded-2xl p-6 backdrop-blur-md relative overflow-hidden group">
          <div className="absolute top-0 right-0 p-4 opacity-10 group-hover:opacity-20 transition-opacity">
            <Star className="w-16 h-16 text-yellow-500" />
          </div>
          <p className="text-sm font-medium text-neutral-400 flex items-center gap-2">
            Avaliação Média
          </p>
          <div className="mt-4 flex items-baseline gap-3">
            <span className="text-4xl font-bold">4.8</span>
            <span className="text-xs text-yellow-400 flex items-center bg-yellow-400/10 px-2 py-1 rounded-full">
              <Star className="w-3 h-3 mr-1 fill-yellow-400" /> 15 av.
            </span>
          </div>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Quick Actions */}
        <div className="bg-neutral-900/30 border border-neutral-800/50 rounded-2xl p-6 backdrop-blur-md">
          <h3 className="text-lg font-semibold mb-4">Ações Rápidas</h3>
          <div className="space-y-3">
            <Link
              href="/seller/inventory/new"
              className="flex items-center justify-between p-4 rounded-xl bg-indigo-500/10 border border-indigo-500/20 hover:bg-indigo-500/20 transition-colors group"
            >
              <div className="flex items-center gap-3">
                <div className="bg-indigo-500/20 p-2 rounded-lg text-indigo-400">
                  <Package className="w-5 h-5" />
                </div>
                <div>
                  <p className="font-medium text-indigo-100">Adicionar Nova Peça</p>
                  <p className="text-xs text-indigo-300">Cadastre um novo item no estoque</p>
                </div>
              </div>
              <ArrowUpRight className="w-5 h-5 text-indigo-400 opacity-0 group-hover:opacity-100 transition-opacity transform group-hover:translate-x-1 group-hover:-translate-y-1" />
            </Link>
          </div>
        </div>

        {/* Recent Activity Mock */}
        <div className="bg-neutral-900/30 border border-neutral-800/50 rounded-2xl p-6 backdrop-blur-md">
          <h3 className="text-lg font-semibold mb-4">Atividade Recente</h3>
          <div className="space-y-4">
            <div className="flex items-start gap-3">
              <div className="bg-neutral-800 p-2 rounded-lg">
                <Package className="w-4 h-4 text-neutral-400" />
              </div>
              <div>
                <p className="text-sm font-medium">Pastilha de Freio Adicionada</p>
                <p className="text-xs text-neutral-500">Há 2 horas</p>
              </div>
            </div>
            <div className="flex items-start gap-3">
              <div className="bg-neutral-800 p-2 rounded-lg">
                <TrendingDown className="w-4 h-4 text-red-400" />
              </div>
              <div>
                <p className="text-sm font-medium">Preço Atualizado: Amortecedor</p>
                <p className="text-xs text-neutral-500">Há 1 dia</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
