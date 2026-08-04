// src/db/schema.ts — Drizzle ORM schema para Cloudflare D1 (SQLite)
// Observações importantes:
// - D1 é SQLite. Não há gen_random_uuid() nativo, então geramos UUIDs em runtime (crypto.randomUUID()).
// - Não há ENUM nativo em SQLite; usamos coluna `text` + CHECK constraint via drizzle.
// - Todos os IDs principais são TEXT (UUID v4) com default gerado em app.

import { sql, relations } from "drizzle-orm";
import {
  sqliteTable,
  text,
  integer,
  real,
  uniqueIndex,
  index,
  check,
  primaryKey,
} from "drizzle-orm/sqlite-core";

// Helper — gera UUID v4 no momento do INSERT (roda no Edge do CF Workers).
const uuid = () =>
  text("id")
    .primaryKey()
    .$defaultFn(() => crypto.randomUUID());

const createdAt = () =>
  integer("created_at", { mode: "timestamp" })
    .notNull()
    .default(sql`(unixepoch())`);

const updatedAt = () =>
  integer("updated_at", { mode: "timestamp" })
    .notNull()
    .default(sql`(unixepoch())`);

// ============================================================
// 1) BRANDS — Montadoras (Fiat, VW, Chevrolet...)
// ============================================================
export const brands = sqliteTable(
  "brands",
  {
    id: uuid(),
    name: text("name").notNull(),
    slug: text("slug").notNull(),
    logoUrl: text("logo_url"),
    vehicleType: text("vehicle_type").notNull().default("carro"), // carro, moto, caminhao
    createdAt: createdAt(),
  },
  (t) => ({
    slugUnique: uniqueIndex("brands_slug_unique").on(t.slug),
    nameIdx: index("brands_name_idx").on(t.name),
  })
);

// ============================================================
// 2) CAR_MODELS — Modelos vinculados a uma montadora
// ============================================================
export const carModels = sqliteTable(
  "car_models",
  {
    id: uuid(),
    brandId: text("brand_id")
      .notNull()
      .references(() => brands.id, { onDelete: "cascade" }),
    name: text("name").notNull(),
    slug: text("slug").notNull(),
    createdAt: createdAt(),
  },
  (t) => ({
    brandSlugUnique: uniqueIndex("car_models_brand_slug_unique").on(
      t.brandId,
      t.slug
    ),
    brandIdx: index("car_models_brand_idx").on(t.brandId),
  })
);

// ============================================================
// 3) CAR_VERSIONS — Versão / ano do modelo
// ============================================================
export const carVersions = sqliteTable(
  "car_versions",
  {
    id: uuid(),
    modelId: text("model_id")
      .notNull()
      .references(() => carModels.id, { onDelete: "cascade" }),
    year: integer("year").notNull(), // ex.: 2020
    versionName: text("version_name").notNull(), // ex.: "LTZ"
    engine: text("engine").notNull(), // ex.: "1.0 Turbo"
    createdAt: createdAt(),
  },
  (t) => ({
    modelIdx: index("car_versions_model_idx").on(t.modelId),
    yearIdx: index("car_versions_year_idx").on(t.year),
  })
);

// ============================================================
// 4) CATEGORIES — Categorias de peças
// ============================================================
export const categories = sqliteTable(
  "categories",
  {
    id: uuid(),
    name: text("name").notNull(),
    slug: text("slug").notNull(),
    icon: text("icon"), // nome do ícone Lucide
    createdAt: createdAt(),
  },
  (t) => ({
    slugUnique: uniqueIndex("categories_slug_unique").on(t.slug),
  })
);

// ============================================================
// 5) MASTER_PARTS — Catálogo mestre controlado de peças
// ============================================================
export const masterParts = sqliteTable(
  "master_parts",
  {
    id: uuid(),
    name: text("name").notNull(),
    manufacturer: text("manufacturer").notNull(), // ex: Bosch, Tecfil
    manufacturerCode: text("manufacturer_code").notNull(),
    categoryId: text("category_id")
      .notNull()
      .references(() => categories.id, { onDelete: "restrict" }),
    position: text("position").default("N/A"), // ex: Dianteira, Traseira, Esquerda, Direita, N/A
    description: text("description"),
    imageUrl: text("image_url"),
    isApproved: integer("is_approved", { mode: "boolean" }).notNull().default(false),
    createdAt: createdAt(),
    updatedAt: updatedAt(),
  },
  (t) => ({
    codeUnique: uniqueIndex("master_parts_code_unique").on(t.manufacturerCode),
    nameIdx: index("master_parts_name_idx").on(t.name),
    categoryIdx: index("master_parts_category_idx").on(t.categoryId),
  })
);

// ============================================================
// 6) PART_COMPATIBILITY — pivô master_parts <-> car_versions
// ============================================================
export const partCompatibility = sqliteTable(
  "part_compatibility",
  {
    partId: text("part_id")
      .notNull()
      .references(() => masterParts.id, { onDelete: "cascade" }),
    versionId: text("version_id")
      .notNull()
      .references(() => carVersions.id, { onDelete: "cascade" }),
    createdAt: createdAt(),
  },
  (t) => ({
    pk: primaryKey({ columns: [t.partId, t.versionId] }),
    partIdx: index("part_compat_part_idx").on(t.partId),
    versionIdx: index("part_compat_version_idx").on(t.versionId),
  })
);

// ============================================================
// 7) COMPANIES — Empresa Mãe (Lojista)
// ============================================================
export const companies = sqliteTable(
  "companies",
  {
    id: uuid(),
    cnpj: text("cnpj").notNull().unique(),
    name: text("name").notNull(),
    email: text("email").notNull().unique(),
    passwordHash: text("password_hash").notNull(),
    activePlan: text("active_plan").default("TRIAL"), // ex: TRIAL, BÁSICO, PROFISSIONAL
    createdAt: createdAt(),
  }
);

