
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '56ba01b8-9f4e-4376-b1b1-09fa0e57f000', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e64b9a37-3efc-4ffc-9e03-8e80c0b24c91', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '72c4ee0c-51d5-4ba2-b70e-9757ff7518fa', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8360ae31-cb72-4a83-8090-c91c464ceb47', (SELECT id FROM brands WHERE slug = 'honda'), 'Sh 150I', 'honda-sh-150i'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-sh-150i');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'edf876af-13df-48a2-afc1-024009a9f9a2', (SELECT id FROM car_models WHERE slug = 'honda-sh-150i'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '204bc427-5de0-467d-8e55-109a2bb9833f', (SELECT id FROM car_models WHERE slug = 'honda-sh-150i'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8218a82-d63a-4670-946b-252413fe536b', (SELECT id FROM car_models WHERE slug = 'honda-sh-150i'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '93fd0d8e-d468-468f-9f13-a752762ceff7', (SELECT id FROM car_models WHERE slug = 'honda-sh-150i'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '02f4e00d-b532-4c88-a906-3ae545ca073b', (SELECT id FROM car_models WHERE slug = 'honda-sh-150i'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-sh-150i')
                    AND year = 2021 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0439f12a-26d9-4626-9686-8ea88d38f029', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '1ebc88bd-f932-4f7a-bdd1-99fa1612b991', (SELECT id FROM brands WHERE slug = 'honda'), 'Pcx 150A/ 150', 'honda-pcx-150a-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pcx-150a-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cfc8f5ec-562f-4703-a00e-edb5eacd10f7', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3c97fb8b-0cd2-471b-96b1-e609934c853c', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dbae4776-7519-4134-82f5-4289f0aba4d8', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2503c2d7-6dc1-49db-9023-1c98643aba77', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150a-150')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '604f7b87-9dee-4ffe-8473-242bd9198a2e', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '1c37105a-6dc1-46ac-ab68-aa626bb09001', (SELECT id FROM brands WHERE slug = 'honda'), 'Nx 400I Falcon', 'honda-nx-400i-falcon'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nx-400i-falcon');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ab3fa1b2-24af-4cce-9d09-614ecce7d7d5', (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f6ca5756-3af5-49cb-9328-6aaa9eef5b22', (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e90514ba-0cc0-4512-a70b-6e0e84bbb614', (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-400i-falcon')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '7c024c37-7695-4403-939f-ed28fa670b02', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7b477557-8846-40e3-b670-3d3601013884', (SELECT id FROM brands WHERE slug = 'honda'), 'Nx400 Falcon', 'honda-nx400-falcon'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nx400-falcon');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2e51fb44-bd68-46a8-bdd6-d2ec6863ddfb', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '82be19d4-9b70-47c6-a290-6cb78ee29295', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fc22fba2-9ced-4705-8a4f-4abf101561e9', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '561d97ad-77f4-4ed3-9b69-e49db1b158e0', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6af61580-d5eb-4b0a-adda-ac6671c7b56a', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ca99aed1-c676-448c-84ff-ef4c10635f92', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '859faf7a-90de-4461-886f-afc2074a070c', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2dfa6e09-c57c-4e96-b054-b75c63f9b997', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a618d39-77e2-48c6-9655-b65e7549ca63', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4700a3f4-b6a8-4acd-a170-c78eecd49f69', (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297380'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297380')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297380')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx400-falcon')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5aae3abe-4566-421b-b648-44292e690d3d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f4759d8a-cc78-4d87-87e9-6834ef7dcddf', (SELECT id FROM brands WHERE slug = 'honda'), 'Lead 110', 'honda-lead-110'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-lead-110');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1ad45897-a127-469a-8e3d-5cedb93765ce', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297290'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297290')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297290')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9278ed09-20a3-4701-ac3e-955922e6acc7', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297290'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297290')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297290')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8006869b-08c3-4b09-b56e-b04b0a6fb70b', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297290'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297290')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297290')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a6a6006d-275a-4ec2-9b7d-17491a55afa4', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297290'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297290')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297290')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '04a7dcc7-d798-462d-86e1-1497e542af5b', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297290'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297290')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297290')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bbf7730d-6ddb-46ed-a570-510c9bb10d47', (SELECT id FROM car_models WHERE slug = 'honda-lead-110'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297290'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297290')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297290')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-lead-110')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b9b2e418-de68-43b1-bfbc-2ace7e3592ac', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a3902763-7fc7-4501-98f7-0bf65cb07074', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 160 Bros', 'honda-nxr-160-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-160-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd82dcb94-c617-4fcc-a4bf-f8082b08019b', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2015, 'ESD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2015 AND version_name = 'ESD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESD FLEXONE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '6145ba2f-f09c-4ff0-8d06-65b5d2227d15', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b0bb53b9-cfbf-4402-8eb2-860fb36a1e36', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 160 Bros', 'honda-nxr-160-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-160-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fca89eb5-8879-430d-b84e-0a3d0478cf29', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2015, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2015 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2015 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cf796519-e073-4f23-84a9-b2ced3d86116', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2016, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2016 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '81165b6c-eaf8-4917-978e-6d30978a1340', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2017, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2017 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'caf00e77-fda1-4d08-af47-d75a6c186eb2', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2018, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2018 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2018 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2018 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2018 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd3f4523c-4bd3-461f-8074-6a8909f250fe', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2019, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2019 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2019 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2019 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2019 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4c69eb80-1925-48c3-94fe-f4946a8419be', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2020, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2020 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2020 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2020 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2020 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dc477abf-829e-4d9e-9469-bfa357539812', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2021, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2021 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2021 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2021 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2021 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f3f16bb3-9011-4c38-8841-fceb657bf062', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2022, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2022 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2022 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2022 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2022 AND version_name = 'ESDD FLEXONE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f8cda51c-ef7f-4749-a240-67124265d377', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2023, 'ESDD FLEXONE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2023 AND version_name = 'ESDD FLEXONE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2023 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2023 AND version_name = 'ESDD FLEXONE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2023 AND version_name = 'ESDD FLEXONE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5f811dc5-f06f-4ef8-9aac-e9983141ab1b', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ba8d6afa-5079-4c1a-afbc-e0063014809b', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 160 Bros', 'honda-nxr-160-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-160-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ab9a9ca4-7819-4071-b5b7-76d7b17b7193', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2016, 'EDD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2016 AND version_name = 'EDD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'EDD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'EDD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2016 AND version_name = 'EDD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd526661a-13e8-4ce4-98f3-9d1cb87836ad', (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros'), 2017, 'EDD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                AND year = 2017 AND version_name = 'EDD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'EDD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'EDD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-160-bros')
                    AND year = 2017 AND version_name = 'EDD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'c6fdaba2-59e9-407a-8565-b976e9c3d522', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '97c657ed-f965-4ffc-8fbb-8ca3af18712a', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160', 'honda-cg-160'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '945f6dd3-4a13-4810-934c-f4a002929a98', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2016, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2016 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'ES FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59e2f857-0bae-44bf-bb6e-09858d7cbb59', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2017, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2017 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'ES FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a6cd5526-5360-49d2-bb81-c08934ea02e6', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2018, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2018 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'ES FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2e9460df-3707-483a-ae55-8d4b12cbfd28', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2019, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2019 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'ES FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ea90d783-5af9-4e89-9488-489b441c4e54', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2020, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2020 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'ES FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9bb2bd31-c6f3-43bc-b4d2-b7c0d942c1da', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2021, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2021 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'ES FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '40105b1f-8ea2-4655-86af-777775f88ae7', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2022, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2022 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'ES FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '806561f6-4f68-4700-aba0-01fac7fb2bd9', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2023, 'ES FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2023 AND version_name = 'ES FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2023 AND version_name = 'ES FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2023 AND version_name = 'ES FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2023 AND version_name = 'ES FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a841c439-77aa-40cf-9f56-a223a18b8a11', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '1c55e9cf-fc7b-4aae-afc8-5a0ff64272e6', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160', 'honda-cg-160'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa5680be-9fe3-4d29-8417-d7218e4dc03b', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2016, 'CARGO FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2016 AND version_name = 'CARGO FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'CARGO FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'CARGO FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'CARGO FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd7459a68-e10d-4273-b7c1-535bdbd0d639', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2017, 'CARGO FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2017 AND version_name = 'CARGO FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'CARGO FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'CARGO FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'CARGO FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bd720ed9-6faa-4a3f-9c17-9a3699be8347', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2018, 'CARGO FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2018 AND version_name = 'CARGO FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'CARGO FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'CARGO FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'CARGO FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f17cf26c-d1c5-4d61-831b-1ac3cc868ead', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2019, 'CARGO FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2019 AND version_name = 'CARGO FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'CARGO FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'CARGO FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'CARGO FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9099c1ff-a219-4532-b2eb-ad5c4bedd1c2', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2020, 'CARGO FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2020 AND version_name = 'CARGO FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'CARGO FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'CARGO FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'CARGO FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1100fcaa-9bcc-4e2a-8f79-1bfdb0f1b9ac', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2021, 'CARGO FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2021 AND version_name = 'CARGO FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'CARGO FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'CARGO FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'CARGO FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de05ff9a-1025-4729-bcca-dfe8aeb83fb6', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2022, 'CARGO FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2022 AND version_name = 'CARGO FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'CARGO FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'CARGO FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'CARGO FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5ead779a-b636-40bf-91f5-aed12dbbf6a4', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7ad0cc40-a70f-4836-a737-021f78367bbe', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160', 'honda-cg-160'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5405916a-6aae-43b9-b617-60fe81e527b8', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2016, 'FAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2016 AND version_name = 'FAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'FAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'FAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'FAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ed88252c-7724-4b3e-aa47-c103425615db', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2017, 'FAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2017 AND version_name = 'FAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'FAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'FAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'FAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd4999ae2-f40a-4640-8630-650a4a54517a', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2018, 'FAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2018 AND version_name = 'FAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'FAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'FAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'FAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fc753512-cb9b-4e60-9ab9-c5b05e164834', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2019, 'FAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2019 AND version_name = 'FAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'FAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'FAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'FAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '51d13557-9ee9-4b0f-a39e-e04bfe3d31f1', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2020, 'FAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2020 AND version_name = 'FAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'FAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'FAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'FAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '72965da8-511b-4084-865e-951ea9988dd0', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2021, 'FAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2021 AND version_name = 'FAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'FAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'FAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'FAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '509a172a-9cf2-408f-aad8-82117cddb1fd', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2022, 'FAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2022 AND version_name = 'FAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'FAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'FAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'FAN ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '743b466a-842e-4078-9ccf-7c1122e4737c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ecb2298d-37e3-40bd-87f2-eb401ccc131b', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 160', 'honda-cg-160'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-160');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '25c4e49b-858b-4574-8a4d-863f7333f60f', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2016, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2016 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2016 AND version_name = 'TITAN EX FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '48e9fb22-9c12-4046-ad2a-ef36f05efcdd', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2017, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2017 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2017 AND version_name = 'TITAN EX FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2055bf5a-4296-4c2c-990d-66f6740f1f77', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2018, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2018 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2018 AND version_name = 'TITAN EX FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e02658d4-2c50-4955-ae45-cfbbd1975775', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2019, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2019 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2019 AND version_name = 'TITAN EX FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5d68bcd7-dd38-4bb8-8d98-262e33716f1a', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2020, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2020 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2020 AND version_name = 'TITAN EX FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59c48979-c814-44b3-ab34-9524759db92f', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2021, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2021 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2021 AND version_name = 'TITAN EX FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8cea57ba-9740-4588-b5cb-ec92e39f1a11', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2022, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2022 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2022 AND version_name = 'TITAN EX FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '368f39ef-356d-4f65-b3c7-f7425ff0ae77', (SELECT id FROM car_models WHERE slug = 'honda-cg-160'), 2023, 'TITAN EX FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                AND year = 2023 AND version_name = 'TITAN EX FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297090'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2023 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297090')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2023 AND version_name = 'TITAN EX FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297090')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-160')
                    AND year = 2023 AND version_name = 'TITAN EX FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4731ffac-4b49-4ed7-9928-e3d2edee9513', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e541cfc8-7898-4f18-9dba-83191adcf721', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Fan', 'honda-cg-150-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ed5c59c-f5c6-49b3-97ed-68ad2e9ccf49', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan'), 2010, 'ESi', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                AND year = 2010 AND version_name = 'ESi'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2010 AND version_name = 'ESi' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2010 AND version_name = 'ESi' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2010 AND version_name = 'ESi');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cc07b8ef-0ae4-4a12-8e36-f6e818c48551', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan'), 2011, 'ESi', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                AND year = 2011 AND version_name = 'ESi'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2011 AND version_name = 'ESi' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2011 AND version_name = 'ESi' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2011 AND version_name = 'ESi');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8fe33774-2917-46c5-b9f7-378305fd080b', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan'), 2012, 'ESi', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                AND year = 2012 AND version_name = 'ESi'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2012 AND version_name = 'ESi' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2012 AND version_name = 'ESi' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2012 AND version_name = 'ESi');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '03c1624a-d8eb-42b1-9cfb-7e1d818311c2', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan'), 2013, 'ESi', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                AND year = 2013 AND version_name = 'ESi'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2013 AND version_name = 'ESi' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2013 AND version_name = 'ESi' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2013 AND version_name = 'ESi');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3d512b32-e86e-4a9c-8e48-20768441fdc4', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '37ca867f-eb2e-4eba-942e-6520d2d2d533', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '12da9f97-acb6-4887-95c6-2cf4b9facdd8', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2009, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2009 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '58d72cad-b984-464d-bdf1-c07f53ad44d7', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2010, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2010 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1b14f83e-aa00-45b3-aa0e-850cf838f39c', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2011, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2011 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f4247064-77f6-4163-b281-0495b7c2a03c', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2012, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2012 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5e1edfb4-f820-4b01-957e-83e91925cef5', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2013, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2013 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '43163f2c-2ade-4c04-a32d-58a8baf13123', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c0c3f5ef-42d6-41e5-a50f-b4a592ce1082', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Fan', 'honda-cg-150-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ae2ae8f1-f427-46f0-8e13-7c2a9bd4ac4a', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan'), 2014, 'ESDi', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                AND year = 2014 AND version_name = 'ESDi'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2014 AND version_name = 'ESDi' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2014 AND version_name = 'ESDi' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2014 AND version_name = 'ESDi');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ea7faabb-3a7a-41fd-bddc-8d536477514d', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan'), 2015, 'ESDi', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                AND year = 2015 AND version_name = 'ESDi'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2015 AND version_name = 'ESDi' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2015 AND version_name = 'ESDi' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2015 AND version_name = 'ESDi');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'e4cdb6f1-5116-4ccc-868e-1b83fd5d1f50', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7464f543-6446-4d3e-b6b0-39437a6beaf6', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e5e19a4c-3bdc-4cc1-b8bb-fdf259e655f9', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2004, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2004 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a6982dd9-20db-420e-9907-3708663fe610', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2005, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2005 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fbf44f45-af07-4495-b715-5c0dd7549257', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2006, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2006 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fd37cd09-a970-478f-80ae-0618eab3d6df', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2007, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2007 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8f686471-8dd2-4c25-b751-e6fc0371d19c', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2008, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2008 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '11903ba1-2583-437f-8547-12e02e81feae', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2009, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2009 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1ed093b7-be93-467b-9035-07fed549b6c0', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4a6ac64b-70ed-46ac-89a4-4479fccd3c75', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2011, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2011 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1b794300-9535-4fd7-a512-00c60e5cddb9', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2012, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2012 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '29da9769-a817-4a7b-9ee8-da3f9b47ed73', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2013, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2013 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9e692262-69ed-43f9-8b8c-941030e01584', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6e953675-6597-489e-9a85-f3cce4dfcae0', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2015, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2015 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '94c51e35-3cff-4792-9074-c6a511ed8048', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e36054f3-ba30-46ac-856e-642aff160672', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9c2d8d00-adcb-4ddd-aab5-69329619f21e', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2004, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2004 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4e0663fa-4b19-45a4-9eba-5e56f80cb0fc', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2005, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2005 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3b45383b-f4f3-40c9-b3d3-d662a8bc9e9b', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2006, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2006 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0bb3a8fe-3eb2-427b-8d16-f8f5caa3bdb1', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2007, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2007 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '737740b0-e118-4331-b1d7-edf3eb79035b', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2008, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2008 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff703676-2527-48e8-adb0-93ab3c2a3fd5', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2009, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2009 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '99064eee-de3f-4a3a-8645-97fd0fd0e731', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8f88fb1b-6e06-4e9d-8b14-bde321c28e44', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2011, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2011 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7b7ef4f9-4e2a-47df-b54e-cfd8dd1fe7dd', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2012, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2012 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'da3fbe3b-2a27-4e2e-b100-20ac3939b640', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2013, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2013 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'da708aac-2e29-4d83-9637-53f9aafdca39', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '02a32ec3-0dab-4653-9778-b4eab630cd02', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2015, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2015 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '70ff6508-ea6d-4bd2-b50f-d00d5d9c3790', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '55198acd-fbaa-49c6-9535-1f6e14c8ad12', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4e7b2f3b-fe15-4841-b051-769e9b6692e6', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN CES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3bbc9506-09bb-4aa3-888e-197d967b6732', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8aa2c327-a15c-4710-ad41-ca0681576b50', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4963a6d6-fc81-4bdc-a579-fdb0f3e78199', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fdd64dee-1bec-4954-86ee-ed618b0ab75e', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2011, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2011 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dcbbdd55-86b4-4bb4-9527-e185243b5196', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2012, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2012 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7f6a7444-7260-42b3-a773-c9b3a2ee1c23', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2013, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2013 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6400e711-41d6-4fcf-98dc-6d0a39f7b980', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'be885cfc-9cb1-4132-bc3b-a1aada0f6d3c', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2015, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2015 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN EX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a18190a0-1171-4576-ba04-d4b39f6f7135', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f9768b83-787f-41a6-b6ce-ef52e7f2e64c', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dc6a0716-6be2-4385-9305-3dddf7f2034e', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2009, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2009 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '18ee45dc-c9a4-48a6-a485-1788fa729a48', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2010, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2010 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '128e4be7-2a4d-4b2e-af56-240dbfd5bfc1', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2011, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2011 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b60c6959-16eb-4282-a5c9-26a88a816bff', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2012, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2012 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cea6984d-9dfe-4fd3-82ee-12dfc4e4349a', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c6fa4f98-ee3c-4fa6-9c48-b85b234d9f8d', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4aff56f0-8e1a-4887-a956-bab330dccb76', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'cbef52a7-d525-4252-b46b-0a76f0c77666', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c8d44e23-99ae-4aa3-a910-63040a80fa1a', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2004, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2004 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b5006411-c8e5-4f76-9865-6677a16cb346', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2005, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2005 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '012a5279-e3ca-4067-bfc2-d39e77a4ab7e', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2006, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2006 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f5fd3bd9-56b5-4641-a740-0f14494b726f', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2007, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2007 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e0e91ce4-21af-44ae-8831-c8c414cce47f', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2008, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2008 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '72dd0c77-ce17-4848-8089-4ed7f43050cb', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2009, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2009 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7f888ba7-7958-4c24-82c7-f3faf6a65d35', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4e646fa8-c58d-43d3-b7c9-ea475cadb722', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9920fa05-91d0-46e5-8cd5-93750ced6bd2', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8871b7fe-72a6-4b1c-8ba8-d82f774050d9', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2009, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2009 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '11a0d2e0-2961-4af8-b970-84c1844c9888', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2010, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2010 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ccb2abe7-0911-49ce-84b0-75234e2c5d83', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2011, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2011 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '619bbeb6-3db7-4366-bc30-846f1292f140', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2012, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2012 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4e73388e-cc04-495c-8576-e3221f7f8cab', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2013, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2013 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8f03fa9a-af80-47aa-ad21-fbe09ca4742c', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2014, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2014 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '635a1dc7-2b4b-4ed5-95ea-9863f91df33c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f45ba9d5-ed80-4a86-9662-c88b6c7f6ef9', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Job', 'honda-cg-150-job'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-job');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '868586be-3835-4f63-980b-c393296723f3', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5c0b1427-5cff-44cc-b744-81002955fda5', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '94536594-3a3b-4845-9792-55e1d092ec46', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '018b55b7-7ce6-49b8-9f18-cad3686d7d94', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1e7641dc-2086-4952-9cd5-d49e0beab4e2', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ea7b054a-0710-47bd-b885-77a91bc85eef', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'cd186eeb-6ee3-4e2f-af42-96717fcd9d47', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Sport', 'honda-cg-150-sport'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-sport');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6f72ffbe-e0a9-4ee4-8292-b8029af330d8', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2138f339-b83b-4243-815e-7ea032ce526c', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0dbd722f-545d-41d7-b932-86466fbf9633', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '34427370-87e9-4448-8921-ef6298b45097', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297300'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297300')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297300')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b1ffd3c6-19a5-4f15-b057-c9e820c7777d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '58a98c75-7939-40f0-99b8-5e73b8eae7af', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '730d163b-489b-4613-8a8d-cf73f26ea7cb', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2000, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2000 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1cba016c-ac7c-4690-9a4b-ba5df51f4934', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2001, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2001 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '98fa4745-0b8b-4909-84e3-1ce6cb8dba3e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5a94c551-119f-462e-9ac6-0dfe88aebe5d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8f0a1593-6fda-4f9c-ad0a-c5190212c45f', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Today', 'honda-cg-125-today'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-today');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bf2d1f3b-d7f4-44d8-898d-b02a4b949751', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today'), 1992, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                AND year = 1992 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1992 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa0f7d5f-1546-4f69-b040-34f421b46ff1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today'), 1993, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                AND year = 1993 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1993 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '54b7a2c0-27a3-426c-bacc-5a64a8f8e305', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0ccbaca0-9da7-4b5f-8421-9b24e343b00d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'bc0bbff5-b0ba-478b-ab8c-cec5b863a4d8', (SELECT id FROM brands WHERE slug = 'honda'), 'Xlr 125', 'honda-xlr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xlr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c8af48c5-a258-4e63-97f0-358e46b0eb60', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c8c4684b-4e8c-4f1c-9f79-7ae56d433bb0', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0c3d5f5c-7f1e-483b-9659-014dad0e705c', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f12e1bd4-ae67-4957-9d4d-80972853e76f', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '65bd9f9b-e3fc-442a-9380-1dec8815ed0f', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fafeb87a-ec6a-4d01-a672-0783c7805e11', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2002 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '48e5f383-659a-4dd8-9603-88a345590963', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'cf6450a5-6baa-4713-835d-0f888370c349', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo', 'honda-cg-125-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'df4094ad-7235-4345-9444-262f242d4b34', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1992, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1992 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1992 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e683f423-5031-49df-ac88-6ae24130db0f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1993, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1993 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1993 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '83e7862a-33ee-4628-bc02-6aed52498f13', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1994 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '87e0d8cc-c7b5-47c1-b5be-a41ff34396fd', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1995, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1995 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1995 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1b5fe7b4-77a6-4d75-a63d-6b9d9681ffd0', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1996, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1996 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1996 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e20474b3-bcba-4244-a6e1-1ebde01b181c', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8ea74f72-17fd-4d51-bd01-3e7a91ba4661', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '33981633-943b-4bc3-b060-d0749b4c10ee', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '80bad6dc-8e61-48ea-889b-7efb2bbea656', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8e3186a-e681-463f-a95a-02eec7ae0b37', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de454c87-0001-4154-99ff-9b02e68073eb', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '07825f95-118f-48d2-b86c-02cc2744f685', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '02235878-8423-4d75-a76c-12a1490e153f', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eff32ba2-a4b1-4b4c-aad9-b2ee14ecbcf9', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2000, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2000 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '204b8925-8884-4a5e-a4ae-4178934a32b9', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2001, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2001 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '76b76bcb-e5dc-4748-9487-dcc50fbf5c95', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297070'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297070')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297070')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'e2b160d2-3342-4552-ae22-ac08a1871938', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '34f768c3-e586-4595-b51f-39c2121fa4f5', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c982a442-14e3-440a-a0d9-46dd9a9e8fdd', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b627e9f8-c17c-4d39-8a9c-3d280e1f2343', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2003, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2003 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5a8eb673-8818-4c59-9419-1ba925649f3e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2004, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2004 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3726aafd-69e5-488b-a2dc-ff386e541c50', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '68918dc8-9e08-457e-94ee-a4789988972b', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '87d2e89e-0e7f-4526-a30c-7326d6435062', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN KSE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN KSE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KSE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KSE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KSE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4eef286f-87ee-4946-84f8-e38646b9b6a8', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2003, 'TITAN KSE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2003 AND version_name = 'TITAN KSE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KSE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KSE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KSE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9377f148-a5a7-4fa8-b91c-dadd54b6ea36', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2004, 'TITAN KSE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2004 AND version_name = 'TITAN KSE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KSE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KSE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KSE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '589b3f44-91b7-47f0-8000-d40fd93051e1', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'acfd9b37-1b74-4700-9316-bae46e643430', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bffa3ea4-7dc1-4b1b-b7f4-77a9f5507705', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f3c67ad3-507c-42e7-a551-ab024d417886', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4d3f5170-f03b-4e63-9ce7-3398b1d25603', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '14ada7fa-4267-41e7-8231-38092d559c5f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ac6784b6-f60d-4fda-9e6f-4400fd6f9fa6', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'fbf457dc-da6e-4034-a63a-383c8d17ceaf', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo', 'honda-cg-125-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c578a40c-7782-45cb-b659-a9d6aed5ba59', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ed61e952-0039-462a-8bfe-26d2735e42b1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c38e154f-05cc-4b43-a97f-ecf73387a1b3', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5c8f0902-c7c4-4b37-a882-5a011f66eede', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '19292687-4b4b-4914-a3ed-c5bb52501344', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd239b8b4-e505-4fa9-b42f-67b67e870579', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '57cd5469-0cd3-4794-a44d-57ee9340f215', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2003, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2003 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '00cf51fe-7f94-4056-8277-2956d22dcb3d', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2004, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2004 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9cdaa198-37ec-44fe-9772-ae4e6df7c6a1', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '58d91185-e5ff-453d-865e-9cea9fb6987e', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f8f48c50-928e-4262-a414-f7e02f2ddd8b', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c9f44af4-3ea6-4da2-9ea5-b062398484c1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0490302b-c03b-472c-932a-892c951bf640', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6e12b594-c337-43d4-a239-b3c43aa642bf', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7c76a971-d3cf-4595-8177-777e89513a79', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '438bbdef-eb61-432c-aa96-b9d7817dacfb', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fae11962-09c5-40ce-a0a6-75563f5c46df', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2a44fb92-39d9-4b3f-bef4-cb42ddc8daec', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2016, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2016 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'CKS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9bd65212-d8f0-474a-80c8-cb16a3911fb1', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e4849f25-5fae-4b11-bc02-92918d2b17c6', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 125 Bros', 'honda-nxr-125-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-125-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dffa8f99-e05c-4666-83e6-2640d08dd9d0', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2013, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2013 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '60ab4f37-e7fd-4339-bbe5-f4c5989310dd', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2014, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2014 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fc0ceeb9-b975-47e1-9b75-5d5e04ee16d3', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2015, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2015 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'e8267479-23f8-4d34-95a8-4dddfb013663', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3b0b774b-2bee-4576-8f9b-a6a70d580905', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16e806bd-d160-40e3-b66d-83c0d04874f5', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7df97568-99c9-4881-9b53-c27622efee12', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f366c3ba-a106-47cf-98a8-c86b2f27d2a9', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '41ee2ea2-ce73-443d-a8a5-5131f998e7ec', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2c3b6d07-1fb8-426a-b90d-b9da92e5e8d8', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de58bbb9-1470-44d5-bb78-1eedbdbc6f94', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '89cc159a-d1a8-4b33-b2cf-b12067e27279', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'c776954d-00a4-4f39-9208-c6fcca77778c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '6cc41ec0-94d5-4067-a890-1338ec828604', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff404526-c83d-4d31-9c0d-b464fa366d29', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3eac5ae5-5f34-48df-82d5-15c169a3505a', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3882f78c-ffab-4436-914e-6c50fd5a5d1d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e2073553-6365-4f65-a63d-1d9518d88183', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c4b73423-2146-44ea-85a9-a379989b536b', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4641b55b-4917-4180-8bc8-8e2b57502e83', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dcf703b6-5c6d-401c-b6a1-10ec36f7dc58', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de5e4c2b-549e-4e4d-8a34-aa35f4dbf9a0', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0e176d39-252f-47e7-9767-4fd8ecd581c7', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '992f1e9b-2138-46b7-a823-c9b3ef250520', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'dcdedb32-faf1-43dd-9a73-d6f3a3f76b0f', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        