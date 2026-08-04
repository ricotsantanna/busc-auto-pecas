import { TrendingUp, Package, Eye, MousePointerClick } from "lucide-react";

export default function LojistaDashboardHome() {
  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-slate-900">Visão Geral</h1>
        <p className="mt-1 text-sm text-slate-500">
          Acompanhe o desempenho das suas peças e do seu plano.
        </p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        {/* Card 1 */}
        <div className="bg-white p-6 rounded-xl border border-slate-200 shadow-sm flex flex-col">
          <div className="flex items-center justify-between">
            <h3 className="text-sm font-medium text-slate-500">Peças em Estoque</h3>
            <div className="p-2 bg-blue-50 text-blue-600 rounded-lg">
              <Package className="w-5 h-5" />
            </div>
          </div>
          <div className="mt-4">
            <p className="text-3xl font-bold text-slate-900">124</p>
            <p className="text-xs text-slate-500 mt-1">Peças cadastradas na plataforma</p>
          </div>
        </div>

        {/* Card 2 */}
        <div className="bg-white p-6 rounded-xl border border-slate-200 shadow-sm flex flex-col">
          <div className="flex items-center justify-between">
            <h3 className="text-sm font-medium text-slate-500">Visualizações no Site</h3>
            <div className="p-2 bg-orange-50 text-orange-600 rounded-lg">
              <Eye className="w-5 h-5" />
            </div>
          </div>
          <div className="mt-4">
            <p className="text-3xl font-bold text-slate-900">1,248</p>
            <p className="text-xs text-green-600 font-medium mt-1 flex items-center">
              <TrendingUp className="w-3 h-3 mr-1" /> +12% esta semana
            </p>
          </div>
        </div>

        {/* Card 3 */}
        <div className="bg-white p-6 rounded-xl border border-slate-200 shadow-sm flex flex-col">
          <div className="flex items-center justify-between">
            <h3 className="text-sm font-medium text-slate-500">Cliques no WhatsApp</h3>
            <div className="p-2 bg-green-50 text-green-600 rounded-lg">
              <MousePointerClick className="w-5 h-5" />
            </div>
          </div>
          <div className="mt-4">
            <p className="text-3xl font-bold text-slate-900">86</p>
            <p className="text-xs text-green-600 font-medium mt-1 flex items-center">
              <TrendingUp className="w-3 h-3 mr-1" /> +5% esta semana
            </p>
          </div>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mt-8">
        <div className="bg-white p-6 rounded-xl border border-slate-200 shadow-sm">
          <h3 className="text-lg font-medium text-slate-900 mb-4">Peças Mais Buscadas na sua Região</h3>
          <div className="space-y-4">
            <div className="flex items-center justify-between p-3 bg-slate-50 rounded-lg">
              <div>
                <p className="font-medium text-slate-900">Amortecedor Dianteiro</p>
                <p className="text-xs text-slate-500">Fiat Argo 1.0 (2018-2022)</p>
              </div>
              <span className="text-orange-600 font-medium text-sm">Alta Procura</span>
            </div>
            <div className="flex items-center justify-between p-3 bg-slate-50 rounded-lg">
              <div>
                <p className="font-medium text-slate-900">Kit Embreagem</p>
                <p className="text-xs text-slate-500">Chevrolet Onix 1.0 (2013-2019)</p>
              </div>
              <span className="text-orange-600 font-medium text-sm">Alta Procura</span>
            </div>
          </div>
          <p className="text-xs text-slate-400 mt-4 italic">
            * Dados baseados nas buscas de usuários no Estado do RJ nos últimos 7 dias.
          </p>
        </div>

        <div className="bg-white p-6 rounded-xl border border-slate-200 shadow-sm">
          <h3 className="text-lg font-medium text-slate-900 mb-4">Avisos e Atualizações</h3>
          <div className="space-y-4">
            <div className="p-4 border-l-4 border-orange-500 bg-orange-50 rounded-r-lg">
              <h4 className="font-medium text-orange-800">Bem-vindo ao BuscAutoPeças!</h4>
              <p className="text-sm text-orange-700 mt-1">
                Seu período de testes gratuito começou hoje. Cadastre suas peças no menu "Meu Estoque" para começar a receber clientes!
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
