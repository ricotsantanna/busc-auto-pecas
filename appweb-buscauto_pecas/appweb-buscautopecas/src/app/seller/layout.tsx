"use client";

import { ReactNode } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { LayoutDashboard, Package, Settings, Store, LogOut } from "lucide-react";

export default function SellerLayout({ children }: { children: ReactNode }) {
  const pathname = usePathname();

  const menuItems = [
    { name: "Visão Geral", href: "/seller", icon: LayoutDashboard },
    { name: "Meu Estoque", href: "/seller/inventory", icon: Package },
    { name: "Configurações", href: "/seller/settings", icon: Settings },
  ];

  return (
    <div className="min-h-screen bg-neutral-950 text-neutral-50 flex flex-col md:flex-row font-sans selection:bg-indigo-500/30">
      {/* Sidebar */}
      <aside className="w-full md:w-64 bg-neutral-900/50 border-b md:border-b-0 md:border-r border-neutral-800 backdrop-blur-xl flex flex-col">
        <div className="p-6 border-b border-neutral-800/50 flex items-center gap-3">
          <div className="bg-gradient-to-br from-indigo-500 to-purple-600 p-2 rounded-xl shadow-lg shadow-indigo-500/20">
            <Store className="w-6 h-6 text-white" />
          </div>
          <div>
            <h2 className="font-bold text-lg tracking-tight">Painel Lojista</h2>
            <p className="text-xs text-neutral-400">AutoPeças São Paulo</p>
          </div>
        </div>

        <nav className="flex-1 p-4 space-y-2">
          {menuItems.map((item) => {
            const Icon = item.icon;
            const isActive = pathname === item.href;
            return (
              <Link
                key={item.name}
                href={item.href}
                className={`flex items-center gap-3 px-4 py-3 rounded-xl transition-all duration-300 ${
                  isActive
                    ? "bg-indigo-500/10 text-indigo-400 font-medium"
                    : "text-neutral-400 hover:bg-neutral-800/50 hover:text-neutral-200"
                }`}
              >
                <Icon className={`w-5 h-5 ${isActive ? "text-indigo-400" : ""}`} />
                {item.name}
              </Link>
            );
          })}
        </nav>

        <div className="p-4 mt-auto">
          <Link
            href="/"
            className="flex items-center gap-3 px-4 py-3 rounded-xl text-neutral-400 hover:bg-red-500/10 hover:text-red-400 transition-colors"
          >
            <LogOut className="w-5 h-5" />
            Sair do Painel
          </Link>
        </div>
      </aside>

      {/* Main Content */}
      <main className="flex-1 flex flex-col relative overflow-hidden">
        {/* Background ambient light */}
        <div className="absolute top-[-10%] left-[-10%] w-[40%] h-[40%] rounded-full bg-indigo-600/10 blur-[120px] pointer-events-none" />
        
        <div className="flex-1 overflow-y-auto p-6 md:p-10 relative z-10">
          {children}
        </div>
      </main>
    </div>
  );
}
