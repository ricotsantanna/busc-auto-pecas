import { MetadataRoute } from "next";

export const runtime = "edge";

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = "https://www.buscautopecas.com.br";

  const staticRoutes = [
    "",
    "/search",
    "/termos",
    "/privacidade",
    "/contato",
    "/login",
    "/lojista/login",
    "/lojista/cadastro",
  ].map((route) => ({
    url: `${baseUrl}${route}`,
    lastModified: new Date().toISOString(),
    changeFrequency: "daily" as const,
    priority: route === "" ? 1.0 : 0.8,
  }));

  return staticRoutes;
}
