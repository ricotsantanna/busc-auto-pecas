import Link from "next/link";
import { ArrowLeft, ShieldCheck, Lock } from "lucide-react";

export const metadata = {
  title: "Política de Privacidade | BuscAutoPeças",
  description: "Política de Privacidade e Proteção de Dados (LGPD) do BuscAutoPeças.",
};

export default function PrivacidadePage() {
  return (
    <div className="min-h-screen bg-slate-50 flex flex-col">
      {/* Header */}
      <header className="bg-white border-b border-slate-200 py-4">
        <div className="container flex items-center justify-between">
          <Link href="/" className="flex items-center gap-2 text-brand-ink font-bold text-lg">
            <ArrowLeft className="h-5 w-5 text-brand-primary" /> Voltar ao BuscAutoPeças
          </Link>
          <span className="badge bg-emerald-50 text-emerald-700">
            <ShieldCheck className="h-3.5 w-3.5" /> Conformidade LGPD
          </span>
        </div>
      </header>

      {/* Main Content */}
      <main className="container py-12 flex-1 max-w-4xl">
        <div className="bg-white rounded-2xl ring-1 ring-slate-200 p-8 md:p-12 shadow-sm">
          <div className="flex items-center gap-3 text-brand-primary mb-4">
            <Lock className="h-8 w-8 text-emerald-600" />
            <h1 className="text-3xl font-extrabold text-brand-ink">Política de Privacidade</h1>
          </div>
          <p className="text-sm text-brand-muted mb-8">Em conformidade com a Lei Geral de Proteção de Dados (Lei nº 13.709/2018)</p>

          <div className="space-y-6 text-slate-700 leading-relaxed text-sm md:text-base">
            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">1. Coleta de Dados</h2>
              <p>
                O BuscAutoPeças respeita a sua privacidade. Para consumidores navegando no site, coletamos apenas dados técnicos de navegação e busca (veículo selecionado, peça buscada) de forma anônima para melhorar a experiência do usuário.
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">2. Dados de Lojistas Parceiros</h2>
              <p>
                Para lojistas parceiros cadastrados, coletamos nome da loja, telefone WhatsApp, cidade/estado e e-mail com a finalidade exclusiva de gestão da conta e exibição pública do contato da loja aos compradores.
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">3. Compartilhamento de Dados</h2>
              <p>
                Não vendemos, alugamos nem repassamos dados pessoais a terceiros para fins publicitários. Ao clicar para falar com um lojista via WhatsApp, o comprador se conecta diretamente à loja física parceira.
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">4. Seus Direitos (LGPD)</h2>
              <p>
                Você tem o direito de solicitar a confirmação, acesso, correção ou exclusão dos seus dados pessoais a qualquer momento através do nosso canal de atendimento.
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">5. Contato do Encarregado de Dados (DPO)</h2>
              <p>
                Para exercer seus direitos de privacidade, envie uma solicitação pela nossa página de <Link href="/contato" className="text-brand-primary underline font-medium">Contato</Link>.
              </p>
            </section>
          </div>
        </div>
      </main>

      <footer className="bg-white border-t border-slate-200 py-6 text-center text-xs text-brand-muted">
        © {new Date().getFullYear()} BuscAutoPeças — Todos os direitos reservados.
      </footer>
    </div>
  );
}
