
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '70c894fe-49a4-4b20-94d1-01621418caa5', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd3dc24ad-7e07-4da5-8316-e9a89ec2aceb', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '213c7cc4-364b-4c40-b5ed-ef6dcd031fda', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ab1112c-fc55-411d-8b3b-d60ef5233e5d', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9c2a6957-610a-4ba3-8bb1-654012c9f712', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '13210c40-ba4a-4374-b8c5-a15214735a8c', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '758b2df3-bf90-4740-90be-bb74cefce703', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b98c6ea6-aca4-4f47-9453-0a7b5444505e', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '5b3904ac-aed3-4c4e-97cd-cbb9e4a2a8e9', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160 Cargo', 'honda-cg-160-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd651d681-fb54-400a-bc7b-a67d307d1e3d', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '21ae72b3-a1ff-48fb-a3d5-c1066ce7ed78', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e318f5e2-0507-48e0-a02e-8d8c3d7cd51b', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cdbb04ac-6fda-4aed-9f42-0bb77020e5c7', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '03fdfe9d-93a6-432f-9548-a36fe28a5018', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '982b4614-7ff3-4415-a578-52928f9f4780', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7e4e5a69-4060-4baa-ace2-158c83a3e659', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b9ec2340-8669-419b-930e-46f979a8817c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c01d81ac-20c6-4d3a-a00c-9f5a5d9fbf15', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160 Start', 'honda-cg-160-start'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160-start');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a58cd89a-bce0-488f-9086-4658646c8441', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '36e70e00-a685-4a93-b85f-e7862e95aa1e', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8067cfe-6051-4511-81aa-4b57709d9fe4', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '944b0083-e4ce-41d5-9b65-4a23843bf837', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c91a9494-ba42-4803-afa7-cb5c9dcafb71', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '564fa8eb-df60-4221-b908-35c19bd72cbf', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3b9d0296-50dc-4833-a8a9-7afc04995cd2', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1794831b-8da7-4f7e-ae08-5cdfc6e39ee8', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '1d6d6d2b-b776-4730-a81e-ad86fd4ce7c8', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 160 Bros', 'honda-nxr-160-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-160-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '22b0e219-790f-4053-a373-3fec29c342a5', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2014, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2014 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2014 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e168f57e-ee05-43a4-a5bf-d9249de910ba', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2015, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2015 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '44b72cf4-fce9-446b-83c6-5511deaf7aaf', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2016, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2016 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd37ec4f6-5f61-488e-96a2-99e39d67ab99', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2017, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2017 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5e494a10-4d66-4f79-9f5e-b2adc63b6c31', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2018, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2018 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2018 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2018 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2018 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ef048260-4e87-4bfb-a93e-7aa19823ad10', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2019, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2019 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2019 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2019 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2019 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7c0c7bc3-25fb-47ca-8d82-b5e1bf9b87b5', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2020, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2020 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2020 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2020 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2020 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '34efcf46-2d6d-4ccc-9626-40f5549f1034', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2021, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2021 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2021 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2021 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2021 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a863ae33-72ce-4489-abd4-1ed036a0c55b', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2022, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2022 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2022 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2022 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2022 AND version_name = 'ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '95fee115-654c-4fa6-a73b-6fbe91a7e9ef', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4a6433f3-1c2e-4da4-84db-2df3953006d5', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr Bros 160 Flex', 'honda-nxr-bros-160-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-bros-160-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '625dd3bc-2c3a-4b2b-a230-53a72eeaafdc', (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2014 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4fe45da3-957b-437b-a11b-385bc8e58544', (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex'), 2015, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                AND year = 2015 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2015 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b7ce9604-002b-4e10-afca-4d320f2a60ab', (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex'), 2016, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                AND year = 2016 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2016 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2016 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex')
                    AND year = 2016 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1b53209a-8621-435f-9f72-53e16e63ed1a', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '27d0046b-c2e2-40d9-9aba-e05845c7ad78', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre', 'honda-xre'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2a633f2d-51d3-432a-85dd-f25107fa35da', (SELECT id FROM car_models WHERE slug = 'honda-xre'), 2016, '190', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                AND year = 2016 AND version_name = '190'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2016 AND version_name = '190' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2016 AND version_name = '190' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2016 AND version_name = '190');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2f3099e6-5990-4e1d-98e4-f047ca3dfac2', (SELECT id FROM car_models WHERE slug = 'honda-xre'), 2017, '190', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                AND year = 2017 AND version_name = '190'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2017 AND version_name = '190' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2017 AND version_name = '190' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2017 AND version_name = '190');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fce29995-4954-4e75-8df9-665eb3933411', (SELECT id FROM car_models WHERE slug = 'honda-xre'), 2018, '190', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                AND year = 2018 AND version_name = '190'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2018 AND version_name = '190' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2018 AND version_name = '190' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2018 AND version_name = '190');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1937495f-f4d5-415a-b725-dbc3729e5871', (SELECT id FROM car_models WHERE slug = 'honda-xre'), 2019, '190', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                AND year = 2019 AND version_name = '190'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2019 AND version_name = '190' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2019 AND version_name = '190' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2019 AND version_name = '190');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2b2a3dc8-e5df-401d-997b-2e6c898ecd7b', (SELECT id FROM car_models WHERE slug = 'honda-xre'), 2020, '190', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                AND year = 2020 AND version_name = '190'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2020 AND version_name = '190' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2020 AND version_name = '190' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2020 AND version_name = '190');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '66fcebcd-8c63-4297-a17e-f34611b46ab3', (SELECT id FROM car_models WHERE slug = 'honda-xre'), 2021, '190', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                AND year = 2021 AND version_name = '190'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2021 AND version_name = '190' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2021 AND version_name = '190' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2021 AND version_name = '190');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c6299e40-3ede-4e6f-a838-e8a594d3efcc', (SELECT id FROM car_models WHERE slug = 'honda-xre'), 2022, '190', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                AND year = 2022 AND version_name = '190'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2022 AND version_name = '190' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2022 AND version_name = '190' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre')
                    AND year = 2022 AND version_name = '190');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0a0716c9-780a-4138-aa61-c6225c279b6f', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4c5d1a7b-e3d9-4c10-b9ea-bf5f37cf0899', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300', 'honda-cb-300'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dc32c067-d36e-414a-bff2-47c09ee305ba', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '23a21094-a36d-4cbe-8837-bdc43f2c8015', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '25e730f8-db13-4185-bd2f-2bcb43c56cf6', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2a5bc3c8-64e6-4770-abd0-e23b726e0487', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'db690457-db56-4d22-84f7-e61ae584e8e7', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1a281a37-dc29-4a36-af74-d0d59e16b944', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a342a69-27e1-4400-80f0-f42d4a38414b', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '66136327-c7bf-4969-ab6f-576a5b3f91a6', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9011565d-7158-45e2-a1c9-d171c2b2d5e4', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300', 'honda-cb-300'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd94d663e-915f-43f1-83b0-9a5dc47ba1f3', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2012, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                AND year = 2012 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2012 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2012 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300')
                    AND year = 2012 AND version_name = 'Edição Limitada');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b43914f9-4c1f-4989-8999-0d7c2b2c8f7a', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '6fa083eb-545d-4dd7-a052-02a17a9939dd', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300R', 'honda-cb-300r'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300r');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2a933a37-27dc-49ea-95e0-3f4d7361c02f', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2013, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2013 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2013 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c4169647-eea7-4eb7-8bd3-dee0f5013c95', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2014, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2014 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2014 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bcd9b81a-5885-4bac-b778-7599488513f1', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2015, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2015 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2015 AND version_name = 'Flex');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2b64663b-1e0f-46d3-9186-34e9d0cd8e47', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7c4f972d-d798-40fc-b249-41c13c597ba2', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 300', 'honda-xre-300'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-300');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '44fb845c-9438-42d1-8722-808bcf3aa7ab', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2013, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2013 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2013 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '678c1ebb-a526-44b5-9b01-2846717c3f72', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2014, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2014 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2014 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ec9a8d6-e6cf-4da8-8e84-4ce8d76350e0', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2015, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2015 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2015 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '32c72a52-4505-46fc-ace7-296303399333', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2016, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2016 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2016 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2016 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2016 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '20e58dad-b4e3-4e7a-a95f-d9fdbb3db62b', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2017, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2017 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2017 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2017 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2017 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a9ba2766-5ea2-435a-827d-02ae73e4aec6', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2018, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2018 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2018 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2018 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2018 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '74afe41f-c66b-4fcd-a965-3f888246768d', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2019, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2019 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2019 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2019 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2019 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c3253a30-16a5-4e66-935a-947993fff21c', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2020, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2020 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2020 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2020 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2020 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a0723841-0aaa-438d-b31c-dec89a211908', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2021, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2021 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2021 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2021 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2021 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3af76bd9-dac5-4ca5-8d3f-66f67807e23b', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2022, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2022 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2022 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2022 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2022 AND version_name = 'Flex');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '868d393c-eaed-4f87-9d2e-8301ea26ba89', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'fed6186b-d112-492a-aa08-284183d34680', (SELECT id FROM brands WHERE slug = 'honda'), 'Lead 110', 'honda-lead-110'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-lead-110');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd2d9f378-57a4-4476-a779-a45cb9b3a700', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f356ce95-5984-488c-a16e-a00b5077c410', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8502e537-b8b8-4c62-80a2-6e08c25b9d04', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c6486aa3-6902-4d3d-bb78-ba7ba7a597f4', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6188653f-504b-477f-9a9b-2cfe5a8419e1', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ea5e58c-faf1-480e-a75c-fc6cad4ff5a7', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '376e0c0e-789c-4e29-8cb3-51eb16a72719', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3c212e51-2296-4568-8157-8f4717890d8f', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02855')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02855')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2016 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ce527d3c-2434-4550-bd27-22fc81c835b9', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'cccaacd8-2001-4835-b05d-afedf49d28d8', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En 125 Yes', 'suzuki-en-125-yes'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125-yes');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a6274d9-e44b-4b10-b2a4-3fca47771029', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2005 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'cd2ff3cb-e45f-4b8a-9b9b-2cbdaa6bec70', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7fe7809e-1929-4c8e-bf87-6f380db21f62', (SELECT id FROM brands WHERE slug = 'suzuki'), 'Gn 125 Intruder', 'suzuki-gn-125-intruder'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-gn-125-intruder');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '71df0f8a-1f64-447a-a5f7-d8ac8732e247', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ceeda03-9003-43bc-9795-198a13abf6d4', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bd095a1d-6ff9-4fbe-85ae-b739d748c8a9', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '79c4f655-39b0-44b1-aa82-75e547ba69c0', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2011 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'aace6601-64bb-4448-9c88-d1f9333514b1', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '94bd714d-456b-4eff-ba9c-210f39b61262', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En-125', 'suzuki-en-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3065d924-9cf4-4d7a-bd7f-fec8a80c4713', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5bc4d7cc-121c-48db-9dcb-fdc4ae407bfb', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cee5e615-c760-48c4-96a7-203dbfb87579', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '54ea0af5-b24d-45a0-a8cb-e18e66aef197', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7c4add17-877a-447b-88bb-a89c851fa964', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125')
                    AND year = 2011 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ca960b3b-543f-4288-ac35-a7cfe2747db0', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '55d74cfa-655a-4489-803f-589697b00147', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En-125 C', 'suzuki-en-125-c'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125-c');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aef4f8a2-2f03-43f1-b74b-20795963b3d1', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7bbad8b6-9bed-4f11-bd57-5d9c89a92db8', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2011 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '36f9b287-94da-41dc-a2f8-3d8890a3e39f', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c9eb5742-17ff-4ec1-9056-3995f970391a', (SELECT id FROM brands WHERE slug = 'suzuki'), 'Yes 125', 'suzuki-yes-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-yes-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1b46fbd1-de72-4717-9aff-6f76878db0bf', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125'), 2012, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                AND year = 2012 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2012 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2012 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2012 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7b19b659-c42b-4d0d-be74-e3dc912c7ee0', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125'), 2013, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                AND year = 2013 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2013 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2013 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2013 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2e10e045-d3d1-4a24-8246-6b430721ec83', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125'), 2014, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                AND year = 2014 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2014 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2014 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2014 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '739762de-7d0a-42a1-a8bb-cbff0da42fb8', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125'), 2015, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                AND year = 2015 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2015 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2015 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2015 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7842d37b-0c08-49b6-9da8-c7113df52709', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125'), 2016, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                AND year = 2016 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2016 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2016 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125')
                    AND year = 2016 AND version_name = 'SE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'c88d060a-8d0d-4fdc-a353-d4fa7c81f99e', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9a422c1b-0fb8-4119-8aad-3a10d5a4853c', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor Ybr 125', 'yamaha-factor-ybr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-ybr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '090bbe67-af5c-4f1d-a216-2bfa7a48a84e', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a4cad1ce-78f6-4d88-90d8-87dbb540ffcc', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de4f0578-f4e2-44e7-87ee-83d813bcad61', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2010, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2010 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4e6f693c-9945-4a47-b184-02b2b9824934', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2011, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2011 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2b6b21fb-e9bd-49c8-9c4d-67d4e9601e68', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2012, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2012 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '85243ecc-b853-4ba9-b570-b859c0d5e85e', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2013, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2013 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '33986d78-a453-40c7-99c9-0d21088cad0b', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2014, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2014 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b0dd634a-0892-4698-9e70-414010622917', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2015, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2015 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4f4b9d64-5f3f-4ed7-bf6f-6f28d1073a4f', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2016 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '8068a36b-d44d-42f8-b0f2-d5a8f942636f', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'cf45022d-be15-45a4-a223-9894eb1ad515', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor Ybr 125', 'yamaha-factor-ybr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-ybr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9e071e0e-d8ed-49f5-9cc2-b9fb4bab2702', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2008, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2008 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ef7b0ad-7461-4367-8eae-e3643d02f19f', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2009, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2009 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c112c0d2-cfbb-4704-b804-52dab1f18ee3', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2010, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2010 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa0a2441-bf72-4bc0-9f87-97d96fa953fa', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2011, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2011 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3fd88f37-2f23-4333-a609-80c86e141059', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2012, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2012 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '952bbd27-e6b7-4738-ae6e-65f87e709d62', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2013, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2013 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3d584704-7a5c-4d52-a4ab-f527456ef7de', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2014, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2014 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4f10b0db-7cc3-4630-8063-b77a6cfc9a0a', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2015, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2015 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5e0bb19e-bfce-4902-b93c-80658ed6a447', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b73a9f51-e115-4ea1-bd74-f7bb1d55035c', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor Ybr 125', 'yamaha-factor-ybr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-ybr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '628f0d35-63af-4c57-a8f2-32048e67ee83', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2002, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2002 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2002 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2002 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2002 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9e1b881c-af2c-46f4-9ae5-35a947610b63', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2003, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2003 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2003 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2003 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2003 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '503b922a-4a2d-42ed-8eed-28bdb2495912', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2004, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2004 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2004 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2004 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2004 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c8836009-c263-451b-a60c-efb1663a95f4', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2005, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2005 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2005 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2005 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2005 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59d00bda-f87a-4b2e-a79a-d39dede2f046', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2006, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2006 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2006 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2006 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2006 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e2b48832-3930-424a-b089-961b8d3cb841', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2007, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2007 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2007 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2007 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2007 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '034e6900-6a94-47ba-9c8f-b2576bb58a4c', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2008, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2008 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2008 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bb9d89a1-7ade-4f4e-aed0-c2b4697dcd3a', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2009, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2009 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2009 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f9965e75-a4c9-42ff-b081-dcda9625d403', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2010, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2010 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2010 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a32635ec-e479-4fc1-bcdb-7bad74151286', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2011, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2011 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2011 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '467cc929-9920-451d-8e12-b540f6f82ff4', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2012, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2012 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2012 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ccd9695-a35e-49aa-8d90-f5f819187656', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2013, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2013 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2013 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '03f8d649-af72-4f8f-8a51-144d8d98819c', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2014, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2014 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2014 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4ad8a325-9329-469d-aa8f-e5e1d589a2d0', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125'), 2015, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                AND year = 2015 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125')
                    AND year = 2015 AND version_name = 'K');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'f7782cd6-0e2f-4cfe-a4d3-203c0c25226e', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '82e6def7-41a2-43f8-8176-4714d0b9af14', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 125', 'yamaha-xtz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0ecbdaa3-cb9f-47fb-8f2a-bd978b1036ee', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2002, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2002 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2002 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2002 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2002 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '928ba2b0-4448-4255-a08a-ace56f15d6bf', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2003, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2003 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2003 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2003 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2003 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9c7c6a68-8c50-43af-967c-bebe5f251d34', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2004, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2004 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2004 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2004 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2004 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '24acf61b-5e2c-4815-9611-9fd204d7a49f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2005, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2005 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2005 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2005 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2005 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ce10c809-ba88-43ce-9b28-132e6bb9c6ae', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2006, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2006 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2006 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2006 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2006 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5df16aee-64d4-4da3-a0cf-50ce1620b5c1', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2007, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2007 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2007 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2007 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2007 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2cf09f51-4b11-473e-965a-8076c3009ba8', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2008, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2008 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ecd9af9e-ac6c-483e-9217-3efed2881072', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2009, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2009 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a4c0076f-4c6c-4d22-9160-64ea8c82aa5d', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2010, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2010 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59db3e04-aef3-49e8-b357-5e4f29ad92da', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2011, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2011 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '279000c9-5232-4ba7-a7f0-dc1ffa871afc', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2012, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2012 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2b16f5ac-de1e-4e20-9c0d-5c733d548d10', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2013, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2013 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fd3c9d38-cb42-4b41-8ef9-2058b103e363', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2014, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2014 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '85a0b5cc-54ed-4b0f-93ba-7fdf3af9c3be', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2015, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2015 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = 'E / XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ebda083b-f231-4f17-9080-800f75b0edd1', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2016, 'E / XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2016 AND version_name = 'E / XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2016 AND version_name = 'E / XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2016 AND version_name = 'E / XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2016 AND version_name = 'E / XE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2725957a-50b4-4d6b-8126-a3a527a508eb', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '67afcd17-0c3a-4539-b42c-9fdda1b09707', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 125', 'yamaha-ybr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9cff0a60-2000-408a-aa78-ef719e52db80', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2000, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2000 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2000 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2000 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2000 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '616b548d-1d03-4485-8d83-c18aa9ea9142', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2001, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2001 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2001 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2001 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2001 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f8c8edce-f13a-4a7a-a6be-096a2cc7ce20', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2002, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2002 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2002 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2002 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2002 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2d1b978a-77cb-46b5-b35a-6b42098e7beb', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2003, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2003 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2003 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2003 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2003 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f959f16d-5c00-4a5b-8f7d-4e04a16cc39d', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2004, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2004 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bb6dd58b-121d-4d2e-9ac4-0c621cc923d0', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2005, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2005 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '55a36766-ca6d-45db-b898-ce7db92b2205', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2006, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2006 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '34133415-2f20-4989-9f0b-e7c6ff48abde', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2007, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2007 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ab9b0e79-59aa-4183-92fe-c92d5d638caa', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8fdcd9bd-6f34-49ae-b663-b8416b6e07b6', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5d884abe-3d86-40b8-ab59-e55e0bb2433c', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '89723d57-8537-4d44-bb30-79c66424440a', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Fazer Ys 250', 'yamaha-fazer-ys-250'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-fazer-ys-250');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c154faab-5dff-4219-954f-82c334d83f28', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '98467c46-0650-4377-990d-e26b889d7c4a', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b3f2ce48-ba09-4ed2-a222-972a258eed7f', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '04c390fa-da78-4465-a0fe-30986d311ecd', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '689e40a3-419f-4aec-aae6-b9fb2e7aa8c4', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '88798e46-ea1e-4402-bf2a-7175d05cdb07', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd98bf82b-3666-44d4-be51-e62315e1eac1', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9bbee498-67e5-460f-80c9-1a4175c353a3', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '35e26e70-19d2-4140-b44a-b938f20df58b', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2cbf5fe5-f5ff-424e-9620-b9cd7feae380', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '36aaa0eb-fc30-4d31-9cd6-cf1e5b8024b1', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'aa33dee1-eeb7-4d85-a727-fecd126a8521', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '98210a14-9ef6-4f11-b19d-3828da11b89a', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Fazer Ys 250 Blueflex', 'yamaha-fazer-ys-250-blueflex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4260d3af-2e43-4e6d-8561-93f740885204', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '116e5bbd-4f77-415b-a5e5-11fd00bb5c0c', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b0064b9c-029e-4687-8d44-17543b6ac29d', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4725b6ae-cfb2-4262-89db-f69fb3851da3', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3ced2b37-f977-498e-ada8-9b0a48970b42', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '883018d6-1cbd-419d-92d8-2c9191b26279', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ae4ad935-1563-48f2-979c-f1704be16105', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b5e200ae-1b59-4dc7-aa07-cd42cb7e8aeb', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '50112fe2-bf82-4820-9cba-a8886d6c76e2', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8af5937c-51be-46db-b40c-67a9b86eba90', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '97b9b422-7752-4f7b-949d-eac6b8522cf4', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4d2c8852-d55c-4158-8ebf-b383fe9fac9f', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd25f33bf-dacd-43d9-b8d8-c58cec09f8b9', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ténéré 250', 'yamaha-ténéré-250'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ténéré-250');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '00702c95-8204-49f8-9e1a-6265a974b33e', (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b06c67ed-f359-4bf6-ae40-aecd7c95b65a', (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd9aaf4a9-e5b1-49b4-9b87-7bad697ca223', (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ee930e76-6fe2-47bd-a267-f953147af3d6', (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '45df3817-4e75-4893-9bfd-72af66b4aba6', (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '030777a3-bf0e-407b-ba0f-4c08d89b9160', (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ténéré-250')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4ddc3e2c-3201-47f7-a1fd-65dd29bb41e4', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '0a893c1d-eb9e-4465-a5a7-2b540450c086', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz Lander 250', 'yamaha-xtz-lander-250'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-lander-250');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4239df57-9f2f-4373-826f-deeeea0d857a', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '856ef580-5f31-4d61-8d43-c9475a33d159', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6a37073a-02ab-41c9-8102-8488076f86ad', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4a3dfce7-c6aa-4aca-93ee-2a6fa724174a', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dace31d5-7794-48fe-9610-c891fd656e0a', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd84f9887-6fc9-415a-86ca-62b3d1aaf357', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4d6b5a01-dde5-4fdb-a849-5bee4b181cf4', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8dedaa00-3f69-4d9e-88e7-f0f19af4b6a9', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c95a2a84-5a76-46ef-b43d-80c37ec27179', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7c69042b-eeed-4693-af6e-262be4f38b49', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8b7b54ff-b491-4b2e-b5a5-296b76b543a7', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0e874266-442f-45b3-b92a-cb4208a240b8', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2bd391f8-d140-456e-9289-88818cfef99c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de6b5f4c-ff38-414c-8d46-3befc08b54c3', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '961f6c27-77d4-4175-806d-f5fb3ea80f01', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6a890537-b854-4ec9-b010-630ff29acf4d', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ee53dd5d-19b3-43eb-999f-a7520c2ed288', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-lander-250')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '90dcaaf2-aad6-41c3-9de2-70792e1005e3', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '0df84595-3f55-4fc1-b06f-7521edf59e22', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor 150', 'yamaha-factor-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a26a7296-0f1e-467f-8c59-3cf7fad2979b', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2015, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2015 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2015 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2015 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2015 AND version_name = 'E / ED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e07fe31d-455e-46c4-8378-f6944ff6ed87', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2016, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2016 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2016 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2016 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2016 AND version_name = 'E / ED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '51a8fb72-e2a8-4b1f-8147-599339359668', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2017, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2017 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2017 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2017 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2017 AND version_name = 'E / ED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e1ac9222-6c79-4241-988f-f33ef9e330ec', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2018, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2018 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2018 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2018 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2018 AND version_name = 'E / ED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ccebda33-3836-43c0-925f-c4b57ceb0a77', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2019, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2019 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2019 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2019 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2019 AND version_name = 'E / ED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '40230589-86f8-444d-9aaf-e29782a7b899', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2020, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2020 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2020 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2020 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2020 AND version_name = 'E / ED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '64b62e0e-65be-42ab-9a51-5a655f9d44fb', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2021, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2021 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2021 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2021 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2021 AND version_name = 'E / ED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7e0306ee-9b91-422e-8430-3f13ee512cc8', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150'), 2022, 'E / ED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                AND year = 2022 AND version_name = 'E / ED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2022 AND version_name = 'E / ED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2022 AND version_name = 'E / ED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-150')
                    AND year = 2022 AND version_name = 'E / ED / UBS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'be2ac8da-a311-4248-b277-76d2b9031c6d', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7c8b1cc5-cc2e-48a8-a627-ea00ec9f1729', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Fazer 150', 'yamaha-fazer-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-fazer-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd4b030c0-59ac-487e-b675-e172a9f5de44', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2013, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2013 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2013 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2013 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2013 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ebee333a-c1ef-47a9-98bf-da989e899f07', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2014, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2014 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2014 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2014 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2014 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '45470b81-aa53-4143-b865-e6cd37d46b5f', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2015, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2015 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2015 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2015 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2015 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'df07980c-e233-400e-b885-d17fe001ef30', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2016, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2016 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2016 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2016 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2016 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '38b6d5bf-e9fa-44d1-bea1-85f9d945a35f', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2017, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2017 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2017 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2017 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2017 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '27582cc2-b5ba-46aa-89a5-378c6750679a', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2018, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2018 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2018 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2018 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2018 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1e240aaf-9d6b-4d15-8a3c-f2b22a6c3ecc', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2019, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2019 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2019 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2019 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2019 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '01e5abed-8195-415a-a018-7609517f201d', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2020, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2020 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2020 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2020 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2020 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b5f26618-43e5-403e-b776-6b2cbf7899d7', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2021, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2021 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2021 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2021 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2021 AND version_name = 'ED / SED / UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a7f2d696-d99a-4f92-9006-ed8d75ad23bd', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150'), 2022, 'ED / SED / UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                AND year = 2022 AND version_name = 'ED / SED / UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2022 AND version_name = 'ED / SED / UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2022 AND version_name = 'ED / SED / UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-150')
                    AND year = 2022 AND version_name = 'ED / SED / UBS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4aa4784e-13e8-4d7b-b36e-e43f4a788760', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3592b2ef-dbcb-4e2f-ada0-7353e55c62fe', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '02728273-74c0-4d08-94a6-eab62e70660b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2014, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2014 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2014 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2014 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2014 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '876b9cbf-a97e-47c7-b5c7-e4afdecd5971', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2015, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2015 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8f71d9fa-d038-4172-b1cc-aa24e6807f23', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2016, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2016 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '822330c2-d56f-4fbf-b750-c7d78459c7e0', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2017, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2017 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '37305457-9186-4916-971d-c2279843cf0c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2018, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2018 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '48396749-be82-4431-a9d5-97760aceb767', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2019, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2019 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '23d4c670-b048-40ba-94d4-420147677a81', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2020, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2020 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2020 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2020 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2020 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '497df3b2-299e-4be8-b2b7-30d693473f6b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2021, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2021 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2021 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2021 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2021 AND version_name = 'E / ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e12a11fc-2531-4bab-8416-322b1d4f25c1', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2022, 'E / ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2022 AND version_name = 'E / ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2022 AND version_name = 'E / ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2022 AND version_name = 'E / ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2022 AND version_name = 'E / ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ea19e3d1-56a4-4614-ad40-a321f63ab21e', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c7740562-2bb6-4ba0-bc21-873595732cc8', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 125I Factor', 'yamaha-ybr-125i-factor'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-125i-factor');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '574c4175-d5e1-4dba-ba85-2eaf1bd3dac6', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f5e1c406-3820-4065-8741-255b078e2259', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fed7cf3b-1686-4c2f-a384-52b625be3c08', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c25b59fd-60da-48c8-8d6b-5109dcb1bda6', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2e24d2ec-c0ae-4413-a8b7-a771d5dc9a7a', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4d817906-27e1-4936-a79e-63a957abd835', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e68a75ed-d69c-40a6-a649-38453fc0708a', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02816')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02816')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                    AND year = 2022 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2db2305d-b3dc-49f1-aef2-e2e949f4dba3', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor'), 2023, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125i-factor')
                AND year = 2023 AND version_name = ''
            );
            