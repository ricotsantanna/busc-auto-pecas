// scripts/relink-store-offers.ts — Script de Saneamento e Relink Definitivo de Store Offers
import { getDb, schema } from "../src/db";
import { eq, notInArray, like, or } from "drizzle-orm";

async function runRelink() {
  console.log("🚀 Iniciando saneamento e relink de store_offers...");
  const db = await getDb();

  // 1. Obter todos os IDs das 133 peças mestre canônicas oficiais
  const canonicalParts = await db
    .select({ id: schema.masterParts.id, name: schema.masterParts.name })
    .from(schema.masterParts);

  const canonicalIds = canonicalParts.map((p) => p.id);
  console.log(`📦 Encontradas ${canonicalParts.length} peças canônicas oficiais.`);

  // 2. Buscar todas as ofertas registradas
  const allOffers = await db.select().from(schema.storeOffers);
  console.log(`📋 Total de ofertas em store_offers: ${allOffers.length}`);

  // Mapa de palavras-chave para remapeamento inteligente para as peças da Curva A/B (133 canônicas)
  const KEYWORD_MAP: Record<string, string> = {
    pastilha: "mp-pastilha-dianteira",
    disco: "mp-disco-dianteiro",
    filtro: "mp-filtro-oleo",
    oleo: "mp-oleo-5w30",
    amortecedor: "mp-amortecedor-dianteiro",
    vela: "mp-vela-iridium",
    cabo: "mp-cabo-vela",
    bomba: "mp-bomba-combustivel",
    bico: "mp-bico-injetor",
    sonda: "mp-sonda-lambda",
    pivo: "mp-pivo-suspensao",
    bieleta: "mp-bieleta-dianteira",
    correia: "mp-kit-correia-dentada",
    tensor: "mp-tensor-correia",
    embreagem: "mp-kit-embreagem",
    aditivo: "mp-aditivo-radiador",
    palheta: "mp-palheta-parabrisa",
    bateria: "mp-bateria-60ah",
  };

  let updatedCount = 0;
  let purgedCount = 0;

  for (const offer of allOffers) {
    // Se a oferta aponta para um partId que NÃO está na lista das 133 canônicas
    if (!canonicalIds.includes(offer.partId)) {
      console.log(`⚠️ Oferta ID ${offer.id} possui partId legada/desatualizada: "${offer.partId}"`);

      // Tenta recuperar o nome provisório ou limpo
      const provPartRows = await db
        .select()
        .from(schema.masterParts)
        .where(eq(schema.masterParts.id, offer.partId))
        .limit(1);

      const partName = provPartRows.length > 0 ? provPartRows[0].name.toLowerCase() : offer.partId.toLowerCase();

      // Procura termo correspondente
      let targetPartId: string | null = null;
      for (const [kw, targetId] of Object.entries(KEYWORD_MAP)) {
        if (partName.includes(kw)) {
          targetPartId = targetId;
          break;
        }
      }

      if (targetPartId && canonicalIds.includes(targetPartId)) {
        console.log(`  └─ 🔄 Remapeando para peça canônica: "${targetPartId}"`);
        await db
          .update(schema.storeOffers)
          .set({ partId: targetPartId, updatedAt: Date.now() })
          .where(eq(schema.storeOffers.id, offer.id));
        updatedCount++;
      } else {
        // Se for um item de teste corrompido/indefinido sem correspondência (ex: velocimetro moto, chicote de teste)
        console.log(`  └─ 🗑️ Removendo oferta corrompida de teste sem correspondência canônica`);
        await db.delete(schema.storeOffers).where(eq(schema.storeOffers.id, offer.id));
        purgedCount++;
      }
    }
  }

  console.log(`\n✅ Relink e saneamento concluídos com sucesso!`);
  console.log(`  - Ofertas remapeadas para peças canônicas: ${updatedCount}`);
  console.log(`  - Ofertas de teste legadas purgadas: ${purgedCount}`);
  process.exit(0);
}

runRelink().catch((err) => {
  console.error("❌ Erro ao executar relink de store_offers:", err);
  process.exit(1);
});
