-- drizzle/0005_canonical_parts_cleanup.sql
-- Script de Padronização de Nomenclatura Automotiva (Catálogo Canônico)

-- 1. Padronização de Lanternas
UPDATE `master_parts` 
SET `name` = 'Lanterna Traseira' 
WHERE `name` LIKE '%Lanterna de Freio%' OR `name` LIKE '%Lanterna Freio%' OR `name` LIKE '%Lanterna Seta Traseira%';

UPDATE `master_parts` 
SET `name` = 'Lanterna de Seta do Retrovisor' 
WHERE `name` LIKE '%Lanterna de Seta do Retrovisor%' OR `name` LIKE '%Lanterna Seta Retrovisor%';

-- 2. Padronização de Brake Light / Luz de Freio Elevada
UPDATE `master_parts` 
SET `name` = 'Brake Light (Luz de Freio)' 
WHERE `name` LIKE '%Break Light%' OR `name` LIKE '%Brake-Light%' OR `name` LIKE '%Luz de Freio Elevada%' OR `name` LIKE '%Luz Freio Elevada%';

-- 3. Limpeza de Sufixos e Lados no Catálogo Mestre
UPDATE `master_parts` SET `name` = REPLACE(`name`, ' - Lado Direito (Passageiro)', '');
UPDATE `master_parts` SET `name` = REPLACE(`name`, ' - Lado Esquerdo (Motorista)', '');
UPDATE `master_parts` SET `name` = REPLACE(`name`, ' (Par / Ambos os Lados)', '');
UPDATE `master_parts` SET `name` = REPLACE(`name`, ' Lado Direito', '');
UPDATE `master_parts` SET `name` = REPLACE(`name`, ' Lado Esquerdo', '');
