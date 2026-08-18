-- drizzle/purge_corrupted_offers.sql
-- Purga de ofertas e peças mestre corrompidas de scrapers antigos
PRAGMA foreign_keys = OFF;

DELETE FROM store_offers WHERE part_id IN (SELECT id FROM master_parts WHERE LOWER(name) LIKE '%chicote%' OR LOWER(name) LIKE '%terminal t%' OR LOWER(name) LIKE '%anel da tampa%' OR LOWER(name) LIKE '%aplicação chicote%' OR LOWER(name) LIKE '%fitro de ar%' OR LOWER(name) LIKE '%parabrisa aaudi%');
DELETE FROM part_compatibility WHERE part_id IN (SELECT id FROM master_parts WHERE LOWER(name) LIKE '%chicote%' OR LOWER(name) LIKE '%terminal t%' OR LOWER(name) LIKE '%anel da tampa%' OR LOWER(name) LIKE '%aplicação chicote%' OR LOWER(name) LIKE '%fitro de ar%' OR LOWER(name) LIKE '%parabrisa aaudi%');
DELETE FROM master_parts WHERE LOWER(name) LIKE '%chicote%' OR LOWER(name) LIKE '%terminal t%' OR LOWER(name) LIKE '%anel da tampa%' OR LOWER(name) LIKE '%aplicação chicote%' OR LOWER(name) LIKE '%fitro de ar%' OR LOWER(name) LIKE '%parabrisa aaudi%';
DELETE FROM store_offers WHERE part_id NOT IN (SELECT id FROM master_parts);

PRAGMA foreign_keys = ON;
