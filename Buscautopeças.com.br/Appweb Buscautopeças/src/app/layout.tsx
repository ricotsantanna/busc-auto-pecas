import type { Metadata } from "next";
import "./globals.css";
import { Providers } from "./providers";

export const metadata: Metadata = {
  title: "BuscAutoPeças — Encontre peças automotivas ao melhor preço",
  description:
    "Buscador e comparador de preços de peças automotivas novas e usadas em lojas físicas locais. Compare, converse via WhatsApp e economize.",
  keywords: [
    "autopeças",
    "peças automotivas",
    "comparador de preços",
    "peças usadas",
    "peças novas",
  ],
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="pt-BR">
      <body>
        <Providers>{children}</Providers>
      </body>
    </html>
  );
}
