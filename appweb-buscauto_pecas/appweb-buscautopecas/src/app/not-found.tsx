import Link from "next/link";
import { Wrench, Search, ArrowRight } from "lucide-react";

export default function NotFound() {
  return (
    <div className="min-h-screen bg-brand-bg flex flex-col">
      <header className="bg-brand-primary text-white shadow-sm">
        <div className="container flex items-center h-16">
          <Link href="/" className="flex items-center gap-3">
            <img
              src="/logo-white.svg"
              alt="BuscAutoPeças Logo"
              className="h-10 w-10 shrink-0 object-contain"
            />
            <div className="font-extrabold text-lg tracking-tight">
              BuscAuto<span className="text-brand-secondary">Peças</span>
            </div>
          </Link>
        </div>
      </header>
      <main className="flex-1 grid place-items-center px-6">
        <div className="max-w-md text-center">
          <div className="inline-flex items-center justify-center h-20 w-20 rounded-full bg-brand-secondary/10 text-brand-secondary text-4xl font-black">
            404
          </div>
          <h1 className="mt-6 text-3xl font-extrabold text-brand-ink">
            Essa página saiu de linha
          </h1>
          <p className="mt-2 text-brand-muted">
            O link que você seguiu não existe (mais). Sem stress — procure a
            peça que você precisa por aqui:
          </p>
          <Link href="/" className="btn-primary mt-6">
            <Search className="h-4 w-4" /> Buscar peças
            <ArrowRight className="h-4 w-4" />
          </Link>
        </div>
      </main>
    </div>
  );
}