// ============================================================
// 8) STORES — Lojas físicas parceiras (Filiais)
// ============================================================
export const stores = sqliteTable(
  "stores",
  {
    id: uuid(),
    companyId: text("company_id")
      .notNull()
      .references(() => companies.id, { onDelete: "cascade" }),
    name: text("name").notNull(),
    address: text("address").notNull(),
    city: text("city").notNull(),
    state: text("state").notNull(), // UF (SP, RJ...)
    whatsapp: text("whatsapp").notNull(), // formato E.164, ex.: 5511999999999
    logoUrl: text("logo_url"),
    rating: real("rating").default(0),
    createdAt: createdAt(),
  },
  (t) => ({
    nameIdx: index("stores_name_idx").on(t.name),
    cityIdx: index("stores_city_idx").on(t.city, t.state),
  })
);

// ============================================================
// 9) STORE_OFFERS — Oferta do lojista (preço + estoque + condição)
// ============================================================
// Enum simulado via CHECK constraint (D1/SQLite não tem ENUM nativo).
export const OFFER_CONDITIONS = ["NOVO", "USADO"] as const;
export type OfferCondition = (typeof OFFER_CONDITIONS)[number];

export const storeOffers = sqliteTable(
  "store_offers",
  {
    id: uuid(),
    storeId: text("store_id")
      .notNull()
      .references(() => stores.id, { onDelete: "cascade" }),
    partId: text("part_id")
      .notNull()
      .references(() => masterParts.id, { onDelete: "cascade" }),
    price: real("price").notNull(),
    inStock: integer("in_stock", { mode: "boolean" }).notNull().default(true),
    condition: text("condition", { enum: OFFER_CONDITIONS })
      .notNull()
      .default("NOVO"),
    notes: text("notes"),
    createdAt: createdAt(),
    updatedAt: updatedAt(),
  },
  (t) => ({
    // Regra de negócio: a loja não pode ter duas ofertas iguais
    // (mesma peça + mesma condição).
    uniqueOffer: uniqueIndex("store_offers_unique").on(
      t.storeId,
      t.partId,
      t.condition
    ),
    conditionCheck: check(
      "store_offers_condition_check",
      sql`"condition" IN ('NOVO', 'USADO')`
    ),
    priceCheck: check("store_offers_price_check", sql`price >= 0`),
    priceIdx: index("store_offers_price_idx").on(t.price),
    partIdx: index("store_offers_part_idx").on(t.partId),
  })
);

// ============================================================
// RELATIONS (para uso com drizzle queries)
// ============================================================
export const brandsRelations = relations(brands, ({ many }) => ({
  models: many(carModels),
}));

export const carModelsRelations = relations(carModels, ({ one, many }) => ({
  brand: one(brands, {
    fields: [carModels.brandId],
    references: [brands.id],
  }),
  versions: many(carVersions),
}));

export const carVersionsRelations = relations(carVersions, ({ one, many }) => ({
  model: one(carModels, {
    fields: [carVersions.modelId],
    references: [carModels.id],
  }),
  compatibilities: many(partCompatibility),
}));

export const categoriesRelations = relations(categories, ({ many }) => ({
  parts: many(masterParts),
}));

export const companiesRelations = relations(companies, ({ many }) => ({
  stores: many(stores),
}));

export const masterPartsRelations = relations(masterParts, ({ one, many }) => ({
  category: one(categories, {
    fields: [masterParts.categoryId],
    references: [categories.id],
  }),
  compatibilities: many(partCompatibility),
  offers: many(storeOffers),
}));

export const partCompatibilityRelations = relations(
  partCompatibility,
  ({ one }) => ({
    part: one(masterParts, {
      fields: [partCompatibility.partId],
      references: [masterParts.id],
    }),
    version: one(carVersions, {
      fields: [partCompatibility.versionId],
      references: [carVersions.id],
    }),
  })
);

export const storesRelations = relations(stores, ({ one, many }) => ({
  company: one(companies, {
    fields: [stores.companyId],
    references: [companies.id],
  }),
  offers: many(storeOffers),
}));

export const storeOffersRelations = relations(storeOffers, ({ one }) => ({
  store: one(stores, {
    fields: [storeOffers.storeId],
    references: [stores.id],
  }),
  part: one(masterParts, {
    fields: [storeOffers.partId],
    references: [masterParts.id],
  }),
}));

// ============================================================
// TYPES exportados para uso em rotas / componentes
// ============================================================
export type Brand = typeof brands.$inferSelect;
export type NewBrand = typeof brands.$inferInsert;
export type CarModel = typeof carModels.$inferSelect;
export type NewCarModel = typeof carModels.$inferInsert;
export type CarVersion = typeof carVersions.$inferSelect;
export type NewCarVersion = typeof carVersions.$inferInsert;
export type Category = typeof categories.$inferSelect;
export type MasterPart = typeof masterParts.$inferSelect;
export type Store = typeof stores.$inferSelect;
export type StoreOffer = typeof storeOffers.$inferSelect;
export type NewStoreOffer = typeof storeOffers.$inferInsert;

// ============================================================
// 10) SYNC STATE - Estado do Robô (Cron Job) da Tabela FIPE
// ============================================================
export const syncState = sqliteTable(
  "sync_state",
  {
    key: text("key").primaryKey(), // e.g. "fipe-sync"
    value: text("value"), // JSON representation of state
    updatedAt: updatedAt(),
  }
);
