// src/db/mock.ts — Dados completos do mercado brasileiro (Carros, Elétricos, Híbridos e Motos).

import type { Brand, CarModel, CarVersion } from "./schema";
import vehicleData from "./brazilian-vehicles.json";

const now = new Date();

export const mockBrands: (Brand & { vehicleType?: string; powertrain?: string })[] =
  vehicleData.brands.map((b: any) => ({
    id: b.id,
    name: b.name,
    slug: b.slug,
    logoUrl: null,
    vehicleType: b.vehicleType,
    powertrain: b.powertrain,
    createdAt: now,
  }));

export const mockModels: (CarModel & { vehicleType?: string })[] =
  vehicleData.models.map((m: any) => ({
    id: m.id,
    brandId: m.brandId,
    name: m.name,
    slug: m.slug,
    vehicleType: m.vehicleType,
    createdAt: now,
  }));

export const mockVersions: CarVersion[] = vehicleData.versions.map((v: any) => ({
  id: v.id,
  modelId: v.modelId,
  year: v.yearStart,
  versionName: v.name,
  engine: v.engine ?? null,
  createdAt: now,
}));
