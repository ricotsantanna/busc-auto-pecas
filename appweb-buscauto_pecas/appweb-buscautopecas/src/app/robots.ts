import { MetadataRoute } from "next";

export default function robots(): MetadataRoute.Robots {
  return {
    rules: {
      userAgent: "*",
      allow: "/",
      disallow: ["/api/", "/lojista/", "/seller/"],
    },
    sitemap: "https://www.buscautopecas.com.br/sitemap.xml",
  };
}
