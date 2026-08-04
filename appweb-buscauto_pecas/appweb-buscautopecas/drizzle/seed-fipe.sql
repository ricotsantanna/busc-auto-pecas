-- Marcas
INSERT INTO brands (id, name, slug, vehicle_type) VALUES 
('b-fiat', 'Fiat', 'fiat-carro', 'carro'),
('b-chevrolet', 'Chevrolet', 'chevrolet-carro', 'carro'),
('b-vw', 'Volkswagen', 'vw-carro', 'carro'),
('b-honda', 'Honda', 'honda-moto', 'moto'),
('b-yamaha', 'Yamaha', 'yamaha-moto', 'moto')
ON CONFLICT DO NOTHING;

-- Modelos Fiat
INSERT INTO car_models (id, brand_id, name, slug) VALUES 
('m-palio', 'b-fiat', 'Palio', 'palio-carro'),
('m-uno', 'b-fiat', 'Uno', 'uno-carro'),
('m-strada', 'b-fiat', 'Strada', 'strada-carro')
ON CONFLICT DO NOTHING;

-- Versões Palio
INSERT INTO car_versions (id, model_id, version_name, year, engine) VALUES 
('v-palio-1', 'm-palio', 'Palio Fire 1.0 Flex 8V', 2014, 'N/A'),
('v-palio-2', 'm-palio', 'Palio Fire 1.0 Flex 8V', 2015, 'N/A'),
('v-palio-3', 'm-palio', 'Palio Attractive 1.4 Fire Flex', 2016, 'N/A')
ON CONFLICT DO NOTHING;

-- Versões Uno
INSERT INTO car_versions (id, model_id, version_name, year, engine) VALUES 
('v-uno-1', 'm-uno', 'Uno Mille Fire 1.0', 2010, 'N/A'),
('v-uno-2', 'm-uno', 'Uno Way 1.0', 2012, 'N/A')
ON CONFLICT DO NOTHING;

-- Versões Strada
INSERT INTO car_versions (id, model_id, version_name, year, engine) VALUES 
('v-strada-1', 'm-strada', 'Strada Working 1.4', 2018, 'N/A'),
('v-strada-2', 'm-strada', 'Strada Volcano 1.3', 2022, 'N/A')
ON CONFLICT DO NOTHING;

-- Modelos Honda (Motos)
INSERT INTO car_models (id, brand_id, name, slug) VALUES 
('m-titan', 'b-honda', 'CG 160 Titan', 'cg-160-titan-moto'),
('m-bros', 'b-honda', 'NXR 160 Bros', 'nxr-160-bros-moto')
ON CONFLICT DO NOTHING;

-- Versões Titan
INSERT INTO car_versions (id, model_id, version_name, year, engine) VALUES 
('v-titan-1', 'm-titan', 'CG 160 Titan EX', 2020, 'N/A'),
('v-titan-2', 'm-titan', 'CG 160 Titan S', 2021, 'N/A')
ON CONFLICT DO NOTHING;

-- Versões Bros
INSERT INTO car_versions (id, model_id, version_name, year, engine) VALUES 
('v-bros-1', 'm-bros', 'NXR 160 Bros ESDD', 2019, 'N/A')
ON CONFLICT DO NOTHING;
