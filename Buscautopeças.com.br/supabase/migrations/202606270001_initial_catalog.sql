create extension if not exists pg_trgm;
create extension if not exists postgis;

create table public.data_sources (
  id bigint generated always as identity primary key,
  slug text not null unique,
  name text not null,
  source_url text,
  license text,
  reference_date date,
  imported_at timestamptz not null default now(),
  notes text
);

create table public.manufacturers (
  id bigint generated always as identity primary key,
  name text not null,
  normalized_name text not null unique,
  source_id bigint references public.data_sources(id),
  source_key text
);

create table public.vehicle_models (
  id bigint generated always as identity primary key,
  manufacturer_id bigint not null references public.manufacturers(id),
  name text not null,
  normalized_name text not null,
  source_id bigint references public.data_sources(id),
  source_key text,
  unique (manufacturer_id, normalized_name)
);

create table public.vehicle_variants (
  id bigint generated always as identity primary key,
  model_id bigint not null references public.vehicle_models(id),
  name text not null,
  normalized_name text not null,
  model_year integer not null check (model_year between 1900 and 2100),
  fuel_type text,
  engine text,
  source_id bigint references public.data_sources(id),
  source_key text,
  unique (model_id, normalized_name, model_year, fuel_type)
);

create table public.parts (
  id bigint generated always as identity primary key,
  original_code text not null,
  manufacturer_code text,
  name text not null,
  normalized_name text not null,
  brand text,
  category text,
  specifications jsonb not null default '{}'::jsonb,
  image_url text,
  source_id bigint references public.data_sources(id),
  source_key text,
  active boolean not null default true
);

create table public.part_compatibilities (
  part_id bigint not null references public.parts(id) on delete cascade,
  vehicle_variant_id bigint not null references public.vehicle_variants(id) on delete cascade,
  year_start integer,
  year_end integer,
  notes text,
  source_id bigint references public.data_sources(id),
  confidence text not null default 'verified'
    check (confidence in ('unverified', 'reviewed', 'verified')),
  primary key (part_id, vehicle_variant_id)
);

create table public.stores (
  id uuid primary key references auth.users(id) on delete cascade,
  legal_name text,
  trade_name text not null,
  cnpj text unique,
  whatsapp text not null,
  address text,
  location geography(point, 4326),
  approved boolean not null default false,
  created_at timestamptz not null default now()
);

create table public.store_inventory (
  id bigint generated always as identity primary key,
  store_id uuid not null references public.stores(id) on delete cascade,
  part_id bigint not null references public.parts(id),
  price numeric(12,2) not null check (price > 0),
  condition text not null check (condition in ('nova', 'usada')),
  quantity integer not null default 0 check (quantity >= 0),
  notes text,
  updated_at timestamptz not null default now(),
  unique (store_id, part_id, condition)
);

create index vehicle_models_name_trgm_idx
  on public.vehicle_models using gin (normalized_name gin_trgm_ops);
create index vehicle_variants_name_trgm_idx
  on public.vehicle_variants using gin (normalized_name gin_trgm_ops);
create index parts_name_trgm_idx
  on public.parts using gin (normalized_name gin_trgm_ops);
create index parts_original_code_idx on public.parts (original_code);
create unique index parts_code_brand_unique_idx
  on public.parts (original_code, coalesce(brand, ''));
create index store_inventory_part_price_idx on public.store_inventory (part_id, price);
create index stores_location_idx on public.stores using gist (location);

alter table public.stores enable row level security;
alter table public.store_inventory enable row level security;

create policy "public reads approved stores"
  on public.stores for select using (approved);
create policy "store updates itself"
  on public.stores for update using (auth.uid() = id);
create policy "public reads approved inventory"
  on public.store_inventory for select
  using (exists (
    select 1 from public.stores
    where stores.id = store_inventory.store_id and stores.approved
  ));
create policy "store manages own inventory"
  on public.store_inventory for all
  using (auth.uid() = store_id)
  with check (auth.uid() = store_id);
