// next.config.js — BuscAutoPeças (Cloudflare Pages target)
// Em desenvolvimento local rodamos com `next dev` normal.
// Em produção usamos @cloudflare/next-on-pages para gerar a build compatível com Cloudflare Pages.

// eslint-disable-next-line @typescript-eslint/no-var-requires
// const { setupDevPlatform } = require("@cloudflare/next-on-pages/next-dev");
// if (process.env.NODE_ENV === "development") { setupDevPlatform().catch(() => {}); }

/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  typescript: {
    ignoreBuildErrors: true,
  },
  eslint: {
    ignoreDuringBuilds: true,
  },
  images: {
    unoptimized: true,
  },
  async headers() {
    return [
      {
        source: "/(.*)",
        headers: [
          { key: "X-Frame-Options", value: "ALLOWALL" },
          { key: "Content-Security-Policy", value: "frame-ancestors *;" },
          { key: "Access-Control-Allow-Origin", value: process.env.CORS_ORIGINS || "*" },
          { key: "Access-Control-Allow-Methods", value: "GET, POST, PUT, DELETE, OPTIONS" },
          { key: "Access-Control-Allow-Headers", value: "*" },
        ],
      },
    ];
  },
};

module.exports = nextConfig;
