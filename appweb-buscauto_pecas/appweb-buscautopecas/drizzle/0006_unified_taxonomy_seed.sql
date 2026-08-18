-- drizzle/0006_unified_taxonomy_seed.sql
-- Seed de Taxonomia Canônica Padronizada de Peças e Categorias (MercadoCar)

-- 1. Categorias Oficiais de Peças Automotivas
INSERT OR IGNORE INTO `categories` (`id`, `name`, `slug`, `icon`) VALUES
('cat-iluminacao', 'Iluminação', 'iluminacao', 'Lightbulb'),
('cat-freios', 'Freios', 'freios', 'Disc'),
('cat-suspensao', 'Suspensão e Direção', 'suspensao-e-direcao', 'Activity'),
('cat-motor', 'Motor e Componentes', 'motor', 'Cpu'),
('cat-filtros', 'Filtros e Óleos', 'filtros-e-oleos', 'Filter'),
('cat-carroceria', 'Carroceria e Lataria', 'carroceria', 'Shield'),
('cat-eletrica', 'Elétrica e Ignição', 'eletrica-e-ignicao', 'Zap'),
('cat-ar', 'Ar Condicionado e Refrigeração', 'ar-condicionado', 'Wind'),
('cat-transmissao', 'Transmissão e Câmbio', 'transmissao', 'GitMerge');

-- 2. Peças Mestre Canônicas (master_parts)
INSERT OR IGNORE INTO `master_parts` (`id`, `name`, `manufacturer`, `manufacturer_code`, `category_id`, `position`, `description`) VALUES
('mp-farol-principal', 'Farol Principal', 'Original', 'OEM-FAR-001', 'cat-iluminacao', 'Dianteiro', 'Farol principal com foco duplo e regulagem'),
('mp-farol-milha', 'Farol de Milha / Auxiliar', 'Original', 'OEM-FAR-002', 'cat-iluminacao', 'Dianteiro', 'Farol auxiliar de neblina/milha'),
('mp-lanterna-traseira', 'Lanterna Traseira', 'Original', 'OEM-LANT-001', 'cat-iluminacao', 'Traseiro', 'Lanterna traseira principal de sinalização'),
('mp-lanterna-retrovisor', 'Lanterna de Seta do Retrovisor', 'Original', 'OEM-LANT-002', 'cat-iluminacao', 'Espelho Retrovisor', 'Lente repetidora de seta do retrovisor'),
('mp-brake-light', 'Brake Light (Luz de Freio)', 'Original', 'OEM-LANT-003', 'cat-iluminacao', 'Traseiro Elevado', 'Luz de freio elevada de vidro traseiro'),
('mp-pastilha-freio', 'Pastilha de Freio', 'Bosch', 'BOS-PAST-01', 'cat-freios', 'Dianteira / Traseira', 'Jogo de pastilhas de freio cerâmica silenciosa'),
('mp-disco-freio', 'Disco de Freio', 'Fremax', 'FRM-DISC-01', 'cat-freios', 'Dianteira', 'Par de discos de freio ventilados'),
('mp-amortecedor', 'Amortecedor', 'Cofap', 'COF-AMORT-01', 'cat-suspensao', 'Dianteiro / Traseiro', 'Amortecedor pressurizado a gás TurboGas'),
('mp-mola-suspensao', 'Mola da Suspensão', 'Fabrini', 'FAB-MOLA-01', 'cat-suspensao', 'Dianteira', 'Par de molas helicoidais de suspensão'),
('mp-filtro-oleo', 'Filtro de Óleo', 'Tecfil', 'TEC-PEL-01', 'cat-filtros', 'Motor', 'Filtro de óleo blindado de alta eficiência'),
('mp-filtro-ar', 'Filtro de Ar', 'Tecfil', 'TEC-AR-01', 'cat-filtros', 'Motor', 'Elemento filtrante do ar de admissão do motor'),
('mp-filtro-ar-cabine', 'Filtro de Ar Condicionado (Cabine)', 'Tecfil', 'TEC-CAB-01', 'cat-filtros', 'Painel', 'Filtro de ar condicionado antipólen'),
('mp-vela-ignicao', 'Vela de Ignição', 'NGK', 'NGK-VELA-01', 'cat-eletrica', 'Motor', 'Jogo de velas de ignição de alta durabilidade'),
('mp-cabo-vela', 'Cabo de Vela', 'NGK', 'NGK-CABO-01', 'cat-eletrica', 'Motor', 'Jogo de cabos de ignição de silicone'),
('mp-bateria', 'Bateria Automotiva 60Ah', 'Moura', 'MOU-60AH', 'cat-eletrica', 'Cofre do Motor', 'Bateria 60Ah livre de manutenção com selo Inmetro'),
('mp-retrovisor', 'Retrovisor', 'Metagal', 'MET-RET-01', 'cat-carroceria', 'Lateral', 'Conjunto retrovisor com regulagem elétrica e lente'),
('mp-parachoque-diant', 'Parachoque Dianteiro', 'Original', 'OEM-PAR-DIANT', 'cat-carroceria', 'Dianteira', 'Capa do parachoque dianteiro para pintura'),
('mp-parachoque-tras', 'Parachoque Traseiro', 'Original', 'OEM-PAR-TRAS', 'cat-carroceria', 'Traseira', 'Capa do parachoque traseiro'),
('mp-radiador', 'Radiador de Água', 'Visconde', 'VIS-RAD-01', 'cat-ar', 'Motor', 'Radiador de arrefecimento de água do motor'),
('mp-compressor-ar', 'Compressor de Ar Condicionado', 'Denso', 'DEN-COMP-01', 'cat-ar', 'Motor', 'Compressor do sistema de ar condicionado'),
('mp-kit-embreagem', 'Kit de Embreagem', 'LUK', 'LUK-EMB-01', 'cat-transmissao', 'Câmbio', 'Kit de embreagem composto por plato, disco e rolamento'),
('mp-motor-partida', 'Motor de Partida', 'Bosch', 'BOS-PART-01', 'cat-eletrica', 'Motor', 'Motor de arranque de partida 12V');
