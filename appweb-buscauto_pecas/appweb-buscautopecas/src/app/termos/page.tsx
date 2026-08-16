import Link from "next/link";
import { ArrowLeft, ShieldCheck, FileText } from "lucide-react";

export const metadata = {
  title: "Termos de Uso | BuscAutoPeças",
  description: "Termos e Condições de Uso da plataforma BuscAutoPeças.",
};

export default function TermosPage() {
  return (
    <div className="min-h-screen bg-slate-50 flex flex-col">
      {/* Header */}
      <header className="bg-white border-b border-slate-200 py-4">
        <div className="container flex items-center justify-between">
          <Link href="/" className="flex items-center gap-2 text-brand-ink font-bold text-lg">
            <ArrowLeft className="h-5 w-5 text-brand-primary" /> Voltar ao BuscAutoPeças
          </Link>
          <span className="badge bg-blue-50 text-brand-primary">
            <ShieldCheck className="h-3.5 w-3.5" /> Documentação Legal
          </span>
        </div>
      </header>

      {/* Main Content */}
      <main className="container py-12 flex-1 max-w-4xl">
        <div className="bg-white rounded-2xl ring-1 ring-slate-200 p-8 md:p-12 shadow-sm">
          <div className="flex items-center gap-3 text-brand-primary mb-4">
            <FileText className="h-8 w-8" />
            <h1 className="text-3xl font-extrabold text-brand-ink">Termos de Uso</h1>
          </div>
          <p className="text-sm text-brand-muted mb-8">Última atualização: Agosto de 2026</p>

          <div className="space-y-6 text-slate-700 leading-relaxed text-sm md:text-base">
            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">1. Apresentação e Objeto</h2>
              <p>
                O <strong>BuscAutoPeças</strong> (buscautopecas.com.br) é uma plataforma digital que atua como buscador e comparador de preços de peças automotivas novas e usadas, conectando consumidores e oficinas a lojas físicas parceiras.
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">2. Modelo de Atuação e Intermediação</h2>
              <p>
                O BuscAutoPeças <strong>não é o vendedor direto</strong> dos produtos anunciados e não realiza a cobrança ou entrega direta de peças. A plataforma funciona como geradora de contatos qualificados. O fechamento da compra, pagamento, negociação de frete e garantia ocorrem diretamente entre o comprador e a loja parceira (via WhatsApp ou balcão).
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">3. Catálogo Mestre Controlado e Responsabilidades dos Lojistas</h2>
              <p>
                Para garantir a compatibilidade e a qualidade dos anúncios, as peças são vinculadas a um Catálogo Mestre Padronizado. O lojista parceiro é o único responsável pela exatidão do preço, estado da peça (nova ou usada) e pela disponibilidade real do item em seu estoque.
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">4. Propriedade Intelectual</h2>
              <p>
                Todas as marcas, logotipos, códigos de sistema e estrutura de dados do Catálogo Mestre do BuscAutoPeças são de propriedade exclusiva da plataforma. É proibida a reprodução não autorizada do conteúdo.
              </p>
            </section>

            <section>
              <h2 className="text-lg font-bold text-brand-ink mb-2">5. Contato e Dúvidas</h2>
              <p>
                Em caso de dúvidas sobre estes Termos de Uso, entre em contato através da nossa página de <Link href="/contato" className="text-brand-primary underline font-medium">Contato</Link>.
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
