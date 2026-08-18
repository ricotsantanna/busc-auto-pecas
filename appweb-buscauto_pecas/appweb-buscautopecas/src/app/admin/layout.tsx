import { ReactNode } from "react";
import Link from "next/link";
import { LayoutDashboard, Inbox, Database, ShieldAlert, LogOut, Sparkles } from "lucide-react";

export default function AdminLayout({ children }: { children: ReactNode }) {
  return (
    <div className="min-h-screen bg-slate-950 flex">
      {/* Sidebar Admin */}
      <aside className="w-64 bg-slate-900 text-slate-300 flex flex-col border-r border-slate-800">
        <div className="h-16 flex items-center px-6 bg-slate-950 font-extrabold text-amber-400 text-lg tracking-wide border-b border-slate-800 flex justify-between">
          <span className="flex items-center gap-2">
            <Sparkles className="w-5 h-5" /> Admin
          </span>
          <span className="text-[10px] font-bold bg-amber-400/20 text-amber-300 border border-amber-400/30 px-2 py-0.5 rounded-md">
            PROD
          </span>
        </div>
        
        <nav className="flex-1 px-4 py-6 space-y-2">
          <Link
            href="/admin/inbox"
            className="flex items-center justify-between px-3.5 py-2.5 rounded-xl bg-amber-500/10 text-amber-300 font-bold border border-amber-500/20 hover:bg-amber-500/20 transition-all"
          >
            <span className="flex items-center gap-3">
              <Inbox className="w-5 h-5 text-amber-400" />
              Triagem IA
            </span>
          </Link>

          <Link
            href="/lojista/estoque"
            className="flex items-center gap-3 px-3.5 py-2.5 rounded-xl hover:bg-slate-800 hover:text-white transition-colors text-slate-400 text-sm font-medium"
          >
            <Database className="w-5 h-5 text-slate-500" />
            Catálogo Mestre
          </Link>
        </nav>

        <div className="p-4 bg-slate-950 border-t border-slate-800 text-xs text-slate-500 text-center">
          BuscAutoPeças Admin v1.0
        </div>
      </aside>

      {/* Main Content */}
      <main className="flex-1 flex flex-col min-w-0">
        <div className="flex-1 overflow-auto">
          {children}
        </div>
      </main>
    </div>
  );
}
