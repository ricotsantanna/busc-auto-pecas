
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b42d3c9e-ea88-4073-b015-2218508c7c63', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '28f063bf-3594-4aeb-93c2-6367605957dd', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e5e15856-33b9-4c0e-a78b-ec63a7cb9d28', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2011 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'bf48b589-802c-4286-8d53-f9dd79db2093', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '42a3f7e6-3c78-47f2-87d4-bb975f0aab8e', (SELECT id FROM brands WHERE slug = 'fiat'), 'Strada', 'fiat-strada'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-strada');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9263ab51-b42e-44c5-b50d-8400fe12c765', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8a2ce73-9d82-4613-82f1-aa193f5d8677', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e05a52b0-6048-490d-bcb8-cda78a78e76c', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6e2be341-cb2b-4447-a77d-682933660478', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '08236bc3-b2dd-4450-8965-12941e5f9253', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ded59359-58f7-44e8-9ad7-7c1f267dafe0', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'be17e183-9f29-49b5-9b37-0fe46414bbd0', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8140ef1-7a84-44d3-9542-ab2cc1d76cf1', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59ce3342-2dfd-4c22-b196-73b55e0c199f', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e9979c1d-bdbc-40f4-88aa-5aa5d3d758a1', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6a3e25bc-8116-46b6-a6b8-aadb7cfe16a1', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9236243c-2a53-4183-a45e-492a4d022f9d', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '221b64eb-26f9-43bf-8b35-88b7584b16d3', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f804698a-86ba-4130-8334-0f50b399d184', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ef001ca6-bdf1-4fb1-898b-1228ee04bf43', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '474cf96a-f95e-4e61-86fe-355bd44fbc98', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4049911a-5967-49f9-b91f-d13cc70ba150', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e18c8a55-134e-4cc9-b8df-c5d1011b39ee', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '59dde66d-4d7d-4ba5-9c4a-e68ce79c3775', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '75b2dd9a-a6c2-4872-b747-12cd79c15b8d', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'defc08b9-162f-40b1-adb9-2dd1f719b36e', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '95560af7-e74d-4faa-a747-c711f324eb40', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '92499a45-b508-4cfc-8865-9a5f77c16b31', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2218')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2218')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1506a854-2bef-40e7-990d-778f25500dcf', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '2d3fd741-f760-4391-961a-ba38ad5017a8', (SELECT id FROM brands WHERE slug = 'fiat'), 'Marea', 'fiat-marea'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-marea');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c15fc29f-bf9b-479b-b5b5-bf7747b1769d', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9924d3f3-9145-4a13-b298-f9cbb4590e86', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fe27306a-e734-4c8b-b69c-8e3e90f875e9', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b84ccbf7-745d-4ea1-a5c3-4fb6d6fe4e95', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ed2a635d-bb8c-46d6-b579-165ba4948111', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9102e0c4-a47c-4fca-89db-f3959e9dcb71', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7cadb05b-5cdf-43ed-9abc-14cabbd6911d', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e9faa914-479c-4658-85c9-830afa3e7129', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e1aa9bb9-5fd4-4c84-9aa4-1228d7ce594e', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4b99f066-5c6e-489a-b495-0da5d2b7e7f3', (SELECT id FROM car_models WHERE slug = 'fiat-marea'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-marea')
                    AND year = 2007 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '959b29fd-1d3f-4cd7-8a0e-08ce188915d8', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3f2eda03-68be-4544-a61f-50b8ba797216', (SELECT id FROM brands WHERE slug = 'fiat'), 'Palio Adventure', 'fiat-palio-adventure'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-palio-adventure');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eef36bbc-d375-44d9-b3d3-2777d5f765bf', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '348238db-e52d-4417-a95d-5d3d448b39e8', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1c357bdc-3b74-4ddf-8aab-55977c095f23', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6003dde1-03d8-4a71-a339-8608c1d0836c', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '91220992-90da-4676-b881-22382c72414a', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cc7e0f3a-c6fe-4921-a949-034de7ecd10a', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '97d12eae-00ba-46c3-8dc9-e49e4db5fdc8', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff8d34c7-4d02-42e4-8c09-2322873acfdf', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3da74929-40c6-4aa7-bb06-5c7770f2afad', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bd80dea4-94ee-4479-9357-8903c979d1a3', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '591703ec-5753-4346-bcfd-de9937eec4a3', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e9a043fe-09df-46be-96cb-1bb83d19aa64', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9fd9466b-fd18-4100-8de4-5648611c4987', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '74617356-60c5-4dbb-b162-3af0a169125a', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '568a1bad-6ffd-4615-a62e-ce4e02a1752a', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3d8b8105-2e34-4ab2-afdf-e69e18a7d19c', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7fa92c0b-173c-48da-a877-b84df2f1dc13', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd106e1e9-d732-4b4e-a0db-adbe3a6841ad', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a7632666-d625-4e69-93b6-72452d44c595', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2017 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '2c9d6296-1026-4603-9ee8-ac6efba67707', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd8578427-bcfc-4e1d-9144-419f49dac000', (SELECT id FROM brands WHERE slug = 'fiat'), 'Palio Weekend', 'fiat-palio-weekend'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-palio-weekend');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '56feedd5-a0e3-4dbc-9988-402cc92e0172', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1a46ca11-f153-4b99-8266-d450d29259fe', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9f004a06-7147-41c6-a49f-5a45d0ca5a7e', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f223d9e3-d37b-4d0d-aee1-287d2fe0c840', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '040e35ab-bcdf-4f09-b34c-0edff75344ee', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '232361f2-8c00-49ed-988b-9745d5691fa8', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e22df4e1-4870-466b-a3c7-8fbea3987937', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'abf7813e-f52b-4493-af5b-f855f4ce7b8d', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '247bf11b-5307-4313-af6f-c660eef7d3c7', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '21711e30-1ff7-438d-9e87-ac4ce470e87e', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '11cf9ce3-bb9e-44ca-bdf9-122e190d6d31', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ce83fe7-0af9-4bf2-9460-3490136cc1a1', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6ffe56f0-86d2-41a8-9f48-2af67d845b1f', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9be42cb9-6abf-42e2-9658-196a119980b9', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b902a5db-18a2-4787-b0ae-865fe3d9bbce', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '71547f54-62e1-4501-ba8b-b06517e841d0', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0f159e37-8d27-44ea-b2df-368000f85840', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8973c086-b557-4721-ae08-cedb240b40cf', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '860595c7-fafe-4df3-9b72-b698e36b2dc6', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4fae2caf-c7ff-47d6-99c4-f8bd21c7c14d', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8451cc16-637e-41fa-a534-d74e6b0fe2dc', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b05603f6-9ea0-4cb0-a219-6f66f1fa6104', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '43c96288-2877-4f91-bb17-4cafef1b6079', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2e8a338f-f535-4d86-8498-eaf2c18ae567', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '8dcde141-ad68-42e2-a477-0dcc9ae46994', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f39553cf-31a8-4064-a322-b49e30850a4d', (SELECT id FROM brands WHERE slug = 'fiat'), 'Siena', 'fiat-siena'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-siena');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7b911b75-3a42-4a4e-9e3e-3ddc71801853', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f9e3a1c7-6f1a-47e0-ad5f-8050a5f3071b', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '341bb185-a242-47d8-9fb0-eb276aba4181', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f075903f-0ca6-469c-9924-15cf7f66903d', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9d9c367c-5f84-4d6b-8143-e7f81b187567', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '39169cf4-ac86-4ab1-a2f2-0c3edab991c3', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b3734004-e264-4e3a-b35d-93a70cf3e642', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f3396a74-6e39-40e3-9f28-a2ed186a4b67', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '26b3e9ab-0cee-4acf-a8a7-5738f4919c61', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd1ce0013-03fd-4eb9-80a0-87d0dcf87b45', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3230d928-f0e1-44a6-99df-fa29b529795b', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dfbfa799-4b40-482f-a142-e011dd91efe7', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd6a3318e-a762-40dc-95d2-44de51b347a6', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '78dc3960-fb84-4aa7-b5c3-fb6a50877db4', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2c1cc26c-fc67-4e8f-b243-8928e09c1397', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '53158893-6351-40ee-9fc3-2a4121075874', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c16eee0b-a0df-415b-aadd-2b608911990e', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd5d2486e-d549-4bff-8663-176adf16474a', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cdea2dce-5ef8-4cfd-a0e0-d1014f2a02d6', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f1498d83-7e5d-413e-a7d3-5a8c89bf33f0', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9618b539-fcb1-4e9d-ab05-916a7b442de1', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ab07bf65-d65d-48e5-9f74-b4335f06a030', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2018 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd0e94c92-3ec4-44a5-8033-1549230d78c6', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a9744da3-fb35-4473-bee3-9101a76dfeec', (SELECT id FROM brands WHERE slug = 'fiat'), 'Strada', 'fiat-strada'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-strada');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '964daed9-1618-4c79-a775-bb0c6a07ab14', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff570913-78fe-4f12-92bd-107303aed2c8', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '37086b4c-8717-4801-9415-168eca8d51a2', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bb80d834-2108-40ea-9de1-61204b5fd643', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5fd8c902-7061-46a9-ae81-e057f9991e76', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '42ff7846-7a45-4049-84e5-ebe8a34402d5', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '916a4aad-b92b-4c57-9539-2c0079a0d304', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ab4ab89-fc94-4455-8305-ddd2b27de1d9', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4ab6b013-2e9b-425b-ba27-7ed44e3bc169', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1e9708bb-7031-47c9-8ffe-d4b86041b9ce', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8f3435cf-f70c-4a6a-83ba-6bd250f36598', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '619dadcc-8683-49e1-bfab-4d981ed4f849', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '974f1bd5-2781-4de3-8b5e-9e266a089220', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '071a14ee-e896-49e2-b7ae-0786142109e2', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5e5196d4-9f75-4a2a-8803-66ecfc39c86b', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f2b3c70a-2a15-4d13-a89d-efdab9dc851f', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd53f6f70-23e8-4540-bfc3-8acaa9e33f77', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9c22d33c-c231-403d-ba1d-fd5591facd85', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd293d978-f9eb-4f9a-8401-0597d3b34387', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bddc5fa5-e4ed-46f3-a162-c535d3337da0', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7891000d-3a73-4c2e-baf9-872548197f21', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a5a91d70-b216-486a-b17a-71b6dc4c5a7e', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c4292732-70d5-4cb4-bab6-b9130e5ba0a2', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2318')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2318')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '48a61f51-afdb-42d4-b58e-8640449d710d', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f0dda306-4533-4990-9c05-2286700663c8', (SELECT id FROM brands WHERE slug = 'fiat'), 'Mobi', 'fiat-mobi'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-mobi');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b2ceb747-0ae9-4d5f-9b75-4e929bef90bd', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0016G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ce2ca6e3-90d1-408e-9885-f3e5159f6e9e', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0016G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '40cdb615-ab43-4a9d-a769-f0c26ed52093', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0016G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '958f5773-7196-45af-941b-068265f98bac', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0016G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '43d76a39-70c2-4142-9110-20cf3dc25faa', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0016G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0016G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'de7f6320-654c-49d2-99cf-46e3246a9c69', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c74ff057-438a-46e6-a64c-6d68b9fe1bbf', (SELECT id FROM brands WHERE slug = 'fiat'), 'Mobi', 'fiat-mobi'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-mobi');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0d260f82-d172-4eed-a625-bec54835e73d', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2416G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e3cfc311-eb7e-4ef5-849c-b971e2c92f72', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2416G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0783748c-6881-493f-90c6-006bd1d1c558', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2416G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9966899d-cea7-4024-b7c2-4efe8beeb05e', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2416G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9d4d7fb3-9d05-4a9b-9c7d-14f82db94c70', (SELECT id FROM car_models WHERE slug = 'fiat-mobi'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2416G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2416G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-mobi')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '68d5015e-68b2-4c2d-a8b2-a10c0d1a327d', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'fc88e86c-f5d1-4736-a2b1-646110f0a05b', (SELECT id FROM brands WHERE slug = 'fiat'), 'Palio Adventure', 'fiat-palio-adventure'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-palio-adventure');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '137cc7c7-4863-468e-9147-a5f8c3bcbd9a', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5140401e-d77d-43f0-9354-bfbc14a447f8', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '130551de-c4a5-4330-801d-8f905cf96d4b', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '71b3f4ea-5dc2-4dea-abb4-5dd2f345636b', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '52ecc0b5-021b-484a-82b2-a0153ac0eee5', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9acc65cd-6cff-43e5-8e72-5fa015f89b7c', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '114b1a6e-e7be-4e1f-a09f-caa7f688e767', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bdb85c7e-ead9-46a9-a8da-2055c0d0ce7c', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '35455ad1-a017-44d9-81c1-66dee1687ac8', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '95e65064-7351-4b56-a087-09dcd390d89b', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd5bceb3a-7ef7-48e3-a8b2-98734c9afaec', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '14afaf34-2718-45ef-9ce2-263e1ff01b70', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4b892103-4bf4-4803-a49c-2e9f693546ba', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '989dc1d4-52ff-467d-8c26-493705ab1c8a', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd9f976c6-3371-47d8-b74e-bffe5028db14', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9397ab67-5fb5-4cd9-944a-9995ebf966d0', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '126574e5-35cb-47ef-9bc8-cf6d9d5afb34', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a930db8e-6453-4d51-8ed1-c50b70f8ade2', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b86528a5-b247-4c44-8dc8-4a0cd9dbdf31', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2017 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'df1ec3a8-f9c8-4aac-8199-6a32d16a8079', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'bd8b26ae-0dbd-465e-b630-83b5c4600c13', (SELECT id FROM brands WHERE slug = 'fiat'), 'Palio Weekend', 'fiat-palio-weekend'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-palio-weekend');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '340d9f0b-f090-4b2b-94aa-e6a0caa33634', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd63fc82f-47b8-4881-9a6e-7fdb87381bfb', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fb9c08fb-d24e-4a5c-bcfb-b6b3bed7f506', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5da9e95f-2d3d-4c0c-963a-ccf8a06113b0', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '07743e64-0e58-4ef1-8778-b3f35e5e98af', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1654a668-2740-4ecd-a5d9-7cc2dc49cdd6', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '33d12e13-54cf-425e-88a7-cf0410b78335', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '454386ba-0667-4b7f-9f39-4f3aa4f8193c', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4d4ea24d-45cd-4214-bd78-ee2f85659f2f', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '618e1b35-53f4-4026-95ff-3a6bf15bdee1', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd625303a-4b2c-43c2-8c88-767d9764ebdd', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '97b85190-5ce6-4834-b030-ac12de8747c6', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fbcfb2a3-7f53-4e36-8e6a-160f5ebcbca4', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '83de064f-9d35-42d1-a918-fd0b3da1902c', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9ad31cd8-d863-4240-80a8-8f9bbc9e3388', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5e71c5ae-52d3-41f5-a149-cf2023a07088', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6cf333d3-f800-46d0-8576-3656e9b6d36e', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16eca104-3764-4d38-835c-203d0fe113dd', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a8cd592-3a2a-40be-8eab-ecb31ee44b12', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b4f0dbcc-2224-4be8-bf26-24c6dd025612', (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-weekend')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '8245bac4-2aa3-4038-a72a-ade0155eff75', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '602b6209-584f-45b9-a9d8-c5dff3599da8', (SELECT id FROM brands WHERE slug = 'fiat'), 'Siena', 'fiat-siena'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-siena');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dd49884c-3df1-448e-9442-2b96ed096c44', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 1997, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 1997 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '71c3e02c-3057-476e-9ee1-6511f4c10c51', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '369fcd41-591c-447b-b4f2-d8623623bd46', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '73ca1067-d967-4f40-b2d6-174dd82e67e9', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fec78587-53e9-46bf-9361-c438b3b18f87', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'be9afce3-7d27-475a-9570-04d26c1fa2b1', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9730042d-b689-441f-a3b3-b9fc29b3e88e', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '202b89f5-7f3e-4bc8-acce-f0055d64d5e1', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '71be40d9-0adb-4a5c-8f18-2aa3b924e7ba', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1f0f7868-1e5d-4934-b617-13e06e3a8ea1', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e396f751-339a-41d4-8df0-efdb05a60d77', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '49c9f4a2-94db-490b-971c-d46d4795895c', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ebba1397-dc80-4892-8795-8e15cfa71eb4', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3c941144-3243-40ad-9026-a5c6f05af40e', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'db707c59-aa2c-4c1d-bee5-6e624f34a50d', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6c27f1e6-04b9-4238-8777-d0a769194592', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a6b5ff9b-0edf-49b7-a133-9277a635bfe6', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2dcfeaf6-f4cc-4a4f-8a25-6679a54a6a31', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6d318ea6-6980-4364-92ef-ea69e4a87aed', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '99e9d106-e6b9-4680-a7e8-5a9252b0802e', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '538d8181-1a7e-4181-b511-95649e539513', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e96bb977-eda5-42f9-a8e4-84fff3a3be26', (SELECT id FROM car_models WHERE slug = 'fiat-siena'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-siena')
                    AND year = 2018 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '191f5dd1-cbf1-4f71-92ce-efad1133f636', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '60424969-54f4-42ea-92f3-41a2ff65b11f', (SELECT id FROM brands WHERE slug = 'fiat'), 'Stilo', 'fiat-stilo'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-stilo');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ae147879-1dcf-4ad2-83e3-07fe325452b7', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b75d3485-979c-4de5-8e19-3b181383ed50', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bc18fa6c-7a3f-4f05-b627-20c1b99f2bae', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f729b84d-283c-4eb0-a2e6-0e4443e96856', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f97cb1af-fd91-4f59-804f-ad805dadf45e', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8b53406-86cc-4387-b6fd-1fd549f1df05', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '89effd4f-6887-4e4d-88c5-65b6d26f273b', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4c71c089-77dc-4b15-a535-ea127dc1644d', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fb19ef19-286a-4d22-87fe-fc44d2fdab3d', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'effc8c57-370d-49a5-b56f-1e2f6ca68e5a', (SELECT id FROM car_models WHERE slug = 'fiat-stilo'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-stilo')
                    AND year = 2011 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '05f0b5eb-31e4-41b9-9dc2-5dc68c8ceb77', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ac0a7f87-1834-4477-9c80-67e042040a59', (SELECT id FROM brands WHERE slug = 'fiat'), 'Strada', 'fiat-strada'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-strada');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9c8ed07d-4624-4cb2-90b0-88db31cde065', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b3149374-3f66-4f4b-a99a-1a94157fe78c', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '19fb082a-450b-4e86-aafd-5937ad44ec66', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7b493031-25be-40a7-9286-e14cc0f1c881', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5b2a1aa9-8128-4ed2-a4c9-681b72413772', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a04bb59-74ec-43ef-92c7-6693ebbcb559', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '503865e4-8cb5-4368-9094-aa239cd87be4', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eb024144-065c-41a3-94dd-2010aa3a4699', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5cde577b-e9c7-4076-8da6-c266cffd8d8b', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b0e6c29e-9480-454f-9263-705b964522ad', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aad95d20-ca2d-45df-af36-6ede6e720f10', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aae6ebec-7a6e-4602-94c2-648810c91a70', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '793b8b15-afdd-4c98-8002-135a4f947ba3', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5864684c-e8f5-4c9a-8cbf-559db7c79446', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '04a269c2-e4a5-4d4e-ac2b-49afdd50d5e5', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1ddc9e51-98d3-4c97-8659-bfa101716393', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '57a8a845-54d2-435d-8cc5-ec5fcbd3c98d', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c6554981-30c6-4adb-8aa2-bc7d4b63eb2b', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9456bcb0-797a-4e2a-b437-210213601d1a', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ad3d8187-e6f3-4b4c-83b6-656fc2d0fc89', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5967ab33-d6e1-4867-9603-9170641b2563', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cd49e40e-da59-4cf4-a352-c03ea467d8d7', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a17b8e06-67ad-4907-8558-7d2f168aa3d0', (SELECT id FROM car_models WHERE slug = 'fiat-strada'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2218G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2218G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-strada')
                    AND year = 2020 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '07947a69-f820-4c34-b0e3-7a674d0e92f9', 'FIAT', 'fiat', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'fiat');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '66961d2c-5a58-459a-8b27-9369563aadc8', (SELECT id FROM brands WHERE slug = 'fiat'), 'Palio Adventure', 'fiat-palio-adventure'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'fiat-palio-adventure');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f20bc155-2d25-4b8d-8966-15bace3ef6ec', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0022G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '97408a56-5457-4fd2-aca1-758a491e3d5f', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0022G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c0e52f0c-0bb7-4f04-bed2-5fe839310fb4', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0022G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4641ee57-95e2-4b5d-a5b0-0ddfed0cfa08', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0022G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c260aceb-fe4c-4a3b-a7b7-9618540cfce8', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0022G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3fe8255e-b22c-41b4-bf6c-281f93f6b464', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0022G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd0e13d32-898c-406d-9bfc-4e2a4f9af674', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0022G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0022G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3f488bfe-0e93-42d9-8728-eee74c9f0293', (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'fiat-palio-adventure')
                AND year = 2006 AND version_name = ''
            );
            