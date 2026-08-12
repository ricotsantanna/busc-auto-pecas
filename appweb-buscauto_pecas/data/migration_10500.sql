
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2ea7eae7-8324-476a-9f5b-ddc0e94e954f', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2007, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2007 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e73c6cd5-55ed-4ef1-8195-7c73a5efed9f', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2008, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2008 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ce3e78f5-0006-4c95-8ff7-f93bf0c28f71', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2009, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2009 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b68a86bf-c893-42f4-bf80-8d6c3f001552', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'db925d53-1da3-4f71-ac24-18113da65fb5', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2011, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2011 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4a1fa3ad-b6c9-4ef3-80f0-8c7447b28bc3', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2012, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2012 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '93de1fd9-6ff7-423c-82a1-385030bb3dc6', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2013, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2013 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '42806378-2e2a-41a0-9402-623382bf16ff', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'afc6cb0e-8e5d-443e-bfc1-2b14ec381332', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2015, 'TITAN ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2015 AND version_name = 'TITAN ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b7e5e384-8f36-49a7-990f-ba6772586030', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd6e20679-6221-44a6-9fd1-6543b304d5d7', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '50aa2e8b-f6be-48f1-a026-b2ffacabc487', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2004, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2004 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6f72a819-b64c-4bc8-89b9-e7795e80a5fb', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2005, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2005 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fd2c1446-8b85-47ea-a61c-d107fa3bdf4a', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2006, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2006 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1f2dd6dd-e2f2-4d48-a5e0-be5b2fa0770d', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2007, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2007 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2bba5d94-9beb-4cbe-adc8-3f10510a248d', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2008, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2008 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8106bdda-ddf2-4f17-af85-bfa87d5858d9', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2009, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2009 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5f72a19c-ea50-4aaf-b447-c74c19faaa5b', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '83ef6077-b842-4387-8d76-cfa9a642f808', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2011, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2011 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f7cdc2cc-21a5-4c05-ac08-2a1c53f97335', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2012, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2012 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ed85c6e1-86c6-4667-bd17-07ca08d9e95a', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2013, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2013 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cf087d90-86dd-4b83-b0c3-b496a2ebdeab', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ea9138e-e06b-4f06-8f8b-98d3913d75f4', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2015, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2015 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'c9c27921-d7ec-4e3c-8fe3-f6d1b9753eda', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a0c078d4-2d31-4f51-bd28-3c1a973c639f', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b8bc4256-3918-4f9f-8897-d96a49d9d99b', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN CES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '65f0b8b3-5321-4b30-bd18-a581ad26850f', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd5c75c1e-4be4-49fa-8506-1a14ebf2638e', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fae70908-cbab-4f2a-9593-eb523289c073', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f1e7e00b-7c6a-4e07-9b71-1a4ca061ffe2', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2011, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2011 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2011 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2523dad9-47db-4b16-b6fa-3381c17fe758', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2012, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2012 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2012 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5c2024ca-204c-4ed1-be79-aba519159ac6', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2013, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2013 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2013 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ae5cd8d9-1832-4870-bb86-14aa5e6e6c0e', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2014, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2014 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2014 AND version_name = 'TITAN EX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '974fdade-23a7-46d8-a58e-29d4114d8e3f', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2015, 'TITAN EX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2015 AND version_name = 'TITAN EX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN EX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN EX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2015 AND version_name = 'TITAN EX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '7eaee48a-e5ae-468b-929a-04953a07bc89', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '89e1a115-208e-40d6-abf4-e4ff2778e375', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3d9f014f-9485-458d-9d09-65dd140d6ee6', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2009, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2009 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd2b88ab3-b541-4c1f-a77b-fee69dd550eb', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2010, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2010 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a27a91b9-1009-4b48-8d7e-8e3dae8df715', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2011, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2011 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2ea4eaa8-c180-4614-8452-04a61e837da4', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2012, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2012 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '80f015a7-c854-4ab1-92df-7c9ad23368c9', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '88640c9b-1e40-4e76-8715-dfee7094a194', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2e3d1cf5-e82b-4dd0-9df5-fd8486e1ace8', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '53b47d50-4407-45ce-a77c-cb98be9b5946', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150', 'honda-cg-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c7e405ee-04d4-4314-9e82-a34f77912149', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2004, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2004 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2004 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '00689d98-af0f-4287-a18d-97041433535d', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2005, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2005 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2005 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '066f6b0c-4642-4d83-b49d-1d9504e37402', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2006, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2006 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2006 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'be7caa01-6852-4383-a5c0-f3521283de71', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2007, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2007 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2007 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '20491bc8-174d-4f0a-be34-82c783c69bb5', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2008, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2008 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2008 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '28b0121a-8e6a-421b-8762-7bc1267f36e6', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2009, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2009 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2009 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e2e34d8d-dbd0-411c-aa59-3d3ce7f673e7', (SELECT id FROM car_models WHERE slug = 'honda-cg-150'), 2010, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                AND year = 2010 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150')
                    AND year = 2010 AND version_name = 'TITAN KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a1d92971-8a74-4fde-b122-d1f489b5e575', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '43829ed9-63c2-4445-ac98-b3c65ca99f95', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 150 Bros', 'honda-nxr-150-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-150-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cf0aa497-f98a-4d0a-9e9d-0b02d940778d', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2009, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2009 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2009 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '66deb6e3-f2fd-4ce5-b2fe-1b977b203113', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2010, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2010 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2010 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '49f961c2-290f-467e-9357-f174916464fb', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2011, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2011 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2011 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '08765502-d555-4cba-af55-3321c042feac', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2012, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2012 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2012 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'db28412b-ffb1-497b-952b-1b89343e7eaf', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2013, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2013 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2013 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6f39826c-82a4-4b07-b84a-8ec2a2e80a13', (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros'), 2014, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                AND year = 2014 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-150-bros')
                    AND year = 2014 AND version_name = 'ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4970c5f8-b2ae-4884-908b-247bc92b8bef', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ba8df874-23df-44b1-8a07-e5592d001bd4', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Job', 'honda-cg-150-job'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-job');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '830a0441-b112-4b10-8dac-39151a10edae', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fbdebee8-c2db-4a9c-87be-e52292b5bfba', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '32580db4-6f18-41a6-9de3-6e290695d261', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '952e0067-b6e4-40c9-89ec-8de6bd26846a', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '82d63aa9-318e-403c-bd2e-26c301981325', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-job')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2e51deb6-d9f8-42cf-b48f-e1856320c6e5', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'eee42936-f6c6-4541-968c-16fd22f5c819', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 150 Sport', 'honda-cg-150-sport'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-150-sport');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '797fe848-abee-45be-89f1-d9f4ccf2b4b4', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd33c011c-c6d1-4b9d-be5d-c221324e2e01', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3b109e1f-bf81-48ce-9f5a-ae19090cf781', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a8f7d221-aba7-4ca9-8cb0-f77bd855d4b6', (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297140'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297140')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297140')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-150-sport')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'e5ead63b-38ab-4f55-a58d-852a40ce9101', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '85efd9b8-54b6-4b09-8238-e56412b213f9', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f9c5c47e-e40d-425f-a7b9-baeb80f5c8e4', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2000, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2000 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '681365fb-c0cb-4252-8a36-2df15d194565', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2001, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2001 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '49e8833a-320c-44a7-b59b-4cc0f284c25a', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '53f48374-91ce-4a05-b956-64dbcd75f10e', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8b8a2494-0bc5-43a0-9b93-33be6ec2839b', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Today', 'honda-cg-125-today'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-today');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd2fb96e5-c0d1-4b30-9e70-f205caf924bb', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today'), 1992, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                AND year = 1992 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1992 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a5e46b2b-4e13-4851-8f14-bb8dc61b7fef', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today'), 1993, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                AND year = 1993 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1993 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'adaf831b-624e-484a-b0d5-bc8f23dc3e97', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-today')
                    AND year = 1994 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '182198e3-be7a-4ee3-ab9a-6793b8c88e5f', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4ef6cbbd-54ba-414c-8906-d040a46b912b', (SELECT id FROM brands WHERE slug = 'honda'), 'Xlr 125', 'honda-xlr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xlr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '45d3b786-02dd-45bd-957b-c371ff0c9e09', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2b050858-40a4-4cdb-83c6-b26b50a45a62', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8b316ae0-4b44-44e7-ac35-e9f49ff8d9ef', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7d269550-4159-42d8-b1d5-061f6e67dcb9', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd6844636-f277-47ec-aa15-3aa151b2b2be', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f42e7163-ed40-449e-87db-ce033f611a0b', (SELECT id FROM car_models WHERE slug = 'honda-xlr-125'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xlr-125')
                    AND year = 2002 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'f2279229-2563-4dd4-a3bd-2221123f7096', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4d84daeb-b827-4d6b-8903-d1f79e46f822', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo', 'honda-cg-125-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fab554c7-13fa-4295-85e9-66ed526bb041', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1992, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1992 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1992 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '38359b78-011a-4ad3-8520-dd5466dd9328', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1993, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1993 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1993 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f5006b73-e4bd-4544-9960-03b534935093', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1994 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3c9cfe31-0c3f-43c0-acf0-cccea26a2fe0', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1995, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1995 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1995 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b72f70ac-9069-439a-833a-122e670379bf', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1996, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1996 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1996 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f98cc6ad-8c72-43f7-8517-cca99664d520', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3b9c853d-80fb-4888-b6f7-73f73e6526c1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '29f1e986-b47b-433a-870a-6db653b6d2ff', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0d5871ee-1724-406a-8152-ea64e0bb9215', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9c66a5a8-44f8-4bb8-a00c-6204e124cb58', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a31c8340-2600-4d5e-b432-41229d905276', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2bcf0dc4-6d04-4c27-8f1d-563babbd1ebd', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '509ad4d2-5013-412d-b02d-1066446e3baa', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ef5712d5-bb5b-4a8b-bbab-4f3aef8a1cfa', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2000, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2000 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2000 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5e9b0b39-3ae2-46d3-a69a-c6628c36618f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2001, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2001 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2001 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9cdc419b-3b3c-41ad-940d-af25d5995088', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297010'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297010')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297010')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9becf8d8-f300-4a4a-b0b4-1f9eb47caa92', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '264b77f2-9723-49f8-b972-e5d00adad9b9', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3a13bbae-d180-46b6-b92a-e75561182511', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e4359e9f-5b29-46af-b44a-9fe9dfbdd1e4', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2003, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2003 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bfca415f-fede-472e-867a-1c30cf716b74', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2004, 'TITAN ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2004 AND version_name = 'TITAN ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '8c1f0aee-12f3-4b68-8e2b-8e65afca7dfb', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '809016be-e11d-495d-8934-e20a24723d26', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'faa4e2bd-c723-41ff-90ff-b3b3cda64fcd', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN KSE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN KSE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KSE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KSE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KSE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e6570bdb-4590-431d-9f3a-cfc4be4c8ab0', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2003, 'TITAN KSE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2003 AND version_name = 'TITAN KSE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KSE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KSE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KSE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a149d00-1c41-4ad7-b287-cdc939f7b60e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2004, 'TITAN KSE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2004 AND version_name = 'TITAN KSE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KSE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KSE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KSE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '710c63b8-d3b4-4809-82b6-1dec3492fe80', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3ebe5c0d-610a-4078-a67f-f22170eee027', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3add4a09-6f55-4122-81c2-459c0ef7566d', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '695b22a7-3975-49aa-8935-d032ba869ed4', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '496ca777-6313-4a55-af13-ec8eb1104978', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '640fc604-7deb-42d5-816e-6864df5be97b', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '722a77bd-9e83-4b5f-8a98-69c5fed03b62', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'adcc7eae-3249-4e23-8f15-d1b9d95ccfbd', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Cargo', 'honda-cg-125-cargo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-cargo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3199c499-e062-4a01-b317-8c525d5004e3', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '096c758e-6ca2-4302-82e3-284722d51bd5', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6cae5121-89fa-404d-a9eb-737a02e20575', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-cargo')
                    AND year = 2004 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd8571955-2a3a-4b35-ae78-b19fec7bb3fc', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e35c6a9c-7349-452e-ba11-0cb9b1562173', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125', 'honda-cg-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e6156f37-3e27-4689-9bdc-7fd666760203', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2002, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2002 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2002 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd4083ff4-7a2e-4874-ac46-034eefc25382', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2003, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2003 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2003 AND version_name = 'TITAN KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4147c22b-fd6c-4840-a390-56d406f0b98f', (SELECT id FROM car_models WHERE slug = 'honda-cg-125'), 2004, 'TITAN KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                AND year = 2004 AND version_name = 'TITAN KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125')
                    AND year = 2004 AND version_name = 'TITAN KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'beae8ea0-1d61-4eaf-9c90-83418a7324e3', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4bef9458-61cc-4988-9419-abdd4d4ba5c3', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4272af98-42d6-4630-94ee-1cf51c78f455', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '05139aeb-34f4-4908-94aa-f1f7be428d3b', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '889f4206-0fdc-4573-abf6-f4f890bf0fbd', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'da644fda-195b-4102-8082-2da5cfe18eb4', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '947bbc5c-deb7-480a-a543-d91ff561835b', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cdec8054-eaf3-4dc1-8062-4a6ae45e6695', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b402104a-5e92-4c86-b6b4-4d667a141196', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'CKS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9afe5b21-26e9-4f84-a045-ff2f6b64b4d5', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2016, 'CKS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2016 AND version_name = 'CKS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'CKS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'CKS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'CKS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'fc0c38a8-61fc-47a4-9690-8cd08179c5d8', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9d380347-4ae9-4cbb-8d43-b25d97f540ae', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 125 Bros', 'honda-nxr-125-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-125-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '126c679e-b890-42ca-a67a-9deb59c4ed71', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2013, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2013 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '84c909a1-956c-4167-910e-9bbcf28821e7', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2014, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2014 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f7c0bc47-2f4c-4a89-a053-ff1486807142', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2015, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2015 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd9e8b62b-83b8-4e68-b354-9a630f4b800f', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7d3cea3e-9b57-4867-8880-e014927744d5', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '18bb61f6-8092-4fa0-b7b4-bba3dbf39e70', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1832e672-28a6-42eb-8d12-ec7243f86b85', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a703252-bf84-4758-92ec-97f04dfbec71', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'da932551-1f99-4bc0-a5e8-37120dcd5bda', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '58a85f2d-e4fa-4f4d-88bb-912121064c64', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f3c0b1b6-e571-4b1d-ac6a-9c5fd1d1b286', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '776fedc1-cef8-4e81-bb94-00f56c7a52f2', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '64bce481-6303-49ec-a968-1c660d4ba1df', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '56310e7f-6c41-4286-8fb4-31aef36d1bb1', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '31119c79-fc49-485b-bb41-d55784862eb6', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'ESD');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9d28c45a-2186-4e4c-aa25-6bc0a8744f99', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'ESD', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'ESD'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ESD' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'ESD');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1455324c-f1e6-42a1-8c49-492be252c2ff', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '648b7b14-ed23-4e5e-ad29-752f3237fa44', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2307ff58-7292-4084-ae89-1af216ed8e08', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e6923d5b-e2e8-43e2-8bd1-4a74ffccaa61', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '13a9b9b0-ba66-46c7-8db8-a706b35f6a55', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '92bc4976-55f2-4f12-b2c1-d84f7df300d1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '62148fef-cad5-4f7f-9226-ccf8477bc236', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'CES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b4f944ea-3ceb-4714-8c09-8d8f9f5cc073', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'CES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'CES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'CES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a3cc67a1-8806-4e1c-afab-7265097b22d2', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '79d9fb23-634d-41ef-bea8-37dc4b26f919', (SELECT id FROM brands WHERE slug = 'honda'), 'Cg 125 Fan', 'honda-cg-125-fan'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cg-125-fan');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '501bd07c-86f0-411a-9ad4-3a9cfe470a0a', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2009, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2009 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2009 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9e4f8ca9-78d9-4805-a387-4c891115c3c9', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2010, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2010 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2010 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c75c0be1-bde5-4b05-9a0c-f6e41c2de07e', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2011, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2011 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2011 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b4466990-f33f-4da8-a531-cf5c59cc1437', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2012, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2012 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2012 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ecab99e5-8ba1-408c-950a-036361709cae', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2013, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2013 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2013 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1bcf4500-e417-45cb-9149-d2b3b38ede07', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2014, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2014 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2014 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f73b2501-661c-45c8-a9e9-5e3c9e54e45a', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2015, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2015 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2015 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '51e1590e-5e9a-4b29-babe-eb1e5a8c2df6', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2016, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2016 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2016 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0209dd30-b578-44d6-9d9c-1a2da23f0625', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2017, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2017 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2017 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2017 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2017 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a1e44bc-c1da-449d-97a5-760ff3c01fc1', (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan'), 2018, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                AND year = 2018 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2018 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2018 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cg-125-fan')
                    AND year = 2018 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2f325df0-409d-4ec5-b51d-83b40580c3d5', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c2c149a2-9145-4cd3-b2e0-d98c09ef19f5', (SELECT id FROM brands WHERE slug = 'honda'), 'Nxr 125 Bros', 'honda-nxr-125-bros'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-nxr-125-bros');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e760995d-b4c0-47ba-993f-85d357d8a890', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2013, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2013 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2013 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '26bee48c-3e91-4638-b777-63e10e86d410', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2014, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2014 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2014 AND version_name = 'ES');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b780136a-3f38-4be0-808f-46c8568f73a0', (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros'), 2015, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                AND year = 2015 AND version_name = 'ES'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297160'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297160')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'ES' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297160')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-nxr-125-bros')
                    AND year = 2015 AND version_name = 'ES');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '38af31ab-ed88-4806-9e1a-f57d14bc5f44', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '9ef790c0-cb53-4945-9157-1897cf6e0942', (SELECT id FROM brands WHERE slug = 'honda'), 'Cbx 250 Twister', 'honda-cbx-250-twister'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cbx-250-twister');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ace42ee6-adee-46ae-be60-e029e7554eb0', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '20aeb901-8e2b-4e3f-a209-178f3d1d5c38', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '815d9355-579f-4f35-b068-e4dc1932f269', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '86246cb9-005f-4198-9a2a-e0c20569636e', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '887c0d62-8f77-4f14-a348-d101d5afe960', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a11fa909-d5d2-469f-a5ea-d90e162ba031', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9282a0b3-7173-4963-b481-4486f1f51e2a', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '994b80ec-58a7-44f8-9930-21c3f3b7b13a', (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cbx-250-twister')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'a807b0ea-d766-4665-aa65-3c406d9d0287', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '2cee73a0-cb78-4fbb-bf6c-d1fc4e23cded', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300R', 'honda-cb-300r'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300r');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16e3817d-a9d9-4e28-9abf-f0ef3416d195', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c3b66f6d-7e99-4f0a-858a-6aca77ca24d3', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c7541d22-a835-4db9-9480-4b2f3666ecd2', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '870c3892-4070-420e-9b52-bf9d997a6d0a', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c3434bdc-98c4-4893-aa2b-9a318e53ac91', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c4aa121d-fc9a-444c-865e-eeef0ed0166f', (SELECT id FROM car_models WHERE slug = 'honda-cb-300r'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300r')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'bca2ea56-3d96-418d-8865-367a773d6c46', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a003894f-8122-4173-8129-b21ec59dcea5', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 300', 'honda-xre-300'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-300');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ae8984b-9bdd-4fb3-9e2a-1ff667d324b5', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2010, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2010 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2010 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2010 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2010 AND version_name = 'FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f0221716-3a0e-4fd7-8d66-9a4499e326b3', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2011, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2011 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2011 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2011 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2011 AND version_name = 'FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '03299f11-fc76-45f2-83da-3573211276cf', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2012, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2012 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2012 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2012 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2012 AND version_name = 'FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '572450fb-a321-4cd8-b678-46c4f89b293e', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2013, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2013 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2013 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2013 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2013 AND version_name = 'FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd7d57621-3aa3-4e16-ac74-95b022413079', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2014, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2014 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2014 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2014 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2014 AND version_name = 'FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dd81ae42-5f70-4475-a6d9-cb583194d154', (SELECT id FROM car_models WHERE slug = 'honda-xre-300'), 2015, 'FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                AND year = 2015 AND version_name = 'FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2015 AND version_name = 'FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2015 AND version_name = 'FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300')
                    AND year = 2015 AND version_name = 'FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '63d80f0f-1af5-435e-bd67-d19906b480ed', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8d327c92-4170-4243-a3d4-d16264fbf041', (SELECT id FROM brands WHERE slug = 'honda'), 'Xr 250 Tornado', 'honda-xr-250-tornado'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xr-250-tornado');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '21abf66a-453f-4dbe-8675-b078e6bf64e2', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5b1ec54f-d59a-444a-8cdb-5c74b1ca718c', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c4b1f20d-ccf5-45e1-ae3e-cacb2885adff', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '456cc3a7-a926-4fe0-9c65-f2c2863041a9', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0efb70cc-9bf8-4fa2-87c2-ae4756230d2a', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '41915b35-cf05-4b7f-a411-af0f57ee158c', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '74b38f32-2519-4fc6-bebd-7193e6a8d3dd', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '914d9aa5-a65f-4483-b1f3-04271d294ae5', (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xr-250-tornado')
                    AND year = 2008 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '21dbcbe5-d756-4cf5-bf77-fe311672baa6', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'e5a5d67c-02f9-4b34-a354-cbc73979e09f', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 300 Com Abs Flex', 'honda-cb-300-com-abs-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '20a45abe-207a-47dc-baa7-691b6c8868f4', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0142057e-f7e6-4841-a7c0-9f75bbe73ab5', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd23f4903-018a-437a-aa0e-afa41f29f707', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ab91246c-bb8a-498e-b114-4d9fba6c3f3b', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '94d3e7e0-e4a2-451b-ad87-4d5f7dda6de2', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '06839327-67d6-4a7d-a675-484edd23a7bf', (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-300-com-abs-flex')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2a28c966-5a61-481a-b1b0-48b99588db50', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8985ef42-71ff-40bd-9c3f-e6ff2fc11ce0', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 300A', 'honda-xre-300a'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-300a');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1b1d6851-0062-42c0-b089-1c7f10580af9', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2096a2f6-772a-4952-9429-adaa8218523d', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0f6573ca-ffe5-40e0-9bae-14d59c7e050e', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7e6e3ec9-2898-40cc-bab0-04323017ebff', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0cabe03f-178f-4ee2-bc35-126a5367406e', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '25a77a5f-2f59-41cf-b631-fa11a4a5b7d0', (SELECT id FROM car_models WHERE slug = 'honda-xre-300a'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297040'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297040')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297040')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-300a')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '3dffa061-48e5-40be-8120-e41ce91d15d0', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '97c5b39e-7a18-4cc6-88ce-30dbfa4fdbf2', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 250F Twister Abs', 'honda-cb-250f-twister-abs'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-250f-twister-abs');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '50716536-1d87-43f1-9ea2-371f23a04c0a', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '03a386cd-2030-4b41-b998-9408e44b4182', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '67d76957-5cf5-41c2-8b8e-4d9463442b0e', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ddd95f7f-f727-42ef-a7cf-8471630380a7', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '485e8d86-945e-455a-ba3f-0d8901e69714', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e6ad87d7-1a48-4da0-a7ea-c40564216788', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'afb969f4-4f44-4b2a-9b9b-8ad379eb2c78', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-abs')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1e1cba7f-436c-49e9-a78a-c900c55320c8', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '846beaea-6af3-4a99-a4cf-292874be2a26', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 250F Twister Flex', 'honda-cb-250f-twister-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-250f-twister-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9b0bffd0-e4c5-4498-9615-3294c4ddea11', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eecca826-9727-4931-a9f3-e0c417079c5f', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '110a72b2-ea4b-4045-8e9e-fe3617d835d5', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6e2f41aa-4883-4ceb-8982-36c691bc9adb', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd4d598dc-aa1a-4ea6-952a-461676ba4f32', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-flex')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'eb1d8fd2-458e-4671-b33b-626c010182a1', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4b2ebd3e-3743-4bb7-a7e8-7f9a7ecc0780', (SELECT id FROM brands WHERE slug = 'honda'), 'Cb 250F Twister Cbs', 'honda-cb-250f-twister-cbs'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f4555977-c0c4-40c2-90a4-1b1ebbe7f5c4', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fc5e440e-4447-4338-a044-e0e4e7794cbe', (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297200'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297200')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297200')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-cb-250f-twister-cbs')
                    AND year = 2022 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '11c528d7-7c3f-4377-8287-cc25d0f8bf60', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'fd530051-e56b-4e05-b5d9-97138a6d59ac', (SELECT id FROM brands WHERE slug = 'honda'), 'Pop 100', 'honda-pop-100'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pop-100');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ef7f83a8-6a15-460b-b06f-593f9e4e9898', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2eba5204-a8b7-451c-85e1-27b095673cd1', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8896de35-48ac-42d0-a947-c458c24719c5', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd95678db-bff0-4c8f-b732-0ccd1c017f1e', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '89eef91a-6f09-475d-aff4-0a873049d0c4', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '50540200-01fa-4e11-8c21-5ff4b1e746c5', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3b32caf8-800a-4eff-9851-01ade1ee23fe', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '98c92f87-a1d2-426d-9795-ebbc26da4ce8', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '635dc353-95ef-42e6-a90b-32912ebe50e5', (SELECT id FROM car_models WHERE slug = 'honda-pop-100'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pop-100')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '95268c15-a6bf-4e0e-bffb-10259c02b68c', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '5a0aed1d-acc0-4b44-b168-7253be26b1f5', (SELECT id FROM brands WHERE slug = 'honda'), 'Biz 100', 'honda-biz-100'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-biz-100');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fb1a34fd-e03a-42ef-ad85-f2baa0059d41', (SELECT id FROM car_models WHERE slug = 'honda-biz-100'), 2013, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                AND year = 2013 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2013 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2013 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2c14d59f-4b0d-4b16-8c72-73ff478c1a0c', (SELECT id FROM car_models WHERE slug = 'honda-biz-100'), 2014, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                AND year = 2014 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2014 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2014 AND version_name = 'KS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f4130138-4c69-426a-992b-53f9567f6736', (SELECT id FROM car_models WHERE slug = 'honda-biz-100'), 2015, 'KS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                AND year = 2015 AND version_name = 'KS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2015 AND version_name = 'KS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-biz-100')
                    AND year = 2015 AND version_name = 'KS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'af868ca4-71d1-4083-a730-3d9ca4e72820', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd9fbdd88-cb51-44b3-8d18-73cb27cc0833', (SELECT id FROM brands WHERE slug = 'honda'), 'C 100 Biz', 'honda-c-100-biz'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-c-100-biz');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ba88a33-9162-42a7-bf11-6a39a1ea2c7e', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '78efa0a9-4453-4b0e-bb10-33f31084f1bb', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e8d22803-9547-45ae-ad31-decf9b362db5', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd7bf6e95-2803-4da4-8683-716b7be995c8', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59ed3e29-78d4-45cf-8208-4f5cc733177d', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cfd61ea7-a6d0-43f1-a0e0-890f9164d09f', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '99202591-6f9a-4b74-bda2-028272b78424', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1e210477-76b8-4e09-bf51-95309f2166fe', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297110'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297110')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297110')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                    AND year = 2005 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b400c687-b246-4964-92ce-0b7d0e2ad1ea', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '51f579ee-3887-4720-945e-7f41e033eb99', (SELECT id FROM brands WHERE slug = 'honda'), 'C 100 Biz', 'honda-c-100-biz'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-c-100-biz');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '21f23180-8bc6-4c6e-a67d-91c05b213b2f', (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz'), 1998, 'ES', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-c-100-biz')
                AND year = 1998 AND version_name = 'ES'
            );
            