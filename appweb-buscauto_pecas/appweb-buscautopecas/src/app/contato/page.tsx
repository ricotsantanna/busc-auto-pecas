"use client";

import Link from "next/link";
import { ArrowLeft, Mail, MessageCircle, MapPin, Store, Send } from "lucide-react";

export default function ContatoPage() {
  return (
    <div className="min-h-screen bg-slate-50 flex flex-col">
      {/* Header */}
      <header className="bg-white border-b border-slate-200 py-4">
        <div className="container flex items-center justify-between">
          <Link href="/" className="flex items-center gap-2 text-brand-ink font-bold text-lg">
            <ArrowLeft className="h-5 w-5 text-brand-primary" /> Voltar ao BuscAutoPeças
          </Link>
          <span className="badge bg-orange-100 text-brand-secondary">
            Atendimento Rápido
          </span>
        </div>
      </header>

      {/* Main Content */}
      <main className="container py-12 flex-1 max-w-4xl">
        <div className="bg-white rounded-2xl ring-1 ring-slate-200 p-8 md:p-12 shadow-sm">
          <div className="max-w-xl">
            <h1 className="text-3xl font-extrabold text-brand-ink">Fale Conosco</h1>
            <p className="text-sm text-brand-muted mt-2">
              Dúvidas, sugestões ou interesse em cadastrar sua loja de autopeças? Fale diretamente com o nosso time de suporte.
            </p>
          </div>

          <div className="grid md:grid-cols-2 gap-8 mt-10">
            {/* Contact Cards */}
            <div className="space-y-4">
              <div className="rounded-xl border border-slate-200 p-5 bg-slate-50 flex items-start gap-4">
                <div className="p-3 bg-emerald-100 text-emerald-700 rounded-lg">
                  <MessageCircle className="h-6 w-6" />
                </div>
                <div>
                  <h3 className="font-bold text-brand-ink">WhatsApp Oficial</h3>
                  <p className="text-xs text-brand-muted mt-1">Suporte para compradores e lojistas</p>
                  <a
                    href="https://wa.me/5521999999999?text=Olá,%20gostaria%20de%20falar%20com%20o%20suporte%20do%20BuscAutoPeças"
                    target="_blank"
                    rel="noreferrer"
                    className="inline-flex items-center gap-1 text-sm font-semibold text-emerald-600 mt-2 hover:underline"
                  >
                    Iniciar conversa no WhatsApp →
                  </a>
                </div>
              </div>

              <div className="rounded-xl border border-slate-200 p-5 bg-slate-50 flex items-start gap-4">
                <div className="p-3 bg-blue-100 text-brand-primary rounded-lg">
                  <Mail className="h-6 w-6" />
                </div>
                <div>
                  <h3 className="font-bold text-brand-ink">E-mail</h3>
                  <p className="text-xs text-brand-muted mt-1">Envie dúvidas institucionais e parcerias</p>
                  <a
                    href="mailto:contato@buscautopecas.com.br"
                    className="inline-flex items-center gap-1 text-sm font-semibold text-brand-primary mt-2 hover:underline"
                  >
                    contato@buscautopecas.com.br
                  </a>
                </div>
              </div>

              <div className="rounded-xl border border-slate-200 p-5 bg-slate-50 flex items-start gap-4">
                <div className="p-3 bg-orange-100 text-brand-secondary rounded-lg">
                  <Store className="h-6 w-6" />
                </div>
                <div>
                  <h3 className="font-bold text-brand-ink">Área do Lojista</h3>
                  <p className="text-xs text-brand-muted mt-1">Já é parceiro ou quer cadastrar sua loja?</p>
                  <Link
                    href="/login"
                    className="inline-flex items-center gap-1 text-sm font-semibold text-brand-secondary mt-2 hover:underline"
                  >
                    Acessar Painel da Loja →
                  </Link>
                </div>
              </div>
            </div>

            {/* Quick Contact Form */}
            <div className="rounded-xl border border-slate-200 p-6 bg-white shadow-xs">
              <h3 className="font-bold text-brand-ink text-lg mb-4">Envie uma mensagem</h3>
              <form className="space-y-4" onSubmit={(e) => { e.preventDefault(); alert('Mensagem enviada com sucesso! Entraremos em contato em breve.'); }}>
                <div>
                  <label className="block text-xs font-semibold text-slate-700 mb-1">Seu Nome</label>
                  <input type="text" required placeholder="Digite seu nome" className="w-full px-3 py-2 border border-slate-200 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-brand-primary" />
                </div>
                <div>
                  <label className="block text-xs font-semibold text-slate-700 mb-1">Seu E-mail ou Telefone</label>
                  <input type="text" required placeholder="email@exemplo.com ou (21) 99999-9999" className="w-full px-3 py-2 border border-slate-200 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-brand-primary" />
                </div>
                <div>
                  <label className="block text-xs font-semibold text-slate-700 mb-1">Mensagem</label>
                  <textarea rows={4} required placeholder="Como podemos te ajudar?" className="w-full px-3 py-2 border border-slate-200 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-brand-primary"></textarea>
                </div>
                <button type="submit" className="w-full bg-brand-primary text-white py-2.5 rounded-lg font-bold text-sm hover:bg-brand-primary/90 transition flex items-center justify-center gap-2">
                  <Send className="h-4 w-4" /> Enviar Mensagem
                </button>
              </form>
            </div>
          </div>
        </div>
      </main>

      <footer className="bg-white border-t border-slate-200 py-6 text-center text-xs text-brand-muted">
        © {new Date().getFullYear()} BuscAutoPeças — Todos os direitos reservados.
      </footer>
    </div>
  );
}
