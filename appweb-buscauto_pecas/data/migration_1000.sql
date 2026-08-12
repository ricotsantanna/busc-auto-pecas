
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2012 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a9450089-d649-44ee-8e39-0b214f72bbb4', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'df87441a-06f6-4331-a502-3e28bfed0ef8', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2014 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '19c2d1bc-7d3d-472b-95e8-212fb4b85130', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es'), 2015, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                AND year = 2015 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2015 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b7ab51c3-9e60-4dfd-9e37-f917d7274243', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '09c257a9-8c7c-4c0e-acdb-3aa62b9f5f06', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 125 Ex', 'honda-biz-125-ex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-125-ex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7e02783c-4b40-4dba-a34f-cbc4c8eb215e', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex'), 2011, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                AND year = 2011 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2011 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2011 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2011 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '53d76a4f-9bf6-451c-aa0f-a3724f089c11', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex'), 2012, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                AND year = 2012 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2012 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2012 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2012 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7542285b-2980-42fa-b345-6b2e556aebc9', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex'), 2013, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                AND year = 2013 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2013 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2013 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2013 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3881716d-fa36-4c33-8a32-57686abc59ca', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex'), 2014, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                AND year = 2014 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2014 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2014 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2014 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b445ac5b-982c-4258-b678-2b722a0b4227', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex'), 2015, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                AND year = 2015 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2015 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2015 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-ex')
                    AND year = 2015 AND version_name = 'EX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9a9127e8-0142-4a94-8afa-83f06b595b1b', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '0ca501c9-4d44-4731-bac1-f6ec49f9ed5b', (SELECT id FROM brands WHERE slug = 'honda'), 'Pcx 150', 'honda-pcx-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pcx-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7eb57b28-03b9-421e-91d0-4caa7884f5a8', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '361605e4-5ec1-4f5c-8188-6fbe073f6156', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b347dbbe-2725-43c6-b940-4e85fd22020f', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '87148c91-e68a-4578-8ae1-e0f95b451ff6', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5497a7c2-bd88-42ec-9d3d-48edd42d3c7c', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b35e7b3d-53b2-4a70-87a0-0c3bfb64f069', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '52153a46-001b-458a-b075-247ea4d818e8', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd3e51ec7-e9db-4dc3-931c-f45150aeb832', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '837d4b4a-713c-49bb-be56-8585a52113c1', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '73d6fbc2-dd10-4923-8e65-8209a62b96c2', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02824')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02824')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd734c699-a9d7-4d1e-bd07-a871951f63ba', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '781b934f-0edc-4742-a292-13fd3f829a05', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160 Fan', 'honda-cg-160-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '293d7233-7d95-4f11-bfeb-832c7a87afc7', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2015, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2015 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2015 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2015 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2015 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '00672492-9b02-47ba-a011-51fd5aafb49b', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2016, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2016 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2016 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2016 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2016 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5516009f-3cb8-4d80-8f92-fd9449a813f6', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2017, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2017 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2017 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2017 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2017 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a9330465-c82f-47c6-9466-fc083bc28d71', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2018, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2018 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2018 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2018 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2018 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2a28f73a-223b-4390-9a1c-a5c226f72d1f', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2019, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2019 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2019 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2019 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2019 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c1bf318b-ac15-47cd-8392-a515c8854bf4', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2020, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2020 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2020 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2020 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2020 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c1fde70e-b600-465f-a65c-918840d899f9', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2021, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2021 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2021 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2021 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2021 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1d91e0b1-9a2a-4ee9-a05e-5e4d0af7d044', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan'), 2022, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                AND year = 2022 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2022 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2022 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-fan')
                    AND year = 2022 AND version_name = 'Fan');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4e107981-9afb-4b0c-a7e0-616728f5c212', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9f0e18ec-1b55-4914-9fa9-95c9f4480749', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160 Cargo', 'honda-cg-160-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '985b8eba-01fa-4f44-897c-125f4ce26b78', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2016, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2016 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2016 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2016 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2016 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cb224b89-92ab-46f0-be57-b60cc37914d3', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2017, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2017 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2017 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2017 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2017 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6eec854d-f8ac-4e49-a3bd-d7f53b38d05f', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2018, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2018 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2018 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2018 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2018 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7b0128a6-6985-4f9d-b535-e1db19f1af53', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2019, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2019 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2019 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2019 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2019 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c80bf201-cf4d-45a3-a2ff-bdcfd7b94a9d', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2020, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2020 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2020 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2020 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2020 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6f53c3b0-7fe3-4638-9558-6f41695eb10e', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2021, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2021 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2021 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2021 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2021 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '36f7dd9b-055c-4dc4-8a00-56577866d864', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo'), 2022, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                AND year = 2022 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2022 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2022 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-cargo')
                    AND year = 2022 AND version_name = 'Cargo');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'af230a72-b506-4316-ac79-a9646f99c5f5', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8209131d-d148-4ac1-9df7-541bf248f2ae', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160 Start', 'honda-cg-160-start'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160-start');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '402e7279-a77b-4237-b381-7640dd54acd2', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2016, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2016 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2016 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2016 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2016 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1c0e8c6c-eeb9-4136-9f4a-0e05175827fd', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2017, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2017 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2017 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2017 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2017 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7cd40a7d-a22d-4c9d-834d-f014228eb1cf', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2018, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2018 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2018 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2018 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2018 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0246c0bf-a59c-48f1-99d8-54d6489208f1', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2019, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2019 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2019 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2019 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2019 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '99d061fe-1037-4ffd-8090-32e26e214245', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2020, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2020 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2020 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2020 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2020 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9ee1e7e4-c5b4-4229-871c-f2b5e1a86130', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2021, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2021 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2021 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2021 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2021 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a52d7bb6-4b78-4ba4-a90b-c6727ed4fae7', (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start'), 2022, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                AND year = 2022 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2022 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2022 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160-start')
                    AND year = 2022 AND version_name = 'Start');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '8c8b69aa-4ea6-472c-9112-cebf2e7ade17', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd15b8ffc-e177-461a-88fb-99b3b2f27418', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 160 Bros Esd', 'honda-nxr-160-bros-esd'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-160-bros-esd');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '91bcfcae-912a-4f3e-862c-b0e7b0189913', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2014, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2014 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2014 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c3d456c2-ca77-494f-864c-b7dcc71ced60', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2015, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2015 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2015 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2b471ae5-33b8-4bd9-b32e-d0a185c897d9', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2016, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2016 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2016 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2016 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2016 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1e0d6a0e-6aa4-4a06-aa33-cd591c01cafe', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2017, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2017 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2017 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2017 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2017 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '74d8567c-5754-42c7-81eb-b490bd30ad04', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2018, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2018 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2018 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2018 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2018 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e52886ca-b970-43ec-886d-d1d3daa95648', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2019, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2019 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2019 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2019 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2019 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa3d69eb-f123-4570-98dd-850ac4443156', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2020, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2020 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2020 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2020 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2020 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e92cb0a6-dbe0-4536-95d7-a4f2ac87fd54', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2021, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2021 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2021 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2021 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2021 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fff2ff4f-0988-42b6-9a73-083bba82150b', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd'), 2022, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                AND year = 2022 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2022 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2022 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros-esd')
                    AND year = 2022 AND version_name = 'ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'daafcdc1-7b4e-4e92-bd49-d3a6104c5d86', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'fa4a35c4-b25b-467d-b5f0-b9cc0647e118', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr Bros 160 Flex Es', 'honda-nxr-bros-160-flex-es'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '950c0ce6-3ea1-4c01-9ede-a4b273f1ed73', (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es'), 2014, 'Flex ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                AND year = 2014 AND version_name = 'Flex ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2014 AND version_name = 'Flex ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2014 AND version_name = 'Flex ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2014 AND version_name = 'Flex ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b8dd188f-4593-4b35-862e-98a3a26bbb69', (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es'), 2015, 'Flex ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                AND year = 2015 AND version_name = 'Flex ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2015 AND version_name = 'Flex ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2015 AND version_name = 'Flex ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2015 AND version_name = 'Flex ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '77804f4e-c85b-4ee4-9dbf-79cebff23137', (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es'), 2016, 'Flex ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                AND year = 2016 AND version_name = 'Flex ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2016 AND version_name = 'Flex ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2016 AND version_name = 'Flex ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-bros-160-flex-es')
                    AND year = 2016 AND version_name = 'Flex ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a51fda12-faed-4766-9233-0a1bab72183d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '642df20a-0d9e-4e2b-8a43-2fe83105edc5', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 190', 'honda-xre-190'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-190');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7402cc52-15c7-4bd2-84d9-c67bd8c0db2e', (SELECT id FROM car_models WHERE slug = 'honda-xre-190'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7147fdf3-9b1b-4e5b-9700-6240caefb39f', (SELECT id FROM car_models WHERE slug = 'honda-xre-190'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '306f7202-4527-4256-8b4e-619b43eb806a', (SELECT id FROM car_models WHERE slug = 'honda-xre-190'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eae2f70c-e2ec-48c7-9d1f-f352d05edd8b', (SELECT id FROM car_models WHERE slug = 'honda-xre-190'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '52cc1771-21af-4a67-98d3-f458f48c9bf5', (SELECT id FROM car_models WHERE slug = 'honda-xre-190'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0e40f49d-b8b9-4fe0-9f47-7bfcd06c8d2d', (SELECT id FROM car_models WHERE slug = 'honda-xre-190'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '226390c1-6d47-44cd-9470-31120f8a0850', (SELECT id FROM car_models WHERE slug = 'honda-xre-190'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02825')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02825')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'f7b3d8a0-c96b-4636-bc60-8a6ffff7f1b0', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e03bfdb9-fb64-4d13-8352-f1a5cba16021', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300', 'honda-cb-300'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16e63389-2f86-4ccd-9fbf-935aa29e11a2', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2009, '', ''
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
            SELECT '45169e9d-02d2-4d68-9082-c7efa8097d1a', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2010, '', ''
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
            SELECT '69243a34-49d7-4e73-b944-18716ef0b748', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2011, '', ''
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
            SELECT '075a4b5c-618e-498c-9d5c-1e1b9edca062', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2012, '', ''
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
            SELECT '590f2961-c684-481f-bd98-13a2b95dd2fb', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2013, '', ''
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
            SELECT '94e1de95-406b-4fb4-bafc-28fe36a3dfd2', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2014, '', ''
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
            SELECT '1dae4e90-385a-4c7b-b87a-60fdfcd0d2df', (SELECT id FROM car_models WHERE slug = 'honda-cb-300'), 2015, '', ''
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
        SELECT 'fe5c95d2-a432-4600-9d6a-3d54aaf7f7e4', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4b000e0f-a5c5-45e0-97e3-5290fb9ebd50', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300 Edição Limitada', 'honda-cb-300-edição-limitada'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300-edição-limitada');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '089dd3e2-d879-454b-bdcf-778239b4a1e9', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada'), 2016, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                AND year = 2016 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2016 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2016 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2016 AND version_name = 'Edição Limitada');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '051fddac-3c81-41c3-abc5-e35c6d21d868', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada'), 2017, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                AND year = 2017 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2017 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2017 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2017 AND version_name = 'Edição Limitada');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c9ab3c16-878d-4029-915c-06e9f6f3f057', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada'), 2018, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                AND year = 2018 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2018 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2018 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2018 AND version_name = 'Edição Limitada');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '432207f8-413b-4ee9-95f1-2d40dda312ab', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada'), 2019, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                AND year = 2019 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2019 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2019 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2019 AND version_name = 'Edição Limitada');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '83794219-b8d0-44ae-81a3-ad4712dce1cd', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada'), 2020, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                AND year = 2020 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2020 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2020 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2020 AND version_name = 'Edição Limitada');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '41fbd0f7-79f1-4988-9b7b-b6e69c066d30', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada'), 2021, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                AND year = 2021 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2021 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2021 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2021 AND version_name = 'Edição Limitada');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '92aa245a-00b3-4b33-acc5-65d27ab12078', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada'), 2022, 'Edição Limitada', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                AND year = 2022 AND version_name = 'Edição Limitada'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2022 AND version_name = 'Edição Limitada' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2022 AND version_name = 'Edição Limitada' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-edição-limitada')
                    AND year = 2022 AND version_name = 'Edição Limitada');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'eaefb0a2-a2be-48c6-b430-2002f5efe26c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4b244af2-28b7-46b4-b20e-c226cb0fdab2', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300R Flex', 'honda-cb-300r-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300r-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4a51b595-24a0-4e51-8db8-c61af654b1d2', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2013, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2013 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2013 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6b9b63f6-c242-438c-9e04-c133eaae9ecc', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2014, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2014 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2014 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '65fc12c2-1cf7-4334-976a-39f025673640', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2015, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2015 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2015 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '88d498e8-689d-4efc-9dc9-d140636821ac', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2016, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2016 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2016 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2016 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2016 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fdb01a28-ead0-4c72-bf27-8e75a2d19ca0', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2017, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2017 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2017 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2017 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2017 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '50f533a3-bd27-4cfa-be07-baeb87848c30', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2018, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2018 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2018 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2018 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2018 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c549e895-8f9d-4e73-b86d-e318a9ddc0cb', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2019, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2019 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2019 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2019 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2019 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '390daf20-71ff-43b4-ab11-435460081790', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2020, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2020 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2020 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2020 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2020 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '366c38e0-2137-4327-bace-8e8264b7f31d', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2021, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2021 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2021 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2021 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2021 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '35d6acde-a249-4c9f-946d-b3bf052f2966', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex'), 2022, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                AND year = 2022 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2022 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2022 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r-flex')
                    AND year = 2022 AND version_name = 'Flex');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a275ecd2-6acc-4121-b0f6-537a007eac74', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '007b50e7-9eae-434e-9361-3f53a44a5cc4', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 300 Flex', 'honda-xre-300-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-300-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0eb30f5a-ccfb-474e-96dd-733fde0ff15a', (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex'), 2017, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                AND year = 2017 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2017 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2017 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2017 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7ff2f368-3f38-4dab-af92-97a64090960d', (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex'), 2018, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                AND year = 2018 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2018 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2018 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2018 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '873f63d0-2c47-4b8e-abc2-5b74e006ee6b', (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex'), 2019, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                AND year = 2019 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2019 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2019 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2019 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '06ec026c-7691-4f9a-9121-5e29cf0ac795', (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex'), 2020, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                AND year = 2020 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2020 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2020 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2020 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fb2cda45-3239-4349-a069-b5c16125ea7a', (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex'), 2021, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                AND year = 2021 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2021 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2021 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2021 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'acb0c807-9e05-43e4-9672-c4fac7768ff1', (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex'), 2022, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                AND year = 2022 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2022 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02838')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2022 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02838')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300-flex')
                    AND year = 2022 AND version_name = 'Flex');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b11dbcfe-fb40-49d5-88f4-e76195a7303c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '05b96894-853c-4c99-8f3e-541aab5f365a', (SELECT id FROM brands WHERE slug = 'honda'), 'Lead 110', 'honda-lead-110'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-lead-110');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '37349836-32ed-4f4b-b278-8b28164eb90a', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2009, '', ''
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
            SELECT '892d4ff7-1f5a-4d69-a574-270101c60de1', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2010, '', ''
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
            SELECT 'a735ca53-9011-4983-92de-ebca367807e8', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2011, '', ''
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
            SELECT '866d67f6-3980-416e-b606-307b9b1b13fe', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2012, '', ''
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
            SELECT '745b22a3-7d25-4000-b972-4866e63ccf7a', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2013, '', ''
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
            SELECT '44c7c333-d023-4e2a-b616-7a280496ae05', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2014, '', ''
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
            SELECT '29e93f01-3bc1-4516-9a90-ffdb46c65bec', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2015, '', ''
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
            SELECT '99f6826d-7e73-48df-bba6-5f037a5aea33', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2016, '', ''
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
        SELECT '03c3430a-de57-4808-b0c0-11e2b55d10aa', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '353f0586-8d96-48e4-9723-24001ad265f1', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En 125 Yes', 'suzuki-en-125-yes'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125-yes');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cfadb24b-ffd8-4a48-8e7b-a959f77b388b', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2005, 'Yes', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2005 AND version_name = 'Yes'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2005 AND version_name = 'Yes' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2005 AND version_name = 'Yes' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2005 AND version_name = 'Yes');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'fad8e82b-c9d7-4941-b2c5-1ff69b8f9eac', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e5f6147c-f4fb-4058-bd17-61312c35a4b1', (SELECT id FROM brands WHERE slug = 'suzuki'), 'Gn 125 Intruder', 'suzuki-gn-125-intruder'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-gn-125-intruder');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c9f06fb6-76ec-46e8-a2dc-f9b0b4610102', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2008, 'Intruder', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2008 AND version_name = 'Intruder'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2008 AND version_name = 'Intruder' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2008 AND version_name = 'Intruder' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2008 AND version_name = 'Intruder');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '422bcdc7-005b-4265-b203-aa41098dd557', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2009, 'Intruder', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2009 AND version_name = 'Intruder'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2009 AND version_name = 'Intruder' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2009 AND version_name = 'Intruder' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2009 AND version_name = 'Intruder');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5643494e-c943-4ecc-a8c8-0200a0f643b1', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2010, 'Intruder', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2010 AND version_name = 'Intruder'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2010 AND version_name = 'Intruder' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2010 AND version_name = 'Intruder' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2010 AND version_name = 'Intruder');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b5fffe2a-dd28-46a9-991e-4921cdd35155', (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder'), 2011, 'Intruder', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                AND year = 2011 AND version_name = 'Intruder'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2011 AND version_name = 'Intruder' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2011 AND version_name = 'Intruder' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-gn-125-intruder')
                    AND year = 2011 AND version_name = 'Intruder');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '27d86097-9387-44d4-a6d9-1409438fae98', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3a8f1d82-33ef-4e2b-940b-baf3efaa1b51', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En-125', 'suzuki-en-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '49e3c12a-5c97-4996-b701-c04722d4b27f', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2007, '', ''
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
            SELECT '9fd24c93-f180-4e1f-8bd3-505315575517', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2008, '', ''
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
            SELECT '781262da-b925-4265-a7a3-44f2e1bf4eca', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2009, '', ''
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
            SELECT 'e4e20d25-5871-4260-afcc-9b9e3a406d45', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2010, '', ''
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
            SELECT '6eeb3b33-3363-43b9-a9e3-712b99dc9392', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125'), 2011, '', ''
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
        SELECT '15f7d6a5-49ae-4161-81f8-82dc7f850138', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'bb9f4ae9-0f08-4467-a9d4-679f44138668', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En-125 C', 'suzuki-en-125-c'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125-c');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '452929b2-1aed-43f2-9763-1070ca828720', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c'), 2010, 'C', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                AND year = 2010 AND version_name = 'C'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2010 AND version_name = 'C' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2010 AND version_name = 'C' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2010 AND version_name = 'C');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ba968678-3dcd-4943-b4c3-c2e7af7543ae', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c'), 2011, 'C', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                AND year = 2011 AND version_name = 'C'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2011 AND version_name = 'C' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2011 AND version_name = 'C' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-c')
                    AND year = 2011 AND version_name = 'C');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a4cf7a27-bc59-443d-b44e-d708415cf9d4', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3c43ced8-64ff-47d4-aaeb-ca41e62b2aed', (SELECT id FROM brands WHERE slug = 'suzuki'), 'Yes 125 Se', 'suzuki-yes-125-se'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-yes-125-se');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6f67aef8-b435-4ad0-bcc5-0b2e6c2bb0aa', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se'), 2012, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                AND year = 2012 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2012 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2012 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2012 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '86c03367-e2b0-48b4-8a28-7ca3cdb0e726', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se'), 2013, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                AND year = 2013 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2013 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2013 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2013 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0628963e-8aa7-46c6-881f-bb3f67f39d64', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se'), 2014, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                AND year = 2014 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2014 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2014 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2014 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0c91947d-7415-4b8f-9ba6-b4150d3e0a9b', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se'), 2015, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                AND year = 2015 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2015 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2015 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2015 AND version_name = 'SE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f055af53-5371-42f4-9af4-df21fb2f15b8', (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se'), 2016, 'SE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                AND year = 2016 AND version_name = 'SE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2016 AND version_name = 'SE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02808')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2016 AND version_name = 'SE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02808')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-yes-125-se')
                    AND year = 2016 AND version_name = 'SE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5b493b4d-3306-4ed3-8254-b4ba49e6f168', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd4aa71f5-7af1-478e-894d-d8f63dee976f', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor Ybr 125 E', 'yamaha-factor-ybr-125-e'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7453efe1-0b4b-4705-92c2-78b7e5abdab6', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dcae4897-f98e-48fa-8503-b956e4d3fe63', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2009 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'abd6be06-2240-4a6c-9489-884366714305', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2010, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2010 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2010 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3c7c1676-7d12-4499-9732-72208dc9ce30', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2011, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2011 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2011 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f6b58d33-77df-4594-a335-79f9b3e4defb', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2012, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2012 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2012 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1bff0bc0-5a33-4ab5-bfe5-e42775a03f67', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2013, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2013 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2013 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9ead964e-4948-4e1a-bd6b-441e956ae67e', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2014, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2014 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2014 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4353504f-6b7d-490e-a965-c11418297de8', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2015, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2015 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2015 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a331dd3b-9acd-4027-86ac-7fd9d96c767a', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-e')
                    AND year = 2016 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd26d2d92-8212-4336-baa8-441a05f45683', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd431a39c-6ae9-4036-9f89-0d2011793068', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor Ybr 125 Ed', 'yamaha-factor-ybr-125-ed'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9d51da04-dfcf-4939-9e8b-c88fb868eb38', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2008, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2008 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2008 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2008 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2008 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '15dc04d6-ab5b-4efd-9b78-c2c6b24cc3f4', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2009, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2009 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2009 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2009 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2009 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6c2cf573-df88-455b-87de-1c177fe29c61', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2010, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2010 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2010 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2010 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2010 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd031868e-1c96-4350-822f-f57824bd1d67', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2011, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2011 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2011 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2011 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2011 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '91787d11-345d-4b6f-adf7-d66d8742cd2f', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2012, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2012 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2012 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2012 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2012 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7fc3737d-a8f7-4ac5-9d10-526904db6338', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2013, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2013 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2013 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2013 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2013 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9e801482-d706-4cf5-8521-5ab7d67e7a51', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2014, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2014 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2014 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd60972e0-9893-4a21-9573-2d76b5a5b292', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed'), 2015, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                AND year = 2015 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-ed')
                    AND year = 2015 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '74a9b8a1-e7d1-4445-857d-11606183c6a0', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f6384c76-6546-4535-bf89-387ee34226f4', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor Ybr 125 K', 'yamaha-factor-ybr-125-k'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f373babe-7752-4b6e-b977-536921e13358', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2002, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2002 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2002 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2002 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2002 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c6530ff5-c197-4c5e-91e6-ef9bc3fe52fd', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2003, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2003 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2003 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2003 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2003 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0f470051-8748-473a-a46a-38dcc3ebbdd8', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2004, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2004 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2004 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2004 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2004 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7a52b374-3932-465f-92e0-adfa50eb197f', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2005, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2005 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2005 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2005 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2005 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '117ab504-0a1b-4322-954d-7687d0230a02', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2006, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2006 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2006 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2006 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2006 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '29404fc6-8ea5-42cc-ad96-599f0cacd775', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2007, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2007 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2007 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2007 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2007 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '47e658d4-48e1-44d2-ba2c-8ec384cffb8a', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2008, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2008 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2008 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2008 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2008 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c325dac4-c1d2-42b1-acff-419e121ad447', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2009, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2009 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2009 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2009 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2009 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '86ac8bc0-2cc8-44a4-a081-c4df16248ff9', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2010, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2010 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2010 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2010 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2010 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '666348f4-6d90-49a5-9b9a-abf8cad8f006', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2011, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2011 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2011 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2011 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2011 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6c5a65c4-7381-4bcb-ac02-ae972160a627', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2012, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2012 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2012 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2012 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2012 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0561f10a-562e-4a6f-9f73-4c065373fb4d', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2013, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2013 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2013 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2013 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2013 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a9c58275-414e-4d30-bc71-72f63c3b34c4', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2014, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2014 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2014 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2014 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2014 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16559004-91c8-48fc-b5bb-50918e5dc22c', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k'), 2015, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                AND year = 2015 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2015 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2015 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-ybr-125-k')
                    AND year = 2015 AND version_name = 'K');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '009a3e5e-211e-4200-8f41-f26d4086127c', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '26fa62a0-6289-4e05-8d14-39df5b8dd418', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 125', 'yamaha-xtz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ca3b2313-11fa-433d-b6dd-92ef7f10c468', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7df357e0-c4bc-405a-b11a-32b441fd2f83', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cc7b17da-720c-4b4a-acb1-7d9c79f88c27', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4a209c1d-5a79-4773-b12d-5ad50080df75', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c42fa354-e693-4fb8-baaa-b70b42f49a5c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1148b47a-54bf-4d9d-af2f-08a40c42080d', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6303471d-c5c7-4871-bccc-d799d81b76b1', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ef30ca49-10b3-432a-b6f7-e8e439a14cb8', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd72c9514-0589-40af-adcb-4cb55dd1d04a', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '90de6f26-951f-4514-b95c-2793705474ab', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b4a5c8d4-20b7-4c0d-b09d-6cecb7940789', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa1eb0c3-822a-4e81-9d75-56fb3ce2678f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59ff12ad-91d8-417d-adff-dd53b1cf213f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8fe4bde1-d43f-4a71-a88c-ed18a19d3939', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dbbf2f3b-5a7e-4d3b-8888-28fed4f433b5', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2016 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3429b679-20e7-4c0f-a40d-693ed715e39b', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '69e31b1a-2fb6-4674-8c14-d73117bc619d', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 125 E', 'yamaha-xtz-125-e'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-125-e');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4bfe9835-4ed6-4d98-91d9-8f9eac76b59f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2002, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2002 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2002 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2002 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2002 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0f3f93b5-5f97-43b6-a185-59efb5b0ba66', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2003, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2003 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2003 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2003 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2003 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e6531682-ce6f-4ea7-bdf1-c410c94b6294', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2004, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2004 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2004 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '66d83b5a-f0d9-4720-86f0-e28e647ee0b3', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2005, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2005 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2005 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff8d6c6f-4fdc-4a22-9751-6d62da4b06fe', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2006, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2006 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2006 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '52c8ac56-cacc-43e0-9b3e-56debad87839', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2007, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2007 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2007 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c2f526be-6ba0-46d9-9945-99ee98b11103', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a727ceb2-64db-4556-9b22-e1d85b8a822c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2009 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '309ac4b5-f7b5-40fe-8be0-026429f3d51d', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2010, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2010 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2010 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'deb559f6-d2d6-40a8-882d-421c54c0fe0c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2011, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2011 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2011 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '30da708d-5e69-4674-a1fc-4d23f7dc1e5c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2012, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2012 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2012 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f0a8de48-ef16-4f84-9eff-8d83c46e666b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2013, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2013 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2013 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7713f629-b2e7-4239-bd1f-cebd92b10234', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2014, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2014 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2014 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '60110b4e-824f-44b2-99ad-ca6d56a6cd14', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2015, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2015 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2015 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7639ba0d-50b0-4bdb-be83-e3b90cffa861', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-e')
                    AND year = 2016 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a85a571b-172c-4f69-81b2-0934fcf90f4d', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a5131de8-82b9-447f-bb7d-7ee1733de893', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 125 Xe', 'yamaha-xtz-125-xe'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-125-xe');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '577b5167-e8dd-4ebe-9a15-921bbae85759', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2002, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2002 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2002 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2002 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2002 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c9c8b105-deb4-45a0-93b3-e5c0ce5cdb84', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2003, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2003 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2003 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2003 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2003 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6656acc6-79e2-4bad-9a78-4c8a6db95ce7', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2004, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2004 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2004 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2004 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2004 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4727d25a-170c-4cf2-b067-4be25432c80f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2005, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2005 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2005 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2005 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2005 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd76a4832-5a72-4d4a-bb5f-c6f372a1ae63', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2006, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2006 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2006 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2006 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2006 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '02e8f7ed-2bdf-4010-87e1-228648782769', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2007, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2007 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2007 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2007 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2007 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e44fb2b4-b940-4079-b5b2-b5865f9c2db7', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2008, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2008 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2008 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2008 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2008 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bfaa902e-e79c-4cb8-a474-e7d7367ef459', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2009, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2009 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2009 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2009 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2009 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7639f683-2d2b-4b78-963e-85b9f7f46bb0', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2010, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2010 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2010 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2010 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2010 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '570f006d-50da-4964-8aaf-ea098f72e2df', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2011, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2011 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2011 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2011 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2011 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0464fe38-17c4-4346-8de4-bc4892dae472', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2012, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2012 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2012 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2012 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2012 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'acda811a-afe9-4b74-b239-ae5f56b780f0', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2013, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2013 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2013 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2013 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2013 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ca0669ec-4eaa-4f76-8c3a-6511dca4317f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2014, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2014 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2014 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2014 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2014 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2f85f80e-530a-4106-ab30-2bdb0ee57ace', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2015, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2015 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2015 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2015 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2015 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f489c66b-c554-4375-864b-4da2430b9bd6', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe'), 2016, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                AND year = 2016 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2016 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2016 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125-xe')
                    AND year = 2016 AND version_name = 'XE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ff40b896-769a-45c1-8550-546368d25d39', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '76a85a50-303e-40d4-bf9d-3083de183eef', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 125 E', 'yamaha-ybr-125-e'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-125-e');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '17b4978c-fb29-4429-b92f-05b2c1a2db17', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2000, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2000 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2000 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2000 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2000 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '83dd58fe-25e8-456a-b07f-2b90d4dabb81', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2001, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2001 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2001 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2001 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2001 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '291b56b5-6e33-408a-857e-586d5a22885d', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2002, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2002 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2002 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2002 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2002 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '81e6df75-c6ad-400c-987a-8d5fa946dad1', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2003, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2003 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2003 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2003 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2003 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fd141e53-cb02-4f60-824e-e49d34c0ff92', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2004, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2004 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2004 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '83e7fa40-2997-49a7-91c0-9309156383ba', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2005, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2005 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2005 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cd202198-9211-4c52-a834-5b8961e20e18', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2006, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2006 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2006 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '52524a04-91c5-425c-8c0b-6164c0e94af0', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2007, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2007 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2007 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ec62c2fa-b5a7-4bd0-9ed0-737e782bd90d', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6700530b-e59a-493d-a726-fd03d06db0e3', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02114')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02114')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125-e')
                    AND year = 2009 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '80bbf189-3662-4f04-8d8c-06dadc3ade82', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9d5c70e9-a42c-432c-95e8-8bb691e0f106', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Fazer Ys 250', 'yamaha-fazer-ys-250'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-fazer-ys-250');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bb1e7b0e-05f4-4d20-9145-3fdcc14c0e0c', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2005, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2005 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2005 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2005 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2005 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '01da8590-2ad5-4de3-8f3d-d7e27bc8d897', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2006, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2006 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2006 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2006 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2006 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f9d68238-e768-4768-832b-998139881a62', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2007, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2007 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2007 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2007 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2007 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a0b11059-124e-4daa-8489-df639294aad9', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2008, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2008 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2008 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2008 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2008 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3f6589a0-79ce-495a-9b6b-7a7c0b6d299c', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2009, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2009 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2009 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2009 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2009 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd4c7a43e-d0af-437d-b334-231fb39d6f98', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2010, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2010 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2010 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2010 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2010 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '42633ec4-401e-4b32-a9f8-a668ba351aee', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2011, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2011 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2011 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2011 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2011 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '780e13e0-cfd5-459d-8889-d3f38df08b86', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2012, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2012 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2012 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2012 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2012 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd6ed80be-58cc-49b0-88a3-f9b05271ff79', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2013, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2013 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2013 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2013 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2013 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5c232e36-a064-45dc-b237-6a84f45dab1c', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2014, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2014 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2014 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2014 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2014 AND version_name = 'YS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd2ccf47a-6005-4477-aeaa-d84e3d8cb4a5', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250'), 2015, 'YS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                AND year = 2015 AND version_name = 'YS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2015 AND version_name = 'YS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2015 AND version_name = 'YS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250')
                    AND year = 2015 AND version_name = 'YS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'c3bb4850-6426-4fcb-b30a-c7c46d9a8e80', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'cd034523-f677-4787-85ff-654e669b6217', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Fazer Ys 250 Blueflex', 'yamaha-fazer-ys-250-blueflex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e8796596-2930-4c2b-83e9-1b5eb3fdf3b4', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2012, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2012 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2012 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2012 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2012 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '015fa64d-6209-48bc-9d51-8689b9d62474', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2013, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2013 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2013 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2013 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2013 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '161e4c9e-0e9c-498b-923b-247a5a315322', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2014, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2014 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2014 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2014 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2014 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3109e9a2-b3b4-4782-9789-eb88a5de2377', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2015, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2015 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2015 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2015 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2015 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '67f4acf8-14f8-40a2-985c-1c01d2d95749', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2016, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2016 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2016 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2016 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2016 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ea644991-d848-4b24-8956-d53805f64cde', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2017, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2017 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2017 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2017 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2017 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f1a443bf-1f61-4b86-bfa4-6ea05082d39b', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2018, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2018 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2018 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2018 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2018 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '488a8347-985e-4b7c-b614-da94d33d4275', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2019, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2019 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2019 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2019 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2019 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e70ca620-e21c-41ef-bf49-6b1444e9b31e', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2020, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2020 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2020 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2020 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2020 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b32ece09-e7f6-4637-bbd4-812420ead54f', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2021, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2021 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2021 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2021 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2021 AND version_name = 'Blueflex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '391c783a-c2f7-4eb4-948e-16c9f47b79a0', (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex'), 2022, 'Blueflex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                AND year = 2022 AND version_name = 'Blueflex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2022 AND version_name = 'Blueflex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02294')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2022 AND version_name = 'Blueflex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02294')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-fazer-ys-250-blueflex')
                    AND year = 2022 AND version_name = 'Blueflex');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0837534d-68a7-47db-9fff-c10ded90e359', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        