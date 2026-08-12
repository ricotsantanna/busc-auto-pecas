
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = 'Today' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = 'Today' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = 'Today');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '93f39e13-4ed3-4b94-be5a-45d21b9bdfec', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today'), 1995, 'Today', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                AND year = 1995 AND version_name = 'Today'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1995 AND version_name = 'Today' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1995 AND version_name = 'Today' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1995 AND version_name = 'Today');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ae86317f-3575-49b0-a7e8-7d09a64a3bef', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3a56a556-dd86-44a7-921b-f99afdb7d4da', (SELECT id FROM brands WHERE slug = 'honda'), 'Nx 200', 'honda-nx-200'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nx-200');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '76349acf-8d63-449a-a545-37ae74db9a97', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1993, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1993 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1993 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f7d18e39-612c-4b2d-a1b3-61685c696d23', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1994 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '42ea08f4-381d-474b-912b-55b19149a6bd', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1995, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1995 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1995 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b3607d62-2ecf-47d6-b5ec-b4b8c7c6d0b8', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1996, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1996 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1996 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '71f8145f-2d1a-440b-a2f1-21d39850994a', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8a682db-d72c-4982-a971-f0fcacd43ac7', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02023')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02023')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1998 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd0ae2547-61b6-409f-9404-e0d37f4c31d9', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '2366a90e-ff5b-4b73-8c3d-bef8e0c19526', (SELECT id FROM brands WHERE slug = 'honda'), 'Cbx 250 Twister', 'honda-cbx-250-twister'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cbx-250-twister');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9f473d09-cec8-4666-8f6f-557643fdf893', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2001, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2001 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = 'Twister');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '222e326c-b9d0-41df-b848-c23e3a1b002a', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2002, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2002 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = 'Twister');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd19e770a-2404-4c5e-bb45-1c38d18541ff', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2003, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2003 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = 'Twister');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8f9f9f87-cd28-4c78-bf75-28951214918d', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2004, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2004 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = 'Twister');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '62334631-915e-466c-87a6-c875454d3303', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2005, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2005 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = 'Twister');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bc3f149d-40ff-4091-8a0e-751e3b9db31b', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2006, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2006 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = 'Twister');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ebfe876a-4d31-4d0a-a0d1-0326c0d255c3', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2007, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2007 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = 'Twister');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fae8386d-96fd-44a7-b316-2708dff28496', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2008, 'Twister', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2008 AND version_name = 'Twister'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = 'Twister' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = 'Twister' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = 'Twister');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd30ca7ab-2571-4a05-9858-c3665e8df86d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '664760d8-3ee2-4b03-afb9-158fc7d90249', (SELECT id FROM brands WHERE slug = 'honda'), 'Xr 250 Tornado', 'honda-xr-250-tornado'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xr-250-tornado');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5dae38d9-4f99-4533-aa99-439c502d2a0e', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2001, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2001 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '531fe089-0689-4a3b-affe-58776b9ef22b', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2002, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2002 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7472d338-e921-4c62-a558-83a844923874', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2003, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2003 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c46cde40-2bbf-4380-9a3c-3bd73e9bc84b', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2004, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2004 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1d419dfc-cb90-4e59-bf63-70c884f7a162', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2005, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2005 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7feb0445-68a4-43ff-883f-ab100638b479', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2006, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2006 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3f4f323b-8f93-4d16-8387-474cead59cbd', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2007, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2007 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b3a2cdf5-2178-4de6-b1d7-89f185be67b4', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2008, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2008 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = 'Tornado');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '38b48b10-c332-4d67-b3d5-331422922e96', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2009, 'Tornado', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2009 AND version_name = 'Tornado'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2009 AND version_name = 'Tornado' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02080')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2009 AND version_name = 'Tornado' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02080')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2009 AND version_name = 'Tornado');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '584c472a-5739-451f-9cda-39cd1b0c7108', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '0945b39e-cb81-450e-8c6c-e9987a1f4198', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo', 'honda-cg-125-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '62e521aa-b36c-442e-b56e-793978ee29f4', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2002, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2002 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59195ad5-1a77-4cc5-91c9-e3fb17322946', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2003, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2003 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '97a18c61-5e9e-4ed8-af9f-796994a91039', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2004, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2004 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd31843c5-2f90-407f-a628-5f1f86388ad1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2005, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2005 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2005 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2005 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2005 AND version_name = 'Cargo');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5685f160-db33-4fbf-af1e-dd0df23ae308', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '15947a41-b000-416e-bcff-5b21c805acf3', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd90029cc-d4e5-455e-8f00-1c413041b972', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2005, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2005 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '15f7b121-b2e2-468f-8405-4a1224eb020d', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2006, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2006 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '27710c4b-1d54-403d-8da9-0232cfc3b4b8', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2007, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2007 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = 'Fan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9f9a8c40-0585-4d16-8284-be87e7ca94fa', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2008, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2008 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = 'Fan');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '661a3ce2-9557-41fc-8155-216fa33918be', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '961268b2-0a81-426b-836d-3d90a3982d6e', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Titan', 'honda-cg-125-titan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-titan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8e5b8fff-af06-465f-b12f-f6cda6394c5f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan'), 2002, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                AND year = 2002 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2002 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2002 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2002 AND version_name = 'Titan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd80709a2-7c20-4c7d-9bd2-7a341ab6006c', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan'), 2003, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                AND year = 2003 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2003 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2003 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2003 AND version_name = 'Titan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e46b930e-635a-4bfb-a14d-3492c3092491', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan'), 2004, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                AND year = 2004 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2004 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2004 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-titan')
                    AND year = 2004 AND version_name = 'Titan');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1a3667d4-4a68-4177-9d90-c17f361a3fae', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'caca55be-e199-487c-b7d8-36f22f75a52b', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 125 Bros Es', 'honda-nxr-125-bros-es'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-125-bros-es');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5fd2e12f-0500-4c72-8ed6-05b2f89b8178', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es'), 2003, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                AND year = 2003 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2003 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2003 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2003 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '863a1d7e-b008-48fe-be36-84030598bb92', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es'), 2004, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                AND year = 2004 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2004 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2004 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2004 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '10cb621f-3a29-45b3-bf60-87ec7920d457', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es'), 2005, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                AND year = 2005 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2005 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2005 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-es')
                    AND year = 2005 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b187dd37-2c57-4493-8405-8ccca331c090', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a1a8f417-f187-4ac8-ad00-a5a2b89d7332', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 125 Bros Ks', 'honda-nxr-125-bros-ks'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-125-bros-ks');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de843850-acd6-4317-8d7e-186170ee85fa', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks'), 2003, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                AND year = 2003 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2003 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2003 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2003 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cb44f015-083b-4495-a89e-9e956af1f30f', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks'), 2004, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                AND year = 2004 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2004 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2004 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2004 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '175f2b25-7106-4470-8645-49ee8103d6ec', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks'), 2005, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                AND year = 2005 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2005 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02170')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2005 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02170')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros-ks')
                    AND year = 2005 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'cb54cc69-8e1a-430f-86f9-0ba38678246f', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '0b5dbf63-41d0-4b7f-8a3f-5e9629a79f9b', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Cargo', 'honda-cg-150-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f6f4b8dd-ec10-4868-9758-6c91c153b2ae', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo'), 2014, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                AND year = 2014 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2014 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2014 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2014 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5a46a994-59c4-432d-93e5-2798a0be8153', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo'), 2015, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                AND year = 2015 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2015 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2015 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2015 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '46110b02-253e-4f2b-9545-5d64e318f770', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo'), 2016, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                AND year = 2016 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2016 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2016 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-cargo')
                    AND year = 2016 AND version_name = 'Cargo');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '8f46d505-4357-4681-829e-6a5a5964f5c0', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b5d92836-bee5-4988-b32e-73f876eef73b', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Fan Flex', 'honda-cg-150-fan-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-fan-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '92b12644-9638-42ec-b6bd-2facf17834da', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex'), 2010, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                AND year = 2010 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2010 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2010 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2010 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b2cc3ede-93f9-478c-99f4-55874d5a794c', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex'), 2011, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                AND year = 2011 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2011 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2011 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2011 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '87a00384-f616-48b5-97db-b829bc1caa70', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex'), 2012, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                AND year = 2012 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2012 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2012 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2012 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2b3b8adf-5486-4e0d-a1c0-4becf0e48767', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex'), 2013, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                AND year = 2013 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2013 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2013 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b3c5d9d6-cf1f-48f1-b318-c3f5e4bcbd95', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex'), 2014, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                AND year = 2014 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2014 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2014 AND version_name = 'Flex');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '236940e9-1e0e-48f4-be3e-cdf76e46b60f', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex'), 2015, 'Flex', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                AND year = 2015 AND version_name = 'Flex'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2015 AND version_name = 'Flex' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan-flex')
                    AND year = 2015 AND version_name = 'Flex');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a95d1e50-0ceb-44a2-92e9-40efdf626cc9', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ee22867e-68ee-4990-a0c1-077a4d78234e', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Job', 'honda-cg-150-job'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-job');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2c34f70a-f940-4c85-97e1-353620326c66', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2004, 'Job', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2004 AND version_name = 'Job'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = 'Job' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = 'Job' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = 'Job');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '81790eaa-e22e-4924-a4a3-1ae167d28626', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2005, 'Job', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2005 AND version_name = 'Job'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = 'Job' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = 'Job' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = 'Job');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '18b170a6-b594-47fe-a526-de94181ee07c', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2006, 'Job', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2006 AND version_name = 'Job'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = 'Job' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = 'Job' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = 'Job');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ec9fddf-d5b3-4e22-9aac-08004492cebf', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2007, 'Job', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2007 AND version_name = 'Job'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = 'Job' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = 'Job' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = 'Job');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1f3041f1-6f8b-46c9-8572-69fb1194ec35', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2008, 'Job', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2008 AND version_name = 'Job'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = 'Job' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = 'Job' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = 'Job');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9525dd19-2dba-4fbb-90bc-32d0e12b810b', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2009, 'Job', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2009 AND version_name = 'Job'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2009 AND version_name = 'Job' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2009 AND version_name = 'Job' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2009 AND version_name = 'Job');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '6fdcdc49-caaf-4713-b336-d368cbc1786e', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '93806311-235d-43ba-a340-2479e50cedad', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Sport', 'honda-cg-150-sport'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-sport');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '04461393-13a9-483b-911b-f59a0c6ceaa1', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2005, 'Sport', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2005 AND version_name = 'Sport'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = 'Sport' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = 'Sport' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = 'Sport');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b7eb304d-0186-46a7-8b8a-771bf570120c', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2006, 'Sport', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2006 AND version_name = 'Sport'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = 'Sport' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = 'Sport' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = 'Sport');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7873daf9-48f2-4505-bdc7-0e9e535849be', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2007, 'Sport', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2007 AND version_name = 'Sport'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = 'Sport' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = 'Sport' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = 'Sport');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a98abad3-dd97-4b6d-94c5-06d45e48f8a8', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2008, 'Sport', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2008 AND version_name = 'Sport'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = 'Sport' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = 'Sport' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = 'Sport');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '01c31746-11a5-4fbc-bb84-46988b8f2ec3', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2009, 'Sport', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2009 AND version_name = 'Sport'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2009 AND version_name = 'Sport' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2009 AND version_name = 'Sport' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2009 AND version_name = 'Sport');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2dbbf12c-2939-4651-86b2-371add8fdb9a', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b01d54d6-3e76-4b16-806b-095e39714b5a', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Start', 'honda-cg-150-start'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-start');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '18300887-5587-4163-8ba5-1a6c663c1f74', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2015, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2015 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2015 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2015 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2015 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6d31800a-fd76-4a1e-a44c-201d9b61edd8', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2016, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2016 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2016 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2016 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2016 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e36868a8-689d-455a-915a-e0d65554846a', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2017, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2017 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2017 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2017 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2017 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eb368076-f538-4bab-9f42-9e7c85224990', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2018, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2018 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2018 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2018 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2018 AND version_name = 'Start');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4c7e1ba7-efea-4aa8-981b-1852244a7cad', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '5dbc6674-d018-4062-bfdf-698582419a4c', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Start', 'honda-cg-150-start'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-start');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '64e0e6bc-9145-475c-bb6f-97d8fea7756e', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2019, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2019 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2019 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2019 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2019 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9ee53e0f-844a-4386-b2c9-5489c6c3aaca', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2020, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2020 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2020 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2020 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2020 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '215e9fe8-0c36-4213-ab86-72a994949d5c', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2021, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2021 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2021 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2021 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2021 AND version_name = 'Start');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a6910e88-10c7-4b52-8089-587c8f437b92', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start'), 2022, 'Start', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                AND year = 2022 AND version_name = 'Start'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2022 AND version_name = 'Start' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2022 AND version_name = 'Start' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-start')
                    AND year = 2022 AND version_name = 'Start');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'e732abd1-93ef-4fb7-a867-e11b96dd687d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7a294915-93d1-4856-aa07-24d6aa0b32b1', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Titan', 'honda-cg-150-titan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-titan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '63300df6-c8d9-4243-ad88-94aa901dada1', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan'), 2004, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                AND year = 2004 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2004 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2004 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2004 AND version_name = 'Titan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2748b520-f197-4569-a868-674b52979f28', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan'), 2005, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                AND year = 2005 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2005 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2005 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2005 AND version_name = 'Titan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '63d4d0e6-d344-48e4-a326-cdee004b8514', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan'), 2006, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                AND year = 2006 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2006 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2006 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2006 AND version_name = 'Titan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7b76337b-593b-49eb-844b-276dc869e2d7', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan'), 2007, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                AND year = 2007 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2007 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2007 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2007 AND version_name = 'Titan');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1f3cb5d8-227e-48ff-a2cd-339b0520eadf', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan'), 2008, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                AND year = 2008 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2008 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2008 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2008 AND version_name = 'Titan');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '165add02-4912-415e-a7f6-36ed1ee0226a', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '47af75ba-738a-4cf9-ae90-fe0aa8ccd396', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Titan', 'honda-cg-150-titan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-titan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd5e36fb0-a94f-48dc-b0ed-a5e3e59a75e6', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan'), 2009, 'Titan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                AND year = 2009 AND version_name = 'Titan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2009 AND version_name = 'Titan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2009 AND version_name = 'Titan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan')
                    AND year = 2009 AND version_name = 'Titan');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '012fea70-2f8f-42a8-ac60-6f76ea3ebfca', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '98762f99-ed13-42f6-a89d-92dc36b86160', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '10c24647-e3a7-4130-ab77-2dca5978303e', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'efe69090-61ed-4a1a-841a-8558621e0e61', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f40ba126-eda7-402a-ac04-7b9093664e34', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Fan', 'honda-cg-150-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fd5254c0-62b1-40f6-9d14-c20391eac27a', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan'), 2009, 'Fan', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                AND year = 2009 AND version_name = 'Fan'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2009 AND version_name = 'Fan' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2009 AND version_name = 'Fan' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-fan')
                    AND year = 2009 AND version_name = 'Fan');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0d483a4e-ff83-4b63-9b79-d67e063bcf5d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f4944bb0-98d7-431f-89ed-a172ec0da0bd', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Titan Flex Esd/Ex', 'honda-cg-150-titan-flex-esdex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8cf73e96-7f6a-4f5a-8833-0266f57267c1', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex'), 2013, 'Flex ESD/EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                AND year = 2013 AND version_name = 'Flex ESD/EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2013 AND version_name = 'Flex ESD/EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2013 AND version_name = 'Flex ESD/EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2013 AND version_name = 'Flex ESD/EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '44b43641-923d-48ca-9279-6b1bdac37273', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex'), 2014, 'Flex ESD/EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                AND year = 2014 AND version_name = 'Flex ESD/EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2014 AND version_name = 'Flex ESD/EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2014 AND version_name = 'Flex ESD/EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2014 AND version_name = 'Flex ESD/EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '90a59e06-bfb7-4b37-9baf-93b46022cf3b', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex'), 2015, 'Flex ESD/EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                AND year = 2015 AND version_name = 'Flex ESD/EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2015 AND version_name = 'Flex ESD/EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2015 AND version_name = 'Flex ESD/EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2015 AND version_name = 'Flex ESD/EX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1e29f705-7a0e-435b-a6a9-eaca99b10792', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '62dcb398-33ae-49b7-9cd6-92d6388b11e6', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Titan Flex Esd/Ex', 'honda-cg-150-titan-flex-esdex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e4cde0f6-1a42-4887-b9e9-526b50cd1cb5', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex'), 2016, 'Flex ESD/EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                AND year = 2016 AND version_name = 'Flex ESD/EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2016 AND version_name = 'Flex ESD/EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2016 AND version_name = 'Flex ESD/EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-flex-esdex')
                    AND year = 2016 AND version_name = 'Flex ESD/EX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'dfe5d203-063b-4f7c-8c7a-3651f722073d', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e0c59c4b-8893-4083-895d-9bd170e5ec92', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Titan Mix', 'honda-cg-150-titan-mix'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-titan-mix');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '32edd364-30d0-48a3-b115-c4a7bbae21d4', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix'), 2009, 'Mix', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                AND year = 2009 AND version_name = 'Mix'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2009 AND version_name = 'Mix' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2009 AND version_name = 'Mix' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2009 AND version_name = 'Mix');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fad1869e-cc05-4966-8a1f-880e2f1983c2', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix'), 2010, 'Mix', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                AND year = 2010 AND version_name = 'Mix'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2010 AND version_name = 'Mix' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2010 AND version_name = 'Mix' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2010 AND version_name = 'Mix');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '355e1709-2167-4854-99b8-b4a0495f3bd6', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix'), 2011, 'Mix', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                AND year = 2011 AND version_name = 'Mix'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2011 AND version_name = 'Mix' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2011 AND version_name = 'Mix' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2011 AND version_name = 'Mix');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '39a6d0c5-1183-4dc6-a475-8018368cf0c4', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'fe0b92c4-6581-4c16-947e-b13d082348f5', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Titan Mix', 'honda-cg-150-titan-mix'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-titan-mix');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fdbe3a2d-dc89-4f74-950e-39006964dc15', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix'), 2012, 'Mix', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                AND year = 2012 AND version_name = 'Mix'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2012 AND version_name = 'Mix' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2012 AND version_name = 'Mix' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2012 AND version_name = 'Mix');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8ee1255b-0213-41c8-9a2d-6e0471de8750', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix'), 2013, 'Mix', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                AND year = 2013 AND version_name = 'Mix'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2013 AND version_name = 'Mix' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2013 AND version_name = 'Mix' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-titan-mix')
                    AND year = 2013 AND version_name = 'Mix');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a96b53d5-af21-487a-8925-17a2b1ad80cf', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '6f838b60-d7fc-45d1-9d36-ab61ae168e62', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '91af45af-1d4d-4516-8ed3-6d0d399ad95b', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cc86e315-1f74-4cb0-bf48-cf7bab18c73d', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e2efc4a7-0c80-4406-bd16-2b6f957b8e99', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02171')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02171')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '688295d9-821d-401d-81ab-3bcf6e82e5bd', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '051a191c-ebc2-43b8-91b3-b31b66ea8fa3', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 100', 'honda-biz-100'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-100');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '175cb790-0fae-4223-b431-013884766b49', (SELECT id FROM car_models WHERE slug = 'honda-biz-100'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2012 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '83f17f0c-dc9a-4e71-a96b-864d9af42711', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '54127dcf-4257-4682-92d4-afcd55ffa097', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 100 Es', 'honda-biz-100-es'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-100-es');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0376d5f1-fc06-498d-aed1-0a7f21f5c06a', (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '74ad0ba6-0de5-45ec-b577-d9f82b9fb7f2', (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100-es')
                    AND year = 2014 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'fd1db8ef-cae8-4d97-a0ad-4ffb358ee3d6', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '42bf94f4-68cc-4071-9a0f-35c07edcca1e', (SELECT id FROM brands WHERE slug = 'honda'), 'C 100 Dream', 'honda-c-100-dream'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-c-100-dream');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '60b1b3e8-c804-41c6-86d1-09b9b07a512f', (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream'), 1992, 'Dream', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                AND year = 1992 AND version_name = 'Dream'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1992 AND version_name = 'Dream' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1992 AND version_name = 'Dream' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1992 AND version_name = 'Dream');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0f0b0012-9d17-4cdd-8c84-e78ec8e2f84a', (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream'), 1993, 'Dream', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                AND year = 1993 AND version_name = 'Dream'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1993 AND version_name = 'Dream' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1993 AND version_name = 'Dream' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1993 AND version_name = 'Dream');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b59175c7-6fcd-4d60-8c55-2bdb1dcfd2b3', (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream'), 1994, 'Dream', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                AND year = 1994 AND version_name = 'Dream'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1994 AND version_name = 'Dream' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1994 AND version_name = 'Dream' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1994 AND version_name = 'Dream');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f03d3c75-74b4-431d-8d2e-5fe1734a8983', (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream'), 1995, 'Dream', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                AND year = 1995 AND version_name = 'Dream'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1995 AND version_name = 'Dream' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1995 AND version_name = 'Dream' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1995 AND version_name = 'Dream');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6dedffa6-9ce3-45a9-81f7-a9f94ccf53f6', (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream'), 1996, 'Dream', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                AND year = 1996 AND version_name = 'Dream'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1996 AND version_name = 'Dream' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1996 AND version_name = 'Dream' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1996 AND version_name = 'Dream');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5f92febb-7a42-4c7c-b20e-09637023fd4f', (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream'), 1997, 'Dream', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                AND year = 1997 AND version_name = 'Dream'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1997 AND version_name = 'Dream' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1997 AND version_name = 'Dream' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1997 AND version_name = 'Dream');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1334e8e8-06f4-47cf-a007-3e62be33d814', (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream'), 1998, 'Dream', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                AND year = 1998 AND version_name = 'Dream'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1998 AND version_name = 'Dream' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1998 AND version_name = 'Dream' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-dream')
                    AND year = 1998 AND version_name = 'Dream');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '262d0825-c79d-4086-8ff4-e0c469bd0892', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a3b7347f-d70a-4c03-8732-449cd13b35e5', (SELECT id FROM brands WHERE slug = 'honda'), 'C 100 Biz', 'honda-c-100-biz'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-c-100-biz');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ccd85984-6946-4f95-b37b-7ab57dbd1f36', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 1998, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 1998 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '304279cf-9086-42f9-811c-d50c7e35c1fa', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 1999, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 1999 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dd7185c8-6a12-451b-bb5a-9428cd301dc5', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2000, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2000 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6bdfb1e5-4fda-4686-9895-767173c60c7e', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2001, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2001 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8ed2e7f0-501d-406b-b369-3e2d79dd03c0', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2002, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2002 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4c113b51-4824-445a-89f1-d4eebc728e4f', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2003, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2003 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '106c3d61-1f5b-450a-a104-659802fa41b1', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2004, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2004 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e8e149a7-98d6-4ac3-9a35-7b6d774c64ff', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2005, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2005 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = 'Biz');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '15344036-3db5-4a8b-8c84-cf428fa8c4a4', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2006, 'Biz', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2006 AND version_name = 'Biz'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2006 AND version_name = 'Biz' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2006 AND version_name = 'Biz' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2006 AND version_name = 'Biz');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a775933e-2d0e-4f47-a056-20e7bcde998a', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd2f95114-16a4-43cb-a752-ef7f62866867', (SELECT id FROM brands WHERE slug = 'honda'), 'C 100 Biz Ks', 'honda-c-100-biz-ks'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-c-100-biz-ks');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '488e7bcd-f643-4a77-8478-a614d96079f8', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks'), 2014, 'Biz KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                AND year = 2014 AND version_name = 'Biz KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                    AND year = 2014 AND version_name = 'Biz KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                    AND year = 2014 AND version_name = 'Biz KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                    AND year = 2014 AND version_name = 'Biz KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4c878374-d7cb-421b-801c-886ede4a329e', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks'), 2015, 'Biz KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                AND year = 2015 AND version_name = 'Biz KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                    AND year = 2015 AND version_name = 'Biz KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                    AND year = 2015 AND version_name = 'Biz KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz-ks')
                    AND year = 2015 AND version_name = 'Biz KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '653d2594-f69e-48e5-8491-cfb7e5480438', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f6a5f012-de1a-407c-95c8-bfe1ce33f4f6', (SELECT id FROM brands WHERE slug = 'honda'), 'Pop 100', 'honda-pop-100'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pop-100');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a43cd498-6d93-4139-9bff-bf6d5e604016', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '96c7c4be-2bd2-4f00-a68a-d9f834608643', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3606c016-9a35-4645-ba0f-99391f018c3b', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '91d47478-f5aa-464c-a33b-d1a646604941', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '88e4a420-89e5-4bf5-93ca-6f8d9692c439', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2c7c6a8a-32ba-4250-82ef-8a6ed78f5bee', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e5b2ae49-dd1a-4e08-b944-0a0aacb19cbf', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9de78c7c-7f5c-472b-883b-c93fb12cdfc5', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2cb7913c-24d0-4820-add3-56857fcc0544', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cd58c2ea-6fc0-4e6b-8122-0ec1f6dc385a', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b6484542-c2a3-4252-b286-766252be81f4', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd58bafad-cf95-4609-bb8b-d954be6cec94', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7aa4f9b4-c787-40e2-ad11-a8b57e0c6ea2', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3604e9ce-1d41-4467-8645-ff3440723974', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eb7a9a08-48c7-4ec6-a42d-9939e5df7a59', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f89aec3a-469e-4d11-b950-b2755af91ca9', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02201')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02201')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b1f98376-1a5c-4a57-bcca-fd675cb059fa', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '235659fa-4f8f-4cec-a2ad-916034ea10ad', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo', 'honda-cg-125-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ac1a9d6-80c3-4327-9f43-4397f171c435', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2009, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2009 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2009 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2009 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2009 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '67337e1a-9cf4-480a-9d53-11043f3c9676', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2010, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2010 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2010 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2010 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2010 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '40a1fdf1-a585-4725-8a42-ffff03eab634', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2011, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2011 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2011 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2011 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2011 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8fa58880-07a9-4e72-b5cb-557ec9f19eac', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2012, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2012 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2012 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2012 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2012 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c8508b00-e9fa-4a29-a71b-6b7bb20480c1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2013, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2013 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2013 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2013 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2013 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '947b6762-b9da-4782-8013-5bc2a6a78b92', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2014, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2014 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2014 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2014 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2014 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '50899a28-9c8a-41ee-a195-56c7be172780', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2015, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2015 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2015 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2015 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2015 AND version_name = 'Cargo');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '82d305f6-5707-4d97-977e-b46c379fcd11', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c0825054-b694-4da2-90e8-987c348f2d09', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo Esd', 'honda-cg-125-cargo-esd'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo-esd');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '73b90936-e5ab-4d23-949f-6c823f61e3b7', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd'), 2009, 'Cargo ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                AND year = 2009 AND version_name = 'Cargo ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2009 AND version_name = 'Cargo ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2009 AND version_name = 'Cargo ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2009 AND version_name = 'Cargo ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b76159e9-5695-45ec-8da2-090fba11c71f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd'), 2010, 'Cargo ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                AND year = 2010 AND version_name = 'Cargo ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2010 AND version_name = 'Cargo ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2010 AND version_name = 'Cargo ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2010 AND version_name = 'Cargo ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b70881a5-2d49-4939-809b-c8007609ada2', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd'), 2011, 'Cargo ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                AND year = 2011 AND version_name = 'Cargo ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2011 AND version_name = 'Cargo ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2011 AND version_name = 'Cargo ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2011 AND version_name = 'Cargo ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bac366b9-526b-443b-a926-7380d02cc12e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd'), 2012, 'Cargo ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                AND year = 2012 AND version_name = 'Cargo ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2012 AND version_name = 'Cargo ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2012 AND version_name = 'Cargo ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2012 AND version_name = 'Cargo ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ae1ffe78-e58f-4766-a1ac-1df0b1701cf9', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd'), 2013, 'Cargo ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                AND year = 2013 AND version_name = 'Cargo ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2013 AND version_name = 'Cargo ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2013 AND version_name = 'Cargo ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2013 AND version_name = 'Cargo ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3d9ab5e9-7b84-4e80-9a20-c4897010a8fe', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd'), 2014, 'Cargo ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                AND year = 2014 AND version_name = 'Cargo ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2014 AND version_name = 'Cargo ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2014 AND version_name = 'Cargo ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2014 AND version_name = 'Cargo ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b7602ebc-9447-4bc5-840a-cafc49878413', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd'), 2015, 'Cargo ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                AND year = 2015 AND version_name = 'Cargo ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2015 AND version_name = 'Cargo ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2015 AND version_name = 'Cargo ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-esd')
                    AND year = 2015 AND version_name = 'Cargo ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a004f727-8ecb-4857-8672-72dec32249e3', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c10bfce5-9eab-4659-a025-04a628c9377d', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo Ks', 'honda-cg-125-cargo-ks'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo-ks');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd5749957-2035-493d-8325-bc7bab2f0b64', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks'), 2009, 'Cargo KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                AND year = 2009 AND version_name = 'Cargo KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2009 AND version_name = 'Cargo KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2009 AND version_name = 'Cargo KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2009 AND version_name = 'Cargo KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0a85b769-1510-4e81-9612-4bf9d68240f8', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks'), 2010, 'Cargo KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                AND year = 2010 AND version_name = 'Cargo KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2010 AND version_name = 'Cargo KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2010 AND version_name = 'Cargo KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2010 AND version_name = 'Cargo KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9192b593-3d43-4c56-b09a-df5b6ef93c78', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks'), 2011, 'Cargo KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                AND year = 2011 AND version_name = 'Cargo KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2011 AND version_name = 'Cargo KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2011 AND version_name = 'Cargo KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2011 AND version_name = 'Cargo KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cb118518-dc72-4b8b-becb-3e8ae2af8a6d', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks'), 2012, 'Cargo KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                AND year = 2012 AND version_name = 'Cargo KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2012 AND version_name = 'Cargo KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2012 AND version_name = 'Cargo KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2012 AND version_name = 'Cargo KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '340da36b-8a96-44f0-aaf4-f5c15af4644e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks'), 2013, 'Cargo KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                AND year = 2013 AND version_name = 'Cargo KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2013 AND version_name = 'Cargo KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2013 AND version_name = 'Cargo KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2013 AND version_name = 'Cargo KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a170ff69-f80e-4726-99c6-24505f152455', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks'), 2014, 'Cargo KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                AND year = 2014 AND version_name = 'Cargo KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2014 AND version_name = 'Cargo KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2014 AND version_name = 'Cargo KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2014 AND version_name = 'Cargo KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '09c5c131-64c2-4d3c-913c-3dcd2c9840cf', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks'), 2015, 'Cargo KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                AND year = 2015 AND version_name = 'Cargo KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2015 AND version_name = 'Cargo KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2015 AND version_name = 'Cargo KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo-ks')
                    AND year = 2015 AND version_name = 'Cargo KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5d0499ed-d4ff-4a54-8037-18f95fffd960', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '88098f8b-8f53-46b3-be84-a5d92fff8a12', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan Es', 'honda-cg-125-fan-es'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan-es');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2c5ea59d-eaf8-470e-bc21-79d30c8eca19', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es'), 2009, 'Fan ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                AND year = 2009 AND version_name = 'Fan ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2009 AND version_name = 'Fan ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2009 AND version_name = 'Fan ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2009 AND version_name = 'Fan ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ca464c2a-aa9e-47c2-907b-cd1df164cc58', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es'), 2010, 'Fan ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                AND year = 2010 AND version_name = 'Fan ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2010 AND version_name = 'Fan ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2010 AND version_name = 'Fan ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2010 AND version_name = 'Fan ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '820eb412-6ced-4028-a3f6-c3e2e1174ea3', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es'), 2011, 'Fan ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                AND year = 2011 AND version_name = 'Fan ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2011 AND version_name = 'Fan ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2011 AND version_name = 'Fan ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2011 AND version_name = 'Fan ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2c347800-e388-4131-b7b4-ea269eaa9145', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es'), 2012, 'Fan ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                AND year = 2012 AND version_name = 'Fan ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2012 AND version_name = 'Fan ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2012 AND version_name = 'Fan ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2012 AND version_name = 'Fan ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0216bd06-03ff-4a6b-88f4-ec1f64bf2a32', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es'), 2013, 'Fan ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                AND year = 2013 AND version_name = 'Fan ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2013 AND version_name = 'Fan ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2013 AND version_name = 'Fan ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2013 AND version_name = 'Fan ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '592e80d7-a0fb-4c96-830c-cda37d20b545', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es'), 2014, 'Fan ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                AND year = 2014 AND version_name = 'Fan ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2014 AND version_name = 'Fan ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2014 AND version_name = 'Fan ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2014 AND version_name = 'Fan ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd0f3db23-8d65-4c10-86ba-287aa48e9da5', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es'), 2015, 'Fan ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                AND year = 2015 AND version_name = 'Fan ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2015 AND version_name = 'Fan ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2015 AND version_name = 'Fan ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-es')
                    AND year = 2015 AND version_name = 'Fan ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1173434f-dc8d-40bc-ac6b-b9b7535fe8ea', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '06c7c99d-14c9-45c4-9839-4ab570e1476f', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan Esd', 'honda-cg-125-fan-esd'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan-esd');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '226d75a3-5ef6-42d2-adfc-40b6a441ed39', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd'), 2009, 'Fan ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                AND year = 2009 AND version_name = 'Fan ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2009 AND version_name = 'Fan ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2009 AND version_name = 'Fan ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2009 AND version_name = 'Fan ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'da168dce-f59e-4f89-a6ec-27800a6c5f36', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd'), 2010, 'Fan ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                AND year = 2010 AND version_name = 'Fan ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2010 AND version_name = 'Fan ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2010 AND version_name = 'Fan ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2010 AND version_name = 'Fan ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd00ec3cc-49f1-4818-bb7a-e2532c6dfbc8', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd'), 2011, 'Fan ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                AND year = 2011 AND version_name = 'Fan ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2011 AND version_name = 'Fan ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2011 AND version_name = 'Fan ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2011 AND version_name = 'Fan ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59eaea6d-2515-452b-a31f-c41165f6bfde', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd'), 2012, 'Fan ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                AND year = 2012 AND version_name = 'Fan ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2012 AND version_name = 'Fan ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2012 AND version_name = 'Fan ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2012 AND version_name = 'Fan ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cfbb6812-8686-45d4-bc59-59083eb1f783', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd'), 2013, 'Fan ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                AND year = 2013 AND version_name = 'Fan ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2013 AND version_name = 'Fan ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2013 AND version_name = 'Fan ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2013 AND version_name = 'Fan ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f6e56c3d-712a-472a-82ca-f3d4f8377e95', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd'), 2014, 'Fan ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                AND year = 2014 AND version_name = 'Fan ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2014 AND version_name = 'Fan ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2014 AND version_name = 'Fan ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2014 AND version_name = 'Fan ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7282f54b-1de2-4f07-8ab3-61dadfbee994', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd'), 2015, 'Fan ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                AND year = 2015 AND version_name = 'Fan ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2015 AND version_name = 'Fan ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2015 AND version_name = 'Fan ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-esd')
                    AND year = 2015 AND version_name = 'Fan ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9f276ec7-7bae-4d4a-a477-388bd96fcae9', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd966b461-9df3-48c2-9801-d023151c06e7', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan Ks', 'honda-cg-125-fan-ks'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan-ks');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'faed4cdd-52d2-43a4-90f2-43654a56e4cc', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks'), 2009, 'Fan KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                AND year = 2009 AND version_name = 'Fan KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2009 AND version_name = 'Fan KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2009 AND version_name = 'Fan KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2009 AND version_name = 'Fan KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '82ffdf62-dac8-4465-9900-750db83b4a0e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks'), 2010, 'Fan KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                AND year = 2010 AND version_name = 'Fan KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2010 AND version_name = 'Fan KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2010 AND version_name = 'Fan KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2010 AND version_name = 'Fan KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '664d493d-64d6-4cad-92e8-adeab1373827', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks'), 2011, 'Fan KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                AND year = 2011 AND version_name = 'Fan KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2011 AND version_name = 'Fan KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2011 AND version_name = 'Fan KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2011 AND version_name = 'Fan KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '14353da0-fb49-4126-b6e0-8576730f942c', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks'), 2012, 'Fan KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                AND year = 2012 AND version_name = 'Fan KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2012 AND version_name = 'Fan KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2012 AND version_name = 'Fan KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2012 AND version_name = 'Fan KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '969a667c-93cf-46b6-b2d7-4c227b82f2f7', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks'), 2013, 'Fan KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                AND year = 2013 AND version_name = 'Fan KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2013 AND version_name = 'Fan KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2013 AND version_name = 'Fan KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2013 AND version_name = 'Fan KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '81f3f569-d169-4dfa-a43f-27c2b423a43e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks'), 2014, 'Fan KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                AND year = 2014 AND version_name = 'Fan KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2014 AND version_name = 'Fan KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2014 AND version_name = 'Fan KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2014 AND version_name = 'Fan KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9a8b9102-befe-42a2-aa9a-ba55f491c2d7', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks'), 2015, 'Fan KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                AND year = 2015 AND version_name = 'Fan KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2015 AND version_name = 'Fan KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2015 AND version_name = 'Fan KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan-ks')
                    AND year = 2015 AND version_name = 'Fan KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5005a89c-067c-4d2f-943b-3820bca7e50c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b2ad4579-fd68-4d2a-9bd4-a714fbbc4704', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125I Cargo', 'honda-cg-125i-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125i-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9b938e01-a05f-4232-ad5a-fcd8c7d8299b', (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo'), 2016, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                AND year = 2016 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2016 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2016 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2016 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0c9f32b1-ba11-4ada-b280-6573ccc2725f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo'), 2017, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                AND year = 2017 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2017 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2017 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2017 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9deb0da7-039d-4b04-8b6b-294f8a67b2a5', (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo'), 2018, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                AND year = 2018 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2018 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2018 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2018 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9bb39d52-540a-43c0-a7e7-e3378e13979d', (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo'), 2019, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                AND year = 2019 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2019 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2019 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2019 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '899c52c9-0b4b-445d-8736-6cc9e9265245', (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo'), 2020, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                AND year = 2020 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2020 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2020 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2020 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bc350bd8-162a-418c-a66f-864e7969d314', (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo'), 2021, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                AND year = 2021 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2021 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2021 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2021 AND version_name = 'Cargo');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9b912da3-cd3f-404d-8cc2-b151d59cdd85', (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo'), 2022, 'Cargo', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                AND year = 2022 AND version_name = 'Cargo'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2022 AND version_name = 'Cargo' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2022 AND version_name = 'Cargo' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125i-cargo')
                    AND year = 2022 AND version_name = 'Cargo');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ecbdd536-c25e-40cf-8ebc-bc3f651526fd', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b30865bd-203a-4db8-84f7-f79ce7fb8729', (SELECT id FROM brands WHERE slug = 'honda'), 'Crf 230F', 'honda-crf-230f'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-crf-230f');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '80d4fb24-2f9c-4b34-8818-c1beeae5d2fc', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '639057fa-0e81-473f-bc2b-a8f0dc2d379a', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4a029e5e-972e-4cfc-821b-a6a5319091cf', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c547deee-345e-45c1-99ba-60020aa0439c', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e91009f0-ce0a-40b0-8c90-50d7f01e7b35', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3c5190be-6c97-4a40-98a2-aa0207a702b9', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e954e6e2-b10f-4b8a-8798-b7312709c77d', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1a833911-5bc5-45a1-836e-969887de42a8', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '04c9c1af-ea25-4c5e-91c4-bfde95dbd104', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '45f1ffa9-82eb-4775-b082-288f8a1d9555', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5f381245-d246-4fe1-961d-acce662e101b', (SELECT id FROM car_models WHERE slug = 'honda-crf-230f'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02367')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02367')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-crf-230f')
                    AND year = 2016 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '94ab0640-988d-416f-ad9a-a7e344b5e905', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '47c03c19-e78d-441c-ae70-7cd84730902c', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 110I', 'honda-biz-110i'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-110i');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '38932230-53bc-4de3-92f0-78cdce77552e', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i'), 2016, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                AND year = 2016 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2016 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2016 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2016 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd039d434-1f6c-4d3d-a948-6ff9d72ac8e6', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i'), 2017, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                AND year = 2017 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2017 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2017 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2017 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd23d3d16-701b-4937-b8ab-ecfd39714bb7', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i'), 2018, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                AND year = 2018 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2018 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2018 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2018 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fe6446d0-fc45-4fbe-826a-cb4ef77f46ee', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i'), 2019, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                AND year = 2019 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2019 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2019 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2019 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd7a895e9-9091-4cce-9f5d-6c03d519b80d', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i'), 2020, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                AND year = 2020 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2020 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2020 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2020 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '38f9e936-e386-41ce-a376-8d0f354649fa', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i'), 2021, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                AND year = 2021 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2021 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2021 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2021 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f72620c0-179c-4f46-b04b-343287af4ae4', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i'), 2022, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                AND year = 2022 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2022 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2022 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i')
                    AND year = 2022 AND version_name = 'i');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9f954ca3-56de-496f-bf74-b525913c5703', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '07d8d4f2-10d6-4d76-a716-ee1ba2be5dd6', (SELECT id FROM brands WHERE slug = 'honda'), 'Pop 110I', 'honda-pop-110i'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pop-110i');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4aa4b652-554e-4320-8af2-a88fa1a86047', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2016, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2016 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2016 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2016 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2016 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0fef33be-10fd-48ad-8a24-124f377b1870', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2017, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2017 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2017 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2017 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2017 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1ef3d0f0-3631-4a97-ba71-34c1216c19c8', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2018, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2018 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2018 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2018 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2018 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '55524c06-5796-4fc3-a53b-ed422f7a665e', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2019, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2019 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2019 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2019 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2019 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de198c22-56fe-4815-8edf-bd814a123992', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2020, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2020 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2020 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2020 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2020 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '63f36c12-feb1-475e-8f38-d6dbf399a198', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2021, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2021 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2021 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2021 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2021 AND version_name = 'i');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd6795c4d-ea34-469c-a19a-1f5a215aa5af', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2022, 'i', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2022 AND version_name = 'i'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2022 AND version_name = 'i' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02755')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2022 AND version_name = 'i' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02755')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2022 AND version_name = 'i');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3a1be7dc-0ffa-42ca-87ed-8a8267941ce9', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '60459f84-8d9b-46da-a823-8ebb3aa8db4c', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 125', 'honda-biz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '922729f9-1c8f-44b8-966e-d21b5e7b4adf', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '80a4d737-9b2a-45e4-8c01-19085a69e586', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aabc176c-2d16-4c5e-bbb2-fe8ad556d6bb', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '21f77477-2310-4a70-8010-c26789554927', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e2ad38aa-a0f1-4034-babc-7fef8936cd3e', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4e9f375b-bb26-4c12-a24d-addcad15a3c5', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ba6f98b9-58f5-4633-86c0-dc34d42a4d1c', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1f4fc44e-467b-4734-97fc-44bdfc0b9563', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3c08b350-1fb4-488a-bfa9-7889b3149a62', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 125 Es', 'honda-biz-125-es'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-125-es');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c2e72d3e-27a0-4bb9-b115-f15ea81b00b9', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es'), 2011, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                AND year = 2011 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'BL02806')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'BL02806')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                    AND year = 2011 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e0f2e4ce-f2df-478c-a16a-6428d862a88f', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es'), 2012, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-es')
                AND year = 2012 AND version_name = 'ES'
            );
            