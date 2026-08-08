import { ReactNode } from "react";
import Link from "next/link";
import { LayoutDashboard, Store, Package, Settings, LogOut } from "lucide-react";
import { LogoutButton } from "@/components/LogoutButton";

export default function LojistaDashboardLayout({ children }: { children: ReactNode }) {
  return (
    <div className="min-h-screen bg-slate-50 flex">
      {/* Sidebar */}
      <aside className="w-64 bg-slate-900 text-slate-300 flex flex-col">
        <div className="h-16 flex items-center px-6 bg-slate-950 font-bold text-white text-lg">
          Painel do Lojista
        </div>
        
        <nav className="flex-1 px-4 py-6 space-y-2">
          <Link href="/lojista" className="flex items-center gap-3 px-3 py-2 rounded-md hover:bg-slate-800 hover:text-white transition-colors">
            <LayoutDashboard className="w-5 h-5" />
            Visão Geral
          </Link>
          <Link href="/lojista/estoque" className="flex items-center gap-3 px-3 py-2 rounded-md hover:bg-slate-800 hover:text-white transition-colors">
            <Package className="w-5 h-5" />
            Meu Estoque
          </Link>
          <Link href="/lojista/filiais" className="flex items-center gap-3 px-3 py-2 rounded-md hover:bg-slate-800 hover:text-white transition-colors">
            <Store className="w-5 h-5" />
            Lojas / Filiais
          </Link>
          <Link href="/lojista/configuracoes" className="flex items-center gap-3 px-3 py-2 rounded-md hover:bg-slate-800 hover:text-white transition-colors">
            <Settings className="w-5 h-5" />
            Configurações
          </Link>
        </nav>

        <div className="p-4 bg-slate-950">
          <LogoutButton />
        </div>
      </aside>

      {/* Main Content */}
      <main className="flex-1 flex flex-col">
        {/* Header Superior */}
        <header className="h-16 bg-white border-b border-slate-200 flex items-center px-8 justify-between">
          <h1 className="text-lg font-semibold text-slate-800">BuscAutoPeças</h1>
          <div className="flex items-center gap-4">
            <div className="text-sm">
              <span className="text-slate-500">Plano Atual:</span>
              <span className="ml-2 inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                TRIAL (90 DIAS)
              </span>
            </div>
            <div className="w-8 h-8 rounded-full bg-orange-100 text-orange-600 flex items-center justify-center font-bold">
              AP
            </div>
          </div>
        </header>

        {/* Page Content */}
        <div className="flex-1 overflow-auto p-8">
          {children}
        </div>
      </main>
    </div>
  );
}
