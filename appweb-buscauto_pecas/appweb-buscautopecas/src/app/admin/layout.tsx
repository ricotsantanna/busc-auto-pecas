import { ReactNode } from "react";
import Link from "next/link";
import { getAdminSession } from "@/lib/auth-edge";
import { redirect } from "next/navigation";
import { LayoutDashboard, Inbox, Database, ExternalLink, ArrowLeft, Sparkles, LogOut } from "lucide-react";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";

export default async function AdminLayout({ children }: { children: ReactNode }) {
  const session = await getAdminSession();

  // Se não estiver autenticado como admin, a proteção do layout redireciona para /admin/login
  if (!session) {
    redirect("/admin/login");
  }

  return (
    <div className="min-h-screen bg-slate-950 flex flex-col md:flex-row">
      {/* Sidebar Admin */}
      <aside className="w-full md:w-64 bg-slate-900 text-slate-300 flex flex-col border-r border-slate-800 shrink-0">
        <div className="h-16 flex items-center px-6 bg-slate-950 font-extrabold text-amber-400 text-lg tracking-wide border-b border-slate-800 justify-between">
          <span className="flex items-center gap-2">
            <Sparkles className="w-5 h-5 text-amber-400" /> Admin
          </span>
          <span className="text-[10px] font-bold bg-amber-400/20 text-amber-300 border border-amber-400/30 px-2 py-0.5 rounded-md">
            PROD
          </span>
        </div>
        
        <nav className="flex-1 px-4 py-6 space-y-2">
          {/* ← Voltar ao Painel Geral */}
          <Link
            href="/lojista"
            className="flex items-center gap-2.5 px-3.5 py-2 rounded-xl text-slate-400 hover:bg-slate-800 hover:text-white transition-colors text-xs font-semibold mb-3 border border-slate-800"
          >
            <ArrowLeft className="w-4 h-4" />
            ← Voltar ao Painel Geral
          </Link>

          <Link
            href="/admin/inbox"
            className="flex items-center justify-between px-3.5 py-2.5 rounded-xl bg-amber-500/10 text-amber-300 font-bold border border-amber-500/20 hover:bg-amber-500/20 transition-all text-xs"
          >
            <span className="flex items-center gap-3">
              <Inbox className="w-4 h-4 text-amber-400" />
              Fila de Triagem IA
            </span>
          </Link>

          <Link
            href="/lojista/estoque"
            className="flex items-center gap-3 px-3.5 py-2.5 rounded-xl hover:bg-slate-800 hover:text-white transition-colors text-slate-400 text-xs font-medium"
          >
            <Database className="w-4 h-4 text-slate-500" />
            Catálogo Mestre
          </Link>

          {/* 🌐 Ver Site / Loja Pública */}
          <a
            href="/"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-2.5 px-3.5 py-2.5 rounded-xl bg-blue-500/10 text-blue-400 border border-blue-500/20 hover:bg-blue-500/20 transition-colors text-xs font-semibold mt-4"
          >
            <ExternalLink className="w-4 h-4 text-blue-400" />
            🌐 Ver Site / Loja Pública
          </a>
        </nav>

        <div className="p-4 bg-slate-950 border-t border-slate-800 flex items-center justify-between">
          <div className="text-[11px] text-slate-500 truncate max-w-[120px]">
            {session.email}
          </div>
          <AdminLogoutButton />
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
