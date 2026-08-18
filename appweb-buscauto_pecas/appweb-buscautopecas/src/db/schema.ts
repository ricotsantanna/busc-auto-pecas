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
// 1) BRANDS — Montadoras / Fabricantes (Fiat, VW, Chevrolet...)
// ============================================================
export const brands = sqliteTable(
  "brands",
  {
    id: uuid(),
    name: text("name").notNull().unique(),
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
// 4) CATEGORIES — Categorias de peças (suporta parent_id)
// ============================================================
export const categories = sqliteTable(
  "categories",
  {
    id: uuid(),
    name: text("name").notNull(),
    slug: text("slug").notNull(),
    parentId: text("parent_id"), // Suporte a subcategorias
    icon: text("icon"), // nome do ícone Lucide
    createdAt: createdAt(),
  },
  (t) => ({
    slugUnique: uniqueIndex("categories_slug_unique").on(t.slug),
    parentIdx: index("categories_parent_idx").on(t.parentId),
  })
);

// ============================================================
// 5) PRODUCTS — Catálogo E-Commerce de Produtos (Modelo MercadoCar)
// ============================================================
export const products = sqliteTable(
  "products",
  {
    id: uuid(),
    sku: text("sku").notNull().unique(),
    name: text("name").notNull(),
    description: text("description"),
    price: real("price").notNull(),
    stockQuantity: integer("stock_quantity").notNull().default(0),
    imageUrl: text("image_url"),
    brandId: text("brand_id")
      .notNull()
      .references(() => brands.id, { onDelete: "cascade" }),
    categoryId: text("category_id")
      .notNull()
      .references(() => categories.id, { onDelete: "cascade" }),
    createdAt: createdAt(),
    updatedAt: updatedAt(),
  },
  (t) => ({
    skuUnique: uniqueIndex("products_sku_unique").on(t.sku),
    nameIdx: index("products_name_idx").on(t.name),
    brandIdx: index("products_brand_idx").on(t.brandId),
    categoryIdx: index("products_category_idx").on(t.categoryId),
  })
);

// ============================================================
// 6) VEHICLES — Cadastro Unificado de Veículos e Aplicação
// ============================================================
export const vehicles = sqliteTable(
  "vehicles",
  {
    id: uuid(),
    make: text("make").notNull(), // Marca / Montadora (ex: Ford)
    model: text("model").notNull(), // Modelo (ex: Ecosport)
    yearStart: integer("year_start").notNull(), // Ano inicial (ex: 2015)
    yearEnd: integer("year_end"), // Ano final (ex: 2021 ou null para atual)
    engine: text("engine"), // Motorização (ex: 1.5 16V Flex)
    createdAt: createdAt(),
  },
  (t) => ({
    makeModelIdx: index("vehicles_make_model_idx").on(t.make, t.model),
    yearIdx: index("vehicles_year_idx").on(t.yearStart, t.yearEnd),
  })
);

// ============================================================
// 7) PRODUCT_FITMENT — Tabela de Compatibilidade (products <-> vehicles)
// ============================================================
export const productFitment = sqliteTable(
  "product_fitment",
  {
    productId: text("product_id")
      .notNull()
      .references(() => products.id, { onDelete: "cascade" }),
    vehicleId: text("vehicle_id")
      .notNull()
      .references(() => vehicles.id, { onDelete: "cascade" }),
    notes: text("notes"), // Observações específicas de aplicação/montagem
    createdAt: createdAt(),
  },
  (t) => ({
    pk: primaryKey({ columns: [t.productId, t.vehicleId] }),
    productIdx: index("fitment_product_idx").on(t.productId),
    vehicleIdx: index("fitment_vehicle_idx").on(t.vehicleId),
  })
);

// ============================================================
// 8) MASTER_PARTS — Catálogo mestre legado/complementar
// ============================================================
export const masterParts = sqliteTable(
  "master_parts",
  {
    id: uuid(),
    name: text("name").notNull(),
    manufacturer: text("manufacturer").notNull(),
    manufacturerCode: text("manufacturer_code").notNull(),
    categoryId: text("category_id")
      .notNull()
      .references(() => categories.id, { onDelete: "restrict" }),
    position: text("position").default("N/A"),
    description: text("description"),
    imageUrl: text("image_url"),
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
// 8B) MASTER_PARTS_INBOX — Fila de Triagem de Peças Inéditas enviado por Lojistas
// ============================================================
export const masterPartsInbox = sqliteTable(
  "master_parts_inbox",
  {
    id: uuid(),
    storeId: text("store_id")
      .notNull()
      .references(() => stores.id, { onDelete: "cascade" }),
    rawPartName: text("raw_part_name").notNull(),
    cleanPartName: text("clean_part_name").notNull(),
    manufacturer: text("manufacturer"),
    manufacturerCode: text("manufacturer_code"),
    make: text("make"),
    model: text("model"),
    years: text("years"),
    status: text("status").notNull().default("PENDING_REVIEW"),
    suggestedMasterPartId: text("suggested_master_part_id"),
    createdAt: createdAt(),
  },
  (t) => ({
    storeIdx: index("master_parts_inbox_store_idx").on(t.storeId),
    statusIdx: index("master_parts_inbox_status_idx").on(t.status),
  })
);

// ============================================================
// 9) PART_COMPATIBILITY — pivô master_parts <-> car_versions
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
// 10) COMPANIES — Empresa Mãe (Lojista)
// ============================================================
export const companies = sqliteTable(
  "companies",
  {
    id: uuid(),
    cnpj: text("cnpj").notNull().unique(),
    name: text("name").notNull(),
    email: text("email").notNull().unique(),
    passwordHash: text("password_hash").notNull(),
    activePlan: text("active_plan").default("TRIAL"),
    createdAt: createdAt(),
  }
);

// ============================================================
// 11) STORES — Lojas físicas parceiras (Filiais)
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
    state: text("state").notNull(),
    whatsapp: text("whatsapp").notNull(),
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
// 12) STORE_OFFERS — Oferta do lojista (preço + estoque + condição)
// ============================================================
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
// RELATIONS (Drizzle Queries)
// ============================================================
export const brandsRelations = relations(brands, ({ many }) => ({
  models: many(carModels),
  products: many(products),
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

export const categoriesRelations = relations(categories, ({ one, many }) => ({
  parent: one(categories, {
    fields: [categories.parentId],
    references: [categories.id],
    relationName: "category_parent",
  }),
  children: many(categories, { relationName: "category_parent" }),
  parts: many(masterParts),
  products: many(products),
}));

export const productsRelations = relations(products, ({ one, many }) => ({
  brand: one(brands, {
    fields: [products.brandId],
    references: [brands.id],
  }),
  category: one(categories, {
    fields: [products.categoryId],
    references: [categories.id],
  }),
  fitments: many(productFitment),
}));

export const vehiclesRelations = relations(vehicles, ({ many }) => ({
  fitments: many(productFitment),
}));

export const productFitmentRelations = relations(productFitment, ({ one }) => ({
  product: one(products, {
    fields: [productFitment.productId],
    references: [products.id],
  }),
  vehicle: one(vehicles, {
    fields: [productFitment.vehicleId],
    references: [vehicles.id],
  }),
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
// TYPES exportados
// ============================================================
export type Brand = typeof brands.$inferSelect;
export type NewBrand = typeof brands.$inferInsert;
export type CarModel = typeof carModels.$inferSelect;
export type NewCarModel = typeof carModels.$inferInsert;
export type CarVersion = typeof carVersions.$inferSelect;
export type NewCarVersion = typeof carVersions.$inferInsert;
export type Category = typeof categories.$inferSelect;
export type NewCategory = typeof categories.$inferInsert;
export type Product = typeof products.$inferSelect;
export type NewProduct = typeof products.$inferInsert;
export type Vehicle = typeof vehicles.$inferSelect;
export type NewVehicle = typeof vehicles.$inferInsert;
export type ProductFitment = typeof productFitment.$inferSelect;
export type NewProductFitment = typeof productFitment.$inferInsert;
export type MasterPart = typeof masterParts.$inferSelect;
export type Store = typeof stores.$inferSelect;
export type StoreOffer = typeof storeOffers.$inferSelect;
export type NewStoreOffer = typeof storeOffers.$inferInsert;

// ============================================================
// 13) SYNC STATE - Estado do Robô FIPE
// ============================================================
export const syncState = sqliteTable(
  "sync_state",
  {
    key: text("key").primaryKey(),
    value: text("value"),
    updatedAt: updatedAt(),
  }
);

// ============================================================
// 14) WORKSHOPS — Oficinas Mecânicas
// ============================================================
export const workshops = sqliteTable(
  "workshops",
  {
    id: uuid(),
    name: text("name").notNull(),
    address: text("address").notNull(),
    neighborhood: text("neighborhood"),
    city: text("city").notNull(),
    state: text("state").notNull(),
    phone: text("phone"),
    whatsapp: text("whatsapp"),
    rating: real("rating").default(5.0),
    specialties: text("specialties"),
    lat: real("lat"),
    lng: real("lng"),
    isVerified: integer("is_verified", { mode: "boolean" }).default(true),
    createdAt: createdAt(),
  },
  (t) => ({
    cityIdx: index("workshops_city_idx").on(t.city),
  })
);

export type Workshop = typeof workshops.$inferSelect;
export type NewWorkshop = typeof workshops.$inferInsert;
