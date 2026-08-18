-- drizzle/relink_store_offers.sql — Saneamento e Relink de Ofertas em Produção (Cloudflare D1)
PRAGMA foreign_keys = OFF;

-- 1. Remapeamento de ofertas legadas de freio para a pastilha dianteira canônica
UPDATE store_offers 
SET part_id = 'mp-pastilha-dianteira' 
WHERE part_id LIKE '%pastilha%' OR part_id LIKE '%freio%';

-- 2. Remapeamento de ofertas legadas de óleo / filtro para peças mestre
UPDATE store_offers 
SET part_id = 'mp-filtro-oleo' 
WHERE part_id LIKE '%filtro%' AND part_id NOT IN (SELECT id FROM master_parts);

UPDATE store_offers 
SET part_id = 'mp-oleo-5w30' 
WHERE part_id LIKE '%oleo%' AND part_id NOT IN (SELECT id FROM master_parts);

-- 3. Remapeamento de amortecedores
UPDATE store_offers 
SET part_id = 'mp-amortecedor-dianteiro' 
WHERE part_id LIKE '%amortecedor%' AND part_id NOT IN (SELECT id FROM master_parts);

-- 4. Exclusão de ofertas de teste corrompidas cujas peças não existem no Catálogo Mestre Canônico
DELETE FROM store_offers 
WHERE part_id NOT IN (SELECT id FROM master_parts);

PRAGMA foreign_keys = ON;
