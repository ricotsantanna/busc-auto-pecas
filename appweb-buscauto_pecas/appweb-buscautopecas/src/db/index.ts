// src/db/index.ts — Conexão Drizzle otimizada para o Edge Runtime (Cloudflare Pages + D1)
//
// Em Cloudflare Pages, o binding D1 fica disponível via getRequestContext().env.DB.
// Em desenvolvimento local (fora do wrangler), retornamos um driver "mock" que
// permite as rotas de API responderem com dados fake — assim conseguimos ver a
// aplicação funcionando sem precisar rodar `wrangler pages dev`.

import { drizzle, type DrizzleD1Database } from "drizzle-orm/d1";
import * as schema from "./schema";

export type DB = DrizzleD1Database<typeof schema>;

/**
 * Tenta obter o binding D1 do request context do Cloudflare.
 * Retorna null se estivermos fora do runtime CF (ex.: `next dev` local).
 */
async function getD1(): Promise<D1Database | null> {
  try {
    // webpackIgnore: import resolvido apenas em produ\u00e7\u00e3o na Cloudflare Pages.
    // Em `next dev` local esse pacote pode n\u00e3o estar instalado \u2014 caimos no fallback mock.
    const mod: any =
      await import(/* webpackIgnore: true */ "@cloudflare/next-on-pages").catch(
        () => ({})
      );
    if (!mod.getRequestContext) return null;
    const ctx = mod.getRequestContext();
    return (ctx.env as { DB?: D1Database }).DB ?? null;
  } catch {
    return null;
  }
}

/**
 * getDb() — retorna a instância Drizzle conectada ao D1.
 * Deve ser chamada dentro de handlers (Edge). Nunca no top-level.
 * Nas rotas locais (sem CF), lançamos um erro para forçar o fallback mock.
 */
export async function getDb(): Promise<DB> {
  const d1 = await getD1();
  if (!d1) {
    throw new Error(
      "D1_UNAVAILABLE: rode `wrangler pages dev` ou faça deploy na Cloudflare Pages. Em `next dev` local, use os dados mock."
    );
  }
  return drizzle(d1, { schema });
}

/**
 * Helper para rotas: tenta usar D1, se não estiver disponível chama o fallback.
 */
export async function withDbOrMock<T>(
  fn: (db: DB) => Promise<T>,
  fallback: () => Promise<T> | T
): Promise<T> {
  try {
    const db = await getDb();
    return await fn(db);
  } catch (err) {
    // Log discreto no dev
    if (process.env.NODE_ENV !== "production") {
      console.warn(
        "[db] D1 indisponível — usando dados mock:",
        (err as Error).message.split(":")[0]
      );
    }
    return await fallback();
  }
}

export { schema };
