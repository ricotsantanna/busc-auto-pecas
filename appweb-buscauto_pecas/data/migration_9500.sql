
        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '0c77f60c-882f-440a-b196-916aa3a7f9a2', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e07339f1-2082-4756-911e-ebc30fbb35a0', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e71ad903-30bb-4ba0-b264-e5b5ce38833e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8c519ee8-2ca9-47d1-86a8-8469a83fe57b', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '94fd8a12-4186-43f1-b59b-e08337e0fcf5', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3df94037-bf6f-457e-a283-0040a947e54f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8b200657-ed99-402d-bfed-fe2a4fd4d29e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '53e74205-e49f-474c-9dbb-e61576d85d0d', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cf668550-add8-4fab-9270-170d8dcc41c7', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2016, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2016 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7b9e0088-4e05-478c-ac88-2662a8992cc8', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2017, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2017 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2017 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2017 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2017 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2eac9354-95bf-4d21-bf68-81fb4ccde8f5', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2018, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2018 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2018 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2018 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2018 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '27e20307-a1f4-4250-a627-1a9c693a86d4', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '46f65fef-693a-4d08-9fea-8145008545cc', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 125 Bros', 'honda-nxr-125-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-125-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '945cca2a-2517-44fc-a3b5-ee78c3d8e6cc', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ca29c4c-5fe1-4d23-bc42-0cdcaf9ae91a', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '67479ac4-ce19-45c8-ac73-7452efc896dd', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2015, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2015 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297320'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297320')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297320')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5bff972e-c0f7-4272-86ae-ffad077fe170', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '39c8eb46-1b33-4825-b212-6ef147de8a24', (SELECT id FROM brands WHERE slug = 'honda'), 'Cbx 250 Twister', 'honda-cbx-250-twister'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cbx-250-twister');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9bd72c85-ef18-4970-bb7b-a344aca01809', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '907e4fc7-8ecf-4125-8540-fec6e43c07b4', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e637c609-f4e4-4782-be3b-ebcfa7a2329e', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8d91acbe-6b05-4831-a35a-5ab890e73dba', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f1e80d92-75a0-419a-853a-e4758a9786f3', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '79e5e0f1-6b1b-40bb-b31e-685845a28a08', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bd292757-df89-43e4-8f58-f9eef8e2aab1', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'defd1c64-a776-4e6b-a18b-bd17bdf24e36', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0e16896e-cfbb-4d57-bca5-87d98186fc9a', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '680aff67-6c08-4a8d-99bd-c59792be151a', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300R', 'honda-cb-300r'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300r');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '30dabf2e-d1a8-471c-8cb4-2b2f15d21384', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa23eb9c-2a59-46b5-8f9c-440a4d6142a5', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '055d9c40-99ef-48ed-a123-8c8fa9ac9b48', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2012 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'fb19e895-ad4a-467c-a8d7-9df59baefcc4', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '04c39780-5832-4c6b-b738-f6117780f921', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 300', 'honda-xre-300'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-300');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c7418cc0-2b15-4ce9-bb1a-1653ea4911e5', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2010, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2010 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2010 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2010 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2010 AND version_name = 'FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e45b3c8d-735d-43ba-97dc-3c94a9c05bb2', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2011, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2011 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2011 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2011 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2011 AND version_name = 'FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a9b7d689-701c-41f6-b007-a52e578ffb85', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2012, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2012 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2012 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2012 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2012 AND version_name = 'FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4a2d28e0-fcc5-45cc-887b-5b2e50e52149', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '452eadda-8a3a-4f78-a0b4-b8495c0f9258', (SELECT id FROM brands WHERE slug = 'honda'), 'Xr 250 Tornado', 'honda-xr-250-tornado'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xr-250-tornado');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa5edb0b-64a2-4071-be71-2a75f83eb549', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '88b3276e-c64d-40de-a201-047eba72a4c1', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '41288e66-c953-487e-b7ed-4a132561f0c7', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2ed8a315-7e44-418b-af6a-4b9eaac5a0f9', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '29ce517c-32ba-44dd-8c04-2129467035bf', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '318b9218-873c-4158-9367-fb9c0f7f5a98', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff74e821-e0d1-4f6e-ba11-ec4b1ba11240', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a8a739a2-3f6f-4872-bb9b-6089993faa44', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '78107750-51f1-4941-a98b-445018d756c8', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '31f6e516-0930-4019-95f4-843ac25a0c92', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 300A', 'honda-xre-300a'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-300a');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f4afa90b-b430-4fa7-af15-af2f8d73ee7f', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c2acd932-398b-4a38-b1f6-cec8648bea63', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd92548f5-6a9d-476f-8b35-1dd2168949c4', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2012 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'fd95e77e-5875-4822-abca-05e1cb648f28', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '78d15e4d-b8e7-49b7-96a4-4bd3cf3a4b4a', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300 Com Abs Flex', 'honda-cb-300-com-abs-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '769f74aa-51b5-476f-8695-ba8eb03f5b15', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4d5f7668-6d17-4bb7-83ee-c674e9819cf4', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '06dca68e-afd1-4cc1-8222-8c1a3a80947a', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297370'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297370')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297370')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2012 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '42487743-06b5-43e3-a7b6-cda299e26296', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '56c40c8b-8fe9-40a9-b8a6-235a5e94b0da', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 250F Twister Abs', 'honda-cb-250f-twister-abs'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-250f-twister-abs');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4594b9ac-7c77-43bb-8b59-06cca8e6e020', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ab7b0b29-4972-44f0-81c9-95902ff9f1f2', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c1a7543e-2010-46a3-a07b-50f4bae588c7', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '685d78df-dc0b-4440-932d-489b33bd9694', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '93f9a63c-9c67-4fda-acf2-7e1af62a98e1', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '45324609-8f45-4f97-89af-a95fbac47cdb', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd94444f5-4939-469a-b331-3bb7ce26ea99', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5cb64c3e-e990-4e11-af1b-076e4efb057b', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '782ed0df-d40d-49d0-b260-0fb3962d0502', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 250F Twister Flex', 'honda-cb-250f-twister-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-250f-twister-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'df49d221-8a89-4717-9758-41383cf0da04', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd77adc18-9a85-4624-9660-95f745650b8e', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3d8f84c6-337e-45ed-8bc8-c4d1ec81d62f', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '38c4e0cf-f657-4a9a-80cf-59b9cae47992', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6568589e-51a9-41dc-a0e1-91a92cf98912', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '17d94730-5003-4fbb-8d2a-3046c198e8f5', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '38eba6ff-1767-470d-ae31-406559607d37', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 250F Twister Cbs', 'honda-cb-250f-twister-cbs'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3e4f4604-9c4d-4a26-9e1c-af5f527687d4', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dd667cbe-9cbd-4c6a-9c88-3dc5b3392072', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297360'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297360')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297360')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd0bb5b42-8e03-416d-baa1-f9ce05155eb0', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ff288c53-c23b-40f8-af6b-69dbbc9550c3', (SELECT id FROM brands WHERE slug = 'honda'), 'Pop 100', 'honda-pop-100'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pop-100');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a584bc97-a411-4516-8d85-bfddb5a0c21a', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c099aa1d-3945-4307-a0b2-9c9b46a8658d', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ed566d87-7763-4d1c-8338-a67483bf9311', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '278f80fa-bad6-4252-9256-74b4cd1ed9df', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'db922892-1467-4ae1-a59a-f5e8597f7351', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a4207f05-86c5-4b51-b48c-fa12fadbbf02', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '803aa4a7-5f90-47c6-bdf2-e54224b6845d', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c58611a5-029b-4a90-9538-905e9144a31e', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '98e31664-e398-4272-b620-75f55d577a84', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ec34f144-a9f7-436c-8cb7-931853d34117', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4b231524-2499-4cc5-9060-d2295f4a0e4d', (SELECT id FROM brands WHERE slug = 'honda'), 'C 100 Biz', 'honda-c-100-biz'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-c-100-biz');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '09aa6692-35be-4095-b4a7-1ae55eed5b1f', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6cdbe094-a7f6-423c-9268-48cf4128c6c3', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '353ae8fc-dccc-4817-b40e-18d23e8bc556', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6362ba1d-76f1-4433-b624-1664c96a006b', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '29b72b73-693e-481d-9d69-2358856ea22d', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9915742b-e335-4949-8928-98392ea900e4', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '78bd26aa-791d-472e-8f3e-56096543ddaf', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '340e0953-73c9-4619-9d30-e26af9077748', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297060'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297060')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297060')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '953c6343-1b27-4ce3-a583-b5a4507077cf', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '5e3f4a80-b274-4f0c-ac34-7c7e05380ff0', (SELECT id FROM brands WHERE slug = 'honda'), 'Xr 200R', 'honda-xr-200r'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xr-200r');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '57e1f8a0-54b4-4f60-95e1-075ad90b5a8e', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1994 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7e955b58-e226-4a3b-907b-823bffccd279', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 1995, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 1995 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1995 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '991bd8a5-2b3b-4af6-907c-bb61f1d66f01', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 1996, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 1996 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1996 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd1e7b285-e852-447b-bca9-37d998623a9a', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a2656ab9-9709-46d6-b654-8904d09bc240', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '370e1273-5b68-4f85-89ce-4e3835199b27', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c047cf68-c867-41f2-88da-90421b7e8532', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '137a15e2-6c06-4a4f-8f65-d6f2d8f5ba72', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c9d7e4b3-2847-4c39-832b-c373a7adc19c', (SELECT id FROM car_models WHERE slug = 'honda-xr-200r'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-200r')
                    AND year = 2002 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '167cd992-16c4-4a7d-bdfe-ad4c91d9cdd9', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a5625e17-6d2e-4ee4-9a81-0f818fb87408', (SELECT id FROM brands WHERE slug = 'honda'), 'Nx 200', 'honda-nx-200'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nx-200');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3592f06a-de5a-41cb-b492-24a5a0d957c3', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1994 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e4b55b98-9a49-4c85-95ba-f4a4dc600d36', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1995, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1995 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1995 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'acf5aa42-a9c9-479b-8f0c-d32ba0c05dbb', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1996, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1996 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1996 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4c93b03e-a5aa-4a24-ae69-690bd8997337', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'af11cc2c-ad85-47ba-b3d3-971ea258801e', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0f6bd328-7bee-4053-afbb-a3448ef49850', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '738ed6ca-1f26-4234-b384-4ae907dce53a', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4928e20c-8e30-47d9-833b-d08ba6fca630', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '795fea73-2ced-4e91-b433-ecc7039e3e26', (SELECT id FROM car_models WHERE slug = 'honda-nx-200'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nx-200')
                    AND year = 2002 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'eddcbe6b-f597-45e5-9615-55b53e0de12e', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '58778abd-a357-40de-b87e-bcbcc7293b66', (SELECT id FROM brands WHERE slug = 'honda'), 'Cbx 200 Strada', 'honda-cbx-200-strada'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cbx-200-strada');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3b7cfaa4-1e24-49d0-adce-a13234df379c', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1994 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f883d7a0-3baa-454a-8e5d-14d281ca5369', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 1995, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 1995 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1995 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '09acb210-5ef0-4e9d-bbbd-6807282e089a', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 1996, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 1996 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1996 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '461006b3-3ab7-4b65-8e1f-8f2e5c4de230', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8bad98a4-aa59-4eeb-95c7-9b1e0b0b2a01', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa9839e8-b605-44cd-840a-0b6b4b4a2c26', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7d9a9b3d-0887-4ee8-b8a7-6ced0013b702', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '01eee119-f676-4b57-aa19-e78302727573', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '29224a8b-82e4-43e1-87ac-894a68cd471b', (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-200-strada')
                    AND year = 2002 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '533a40f8-255b-46e2-a148-8f951289b717', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9d2fd336-44e5-4f41-9729-af152372306d', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3da76c9b-91c9-447e-9864-d6b2c21fc553', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2003, 'MIX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2003 AND version_name = 'MIX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2003 AND version_name = 'MIX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2003 AND version_name = 'MIX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2003 AND version_name = 'MIX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de8ae366-01f4-434f-8480-e7cd5b5d77d7', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2004, 'MIX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2004 AND version_name = 'MIX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2004 AND version_name = 'MIX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2004 AND version_name = 'MIX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2004 AND version_name = 'MIX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '533c445a-c56e-4a21-a1a3-3b70ff783c27', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2005, 'MIX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2005 AND version_name = 'MIX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297330'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2005 AND version_name = 'MIX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297330')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2005 AND version_name = 'MIX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297330')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2005 AND version_name = 'MIX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '504dd100-ef57-412c-a960-c71e84108c07', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c2097036-87fe-4e4e-abf2-5f603f2b812a', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 125', 'honda-biz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c4ff8485-e831-494f-b798-0bda4de8852a', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2006, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2006 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2006 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2006 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2006 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b5b7d17a-97bc-4ddf-b204-df7b61d8c2cc', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2007, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2007 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2007 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2007 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2007 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ffee7ad8-ec37-4814-ad9a-fe91d89521f2', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2008, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2008 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2008 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2008 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2008 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b0d80ba6-1bf8-422a-956e-223d91ce7131', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2009, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2009 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2009 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5d691c49-26b8-4790-8373-0677d4ea1359', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2010, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2010 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2010 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff54f280-eb89-4066-8db7-3d53ab820648', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2011, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2011 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd4b3f57c-85b2-4917-8f0d-7a3250ce92e5', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2012, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2012 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4bdfa3cf-5566-4323-b6cc-544bf09ad5b6', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2013, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2013 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3583f80c-3e66-4b0b-9472-f777a0cfa00c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '5867c7c1-3788-4ff3-a5c0-a0bb77761e6d', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 125', 'honda-biz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5c186339-bbd6-4d61-8aae-9b9f9e851513', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2011, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2011 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a8aef419-123f-471d-998c-42d3512ccf15', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2012, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2012 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'de0da044-a0cd-4a4b-bd09-4498175db633', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2013, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2013 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9dc84d5d-3b72-40bf-8001-a0c8d7165adf', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2014, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2014 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2014 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2014 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2014 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5d486035-8cdb-48b5-9c7d-57d126a70b27', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2015, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2015 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2015 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2015 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2015 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bfed5d45-09b3-412e-83a6-4e4960f26299', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2016, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2016 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2016 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2016 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2016 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd5201522-84b5-4367-803e-fa9d779fee85', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2017, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2017 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2017 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2017 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2017 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f9dd8629-4136-4e4f-90ec-35edf13a94d6', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2018, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2018 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2018 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2018 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2018 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1e791cf6-4a52-4af7-86d7-ca40fcf55487', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2019, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2019 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2019 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2019 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2019 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '27653692-9d6a-4558-ac87-950b5c2b156f', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2020, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2020 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2020 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2020 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2020 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '65301fd6-1658-45ed-9326-f6baa2670b96', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2021, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2021 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2021 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2021 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2021 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e9bc5450-b659-4352-b3a9-7da38952ae99', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2022, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2022 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2022 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2022 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2022 AND version_name = 'EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '617a5894-653c-4621-9dd8-ba8ae346cd45', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2023, 'EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2023 AND version_name = 'EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2023 AND version_name = 'EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2023 AND version_name = 'EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2023 AND version_name = 'EX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'f366333e-644c-4ca8-a671-7029373f0ecd', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '06a3d93b-2fac-4400-bc7b-6d422c5fd402', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 125', 'honda-biz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '75ed76a1-c5a2-442c-b839-a35f52827548', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2006, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2006 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2006 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2006 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2006 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4ea526c2-50ad-4edc-80e9-363e214646e8', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2007, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2007 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2007 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2007 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2007 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '93e2e305-d297-4512-ad8a-3f7f29f4586a', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2008, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2008 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2008 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2008 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2008 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '70589c22-2518-4922-af71-e0857980ee1f', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2009, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2009 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2009 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a61423d0-2ffa-439e-a5a7-8aea8aaa79dd', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2010, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2010 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2010 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '85051bb4-3c70-4e27-b27d-31503363310a', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2011, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2011 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2011 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '626d5eb2-fd8d-4433-8336-08373ab659ac', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2012, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2012 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2012 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2107d6e8-5fbb-449b-a85b-95d9f92fa373', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bacd55df-47ca-4544-b854-f2dafc36036a', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2014 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0991c6a1-ffbb-4650-8bb9-6208c3422905', (SELECT id FROM car_models WHERE slug = 'honda-biz-125'), 2015, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                AND year = 2015 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125')
                    AND year = 2015 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'dd20761b-3502-43c9-9b41-4c86a118a482', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4eb93d57-ded8-4b55-9c15-db9d0a8c9914', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 125 +', 'honda-biz-125-'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-125-');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '09ce419b-3021-479b-98fb-54ca8033e8d6', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff9ead55-7b1b-41d8-b76c-22393de91258', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f58c7662-9939-4b13-9e74-93ced0493a57', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5a9506b9-ade5-41d1-ab28-19ef964f6fa3', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7d0f9c55-e805-4a4e-8c08-fb64c0610f41', (SELECT id FROM car_models WHERE slug = 'honda-biz-125-'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297270'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297270')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297270')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-125-')
                    AND year = 2010 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4f08ea2f-e8e5-4f17-954b-797ff0922cea', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd2a62936-f49a-43d1-98a2-9a441937ef61', (SELECT id FROM brands WHERE slug = 'honda'), 'Pop 110I', 'honda-pop-110i'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pop-110i');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '163d5f54-5e60-4599-829c-5d66bdc177e8', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6b228dc1-0402-4bde-8cce-12e79d7eed1b', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2d20ec2a-0493-4245-bafd-8ab18f4c7fe8', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5bcf92ef-fefb-4bad-b059-98106fb5fb8d', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '952d9c72-6406-4d1a-b458-311bd0ad255b', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7689a6d9-2162-447d-85e3-47afd66d6dbd', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8a1cc00-ef86-4795-b4b9-7aaf22263e36', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2022 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f031c2d8-6731-4bcf-9b79-14c1863511ed', (SELECT id FROM car_models WHERE slug = 'honda-pop-110i'), 2023, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                AND year = 2023 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-110i')
                    AND year = 2023 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'bdaceeb8-4730-4588-8636-f73984a84153', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '2f31c250-9337-4a17-ba44-54290ca2b2bf', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 110I Flex', 'honda-biz-110i-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-110i-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0dd858d8-e33e-40d7-b3b5-daedcfda5a77', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8837c510-a14e-4ec5-a831-014c29d42839', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a6c391f5-0b13-4250-87c2-470d2ee94dff', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0fb0d26f-ddc3-4d79-8563-94d5c65d4ba2', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8ca03354-8a0a-47a7-aa09-51ded86a2bee', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ae00550-d9ca-4c6d-9175-3ec345bbb9d3', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '64a18bf4-5b70-42ec-ade3-05b391410c98', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2022 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '30735530-d420-4180-aaa8-0a5a16995954', (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex'), 2023, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                AND year = 2023 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297280'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297280')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297280')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-110i-flex')
                    AND year = 2023 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9c843508-05dd-4a79-9ef3-cc6f951ad981', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8812bc57-9126-43ea-a2db-b964eed09617', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 250 Fazer', 'yamaha-ys-250-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-250-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '388c2bc2-cb1f-45d8-a22d-2c9fd42dc1ca', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd52d695a-c58d-4c9b-8a53-bfd4af70f64d', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '22bdeee2-e20c-4a4b-b670-e1824a9e098c', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd1b10398-bb32-4c87-a2ff-880502ce9443', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd858b17f-d162-490f-adb8-5a70eee19236', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2e43c553-6fbc-4bc7-9d03-db9dfbb0e55d', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '20efd5b0-b1ad-4761-bfdb-7846e05f36ca', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0a242798-789f-4643-b079-ac3439b275ac', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1cba2daa-c245-4ef5-99b9-6d74072b64d5', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '32173501-6aab-4da3-85da-581e7cd4d16a', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '599292c4-c0ae-412c-a41b-d2eaf140c738', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9465baab-add4-4907-a707-934874276563', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 250 Lander', 'yamaha-xtz-250-lander'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-250-lander');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '906bf040-7dc7-40d2-b796-79f841b809f2', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '30f0b489-31c9-4c6b-8a90-6e6efceb651a', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '84fb1604-be8f-4e10-8675-1fd9cdae945a', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a988a8b9-e356-4801-9b70-c7f118e713af', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2a4c4f0e-c234-4ad4-8bcc-2e762135a0ea', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3b950dc6-af30-48c5-a731-15679f8de3ce', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5c5dc038-ae06-4489-be89-2c1d734cd38b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '63bcf7d8-360f-4c14-b13d-82ff1aa19d56', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a85cbd29-1385-465d-8beb-91f30736a4ea', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b5fc6bcd-501d-4386-81d4-9887de33ea99', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4dd2a9a5-8e8f-4c19-a81a-8c81ec2a5460', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 250 Ténéré', 'yamaha-xtz-250-ténéré'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bf9cace7-ef28-43a3-9302-356d082561f0', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eb5099ed-07f9-43b8-a36a-8cba487b3a1b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '76230a74-61ce-4cd8-b88a-09ba136552b3', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7ff9627e-b66a-4469-98fd-c24f52751837', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ce363e79-d9af-4bfd-a995-343960423afc', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297240'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297240')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297240')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1e2e18cd-41fd-4d36-bcbf-25ddc4b73651', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '35a97667-83da-41cb-87ee-3442d076c431', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 150 Fazer', 'yamaha-ys-150-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-150-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '20f3e667-5bad-44bb-b331-a43e8f879e67', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2014, 'SED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2014 AND version_name = 'SED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'SED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'SED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'SED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4878dfac-86df-4894-9b65-6ce75fe38fda', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2015, 'SED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2015 AND version_name = 'SED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'SED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'SED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'SED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6b82746a-b2eb-43e7-b838-a681c10ad764', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2016, 'SED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2016 AND version_name = 'SED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2016 AND version_name = 'SED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2016 AND version_name = 'SED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2016 AND version_name = 'SED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd791eb90-b524-4f56-88b8-99d2fc980284', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '1fa2393d-6e2e-42e8-9649-d503d45b614f', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 150 Factor', 'yamaha-ybr-150-factor'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-150-factor');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '46bf385b-04d1-4c16-9587-4af3bb088125', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2016, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2016 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '22b09a70-bbb5-45fa-b07b-9e6eb6d018af', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2017, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2017 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9ffe0411-774d-4c1a-9cfb-7e69f1f25879', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2018, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2018 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ceb4de4e-b489-4d7a-b86c-0b47ba5bb64b', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2019, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2019 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd1d8b1b1-2815-4066-b10c-46b149e701d6', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2020, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2020 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8c27e74a-b501-46ac-86fe-caefc17794a1', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2021, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2021 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6faf5821-4210-4c1e-bd66-3eb37fd27ccb', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2022, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2022 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '35d8cfd3-c959-4098-979f-29100349a487', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2023, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2023 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '60829831-3610-44a9-afe3-026c511656b1', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a4dd4965-5c4f-47fc-a9c8-2b5ebf2870ad', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '541e767a-4bb4-4394-aeb0-77d3a87f017e', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2015, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2015 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dc9b09e3-95cd-4b02-b4dc-e6ae1f419d19', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2016, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2016 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6880cba2-dfe0-463a-a404-27c7b95a380f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2017, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2017 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '424b0ce6-aa80-47c5-a018-6323c1f5e0bb', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ad86aafa-2d8b-4e1d-bdf3-6f257a7c7991', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 150 Fazer', 'yamaha-ys-150-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-150-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '69d8210a-00cb-4709-b24b-eb3f4e8d47d1', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2014, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2014 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2ea491f9-1cb4-47ca-8d78-1a874b24e0f0', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2015, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2015 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'bf5e309f-9717-484c-8eb5-ac20258c9e23', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '457eff85-109d-4c28-8f6d-e4ea65351e9a', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 150 Factor', 'yamaha-ybr-150-factor'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-150-factor');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bc6a2152-cd4f-4fab-8433-8a336ca7351c', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '01e8a3a6-f1be-4a93-8369-fa641cf73f7e', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2017, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2017 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '01f4911a-c3ff-4f80-8c17-7bb555ebd49c', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2018, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2018 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '77921b1c-048c-4444-baec-2e16e472651b', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b323ebfc-cb88-4bf3-ab5a-ff1df59c4f27', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '07d950c4-03d1-4eef-9cb8-f139c87903e0', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2018, 'Z FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2018 AND version_name = 'Z FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'Z FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'Z FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'Z FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '63c7cf9c-2ca7-4cf3-8e42-f23bdb596820', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2019, 'Z FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2019 AND version_name = 'Z FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'Z FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'Z FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'Z FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '992a95bf-19ee-4fbf-a456-8dc1b6c418bc', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e3a6f107-e702-4296-851b-4ee6910a2373', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '27ba779a-f12a-4f6e-ae2c-35d9cd24c9e3', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2018, 'S FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2018 AND version_name = 'S FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'S FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'S FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'S FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b41bfc07-667c-41bd-b6d9-05b599245424', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2019, 'S FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2019 AND version_name = 'S FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'S FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'S FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'S FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'dfd945c0-d419-4ad1-ad8d-04f07bc82322', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e306d917-9640-45d8-aaec-89a07fb69bb6', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6902c280-b204-4fe3-bb80-df12d6a5a2fa', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2015, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2015 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '51e8c8eb-4692-498c-8062-be1883643296', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0703456e-bac8-4ff1-9935-5e4255bb9d9c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2017, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2017 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4cff4d9b-b134-4785-8edf-1baa9c75b4d4', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c3a19058-dca2-4704-9774-072d52732372', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 150 Factor', 'yamaha-ybr-150-factor'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-150-factor');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ca551699-6b98-4bc4-a081-8d0b0e997d31', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2017, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2017 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bfecb76a-52a8-4810-905e-d7a5a0a04a09', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2018, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2018 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2e78f42d-95e2-472d-8636-45499a0917c0', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2019, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2019 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '81a6efae-2936-40b2-a0a1-39122e082b35', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2020, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2020 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a0df2ae6-88f1-4f1f-8508-cfb6f7dda3c9', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2021, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2021 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fe304942-2b11-46f5-acee-1c09a1ebee7f', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2022, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2022 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9d0a24f3-d64f-4c31-9afd-41c5b43adec5', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2023, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2023 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'UBS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a1c91925-dd4e-489f-840c-6d0e7545fd93', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ff7f714a-d25f-4abc-9c63-b5e99203016a', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 150 Fazer', 'yamaha-ys-150-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-150-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '41c26a67-bb6f-4107-bec0-6212de3eccef', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2017, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2017 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2017 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '88c4d73e-725c-435b-8ca6-4da8f3f98882', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2018, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2018 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2018 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8307fede-7241-4730-9e63-a3072b619b6a', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2019, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2019 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297230'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297230')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297230')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2019 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e4daa7b8-85dd-48a1-8e54-789baa655f09', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2020, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2020 AND version_name = 'UBS'
            );
            