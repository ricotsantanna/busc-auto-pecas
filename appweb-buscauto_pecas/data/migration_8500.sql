
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1997 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1997 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8e8f9cab-9cf1-490f-b404-930a96a4c7d7', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 1998, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 1998 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1998 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1998 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aab96e01-b767-4cf6-a5be-f4e3b40050dc', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 1999, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 1999 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1999 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 1999 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '29085cef-31ed-4b6a-94f1-ac040c82de54', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2000, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2000 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2000 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2000 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '377df37d-e110-4fe9-b593-9b740caa362d', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2001, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2001 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2001 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2001 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2b48ccc6-c9f0-489d-b88b-f7e1ede48a5c', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2002, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2002 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2002 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2002 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '11903956-9274-41b6-800f-6a5b5db49cad', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2003, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2003 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2003 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2003 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bc8d9260-65d8-421b-b4ae-f03c122a16a9', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2004, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2004 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2004 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2004 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fd96941c-feee-44c7-bde9-2642ba393e9c', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b215922c-a627-49c3-ab7e-277164509345', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '37cc9002-ef5c-4101-ab5e-84218bda996e', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3537d744-38aa-4947-8d0e-06baf0964c11', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c35ab618-e7f9-4b68-8949-ce82e1ccd444', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4625d3dd-23cd-4216-a86c-816615f6d65e', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a84b9509-7359-4f2f-9c31-054baa23f338', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3340eff7-683f-4c84-8aef-52713dafcca8', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF1818G')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF1818G')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2012 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '8f018f82-0ba2-4b72-b60f-34dd787288fc', 'FORD', 'ford', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'ford');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'd083f6c8-b320-4adf-acc8-5c79b265eb35', (SELECT id FROM brands WHERE slug = 'ford'), 'Ranger', 'ford-ranger'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'ford-ranger');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5d2fc315-9436-4dea-b01c-01327d077466', (SELECT id FROM car_models WHERE slug = 'ford-ranger'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0014L'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF0014L')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF0014L')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-ranger')
                    AND year = 2017 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '9821ab96-4bdf-4289-8c69-0e2ea698a27f', 'FORD', 'ford', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'ford');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'f3aee136-0344-43ee-a305-fed5090ea198', (SELECT id FROM brands WHERE slug = 'ford'), 'Taurus', 'ford-taurus'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'ford-taurus');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4c4dcb48-aea1-4c2c-aa46-b27406844951', (SELECT id FROM car_models WHERE slug = 'ford-taurus'), 1992, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                AND year = 1992 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1992 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1992 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8bccb481-9903-4f17-b236-b4aea0ed6b0b', (SELECT id FROM car_models WHERE slug = 'ford-taurus'), 1993, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                AND year = 1993 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1993 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1993 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ea40ebed-7870-4a7b-9be0-76015c6f19d6', (SELECT id FROM car_models WHERE slug = 'ford-taurus'), 1994, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                AND year = 1994 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1994 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1994 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c359ff15-0d46-4aa2-81a9-dc3465317cdc', (SELECT id FROM car_models WHERE slug = 'ford-taurus'), 1995, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                AND year = 1995 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1995 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1995 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c49c6473-6aa2-4200-88eb-ca03ea06533e', (SELECT id FROM car_models WHERE slug = 'ford-taurus'), 1996, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                AND year = 1996 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PC2020')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1996 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PC2020')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'ford-taurus')
                    AND year = 1996 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '70a229b0-5f80-4395-953e-dbbd7e25214a', 'GM', 'gm', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'gm');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '8ab10515-a4cc-4ff3-8b74-656a8585209c', (SELECT id FROM brands WHERE slug = 'gm'), 'Agile', 'gm-agile'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'gm-agile');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a036a97c-13c1-4125-9eb2-a697211486bd', (SELECT id FROM car_models WHERE slug = 'gm-agile'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2118L')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '24a33beb-23a6-484b-91e7-19a8cdfb754d', (SELECT id FROM car_models WHERE slug = 'gm-agile'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2118L')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2a6d0d64-374f-4220-8546-d642a1123826', (SELECT id FROM car_models WHERE slug = 'gm-agile'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2118L')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c2feaad1-d4a9-439f-87e4-76062982e2e1', (SELECT id FROM car_models WHERE slug = 'gm-agile'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = 'PF2118L')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = 'PF2118L')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'gm-agile')
                    AND year = 2014 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'fb8f7365-80d5-4563-bc21-797831c54496', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '0b408d9e-3e61-4458-b1d4-21bd18b12841', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 250 Fazer', 'yamaha-ys-250-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-250-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16195485-323c-4305-98a8-fa6f188bb5d3', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4042e77e-1ea9-4de8-817d-dbee00f3282b', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '978f0858-e556-4e00-b034-d55fdec1ae7f', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c91c85c0-59fc-46e1-a3d4-965965c96ca3', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6cab2373-5ebd-45ef-aeef-c0ed02928655', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9238199b-2c7a-419b-bf32-8f36ae53236f', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7830bca9-3029-40ec-a679-79978dfebc42', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f5f1a11a-b855-4a78-98a4-71abcded788a', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '03aa5b5c-5cba-4e85-af21-e18821465f17', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a93a0eab-d366-4b2d-88a3-8395896e6ceb', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-250-fazer')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4fab71bf-9890-4ff1-b961-40e08211209d', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '956e1178-9b82-4da7-bcc0-14bd565f1278', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 250 Lander', 'yamaha-xtz-250-lander'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-250-lander');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ea0b5b92-b051-4fe1-beda-9acdb8174e72', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5c80fe5c-7d08-4078-a4e0-04c8e7d69b09', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f7195930-1840-4b4c-9893-fd6482790501', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '62628644-5c54-4120-90bd-bcb7585c8f14', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c80f8f92-65e6-4146-a5fd-490a08795d2b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'af712c2c-e656-4718-9ae3-581e227f1795', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f13e2756-450d-49e1-af87-58b539b39285', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f38fd7ba-e392-4e13-8fb8-aa591f74f080', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5e8a1989-567e-4eed-8725-bdc02749f794', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-lander')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0826bd24-4685-4f5f-9646-e81d8629c9ee', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3d202684-04c4-4088-b8a7-b787d48238fb', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 250 Ténéré', 'yamaha-xtz-250-ténéré'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5ea416fb-cd26-418f-8ea7-31b2b782c650', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1fbb4d48-27d3-4556-86ec-eec20f929f38', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'db881306-22e4-4da8-92a3-6aec769d8bb7', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '12966cec-2607-443d-8b7f-c8e40439fb98', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4af2be07-444e-4697-9d19-0f2a7d1d1f23', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297410'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297410')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297410')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-250-ténéré')
                    AND year = 2015 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4867af9b-62ab-461e-a7b1-d83ae5e7d377', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '86b198fb-1494-4a92-bbb7-10c66c5e1e02', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 150 Fazer', 'yamaha-ys-150-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-150-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7d87781e-fdb2-4996-94a4-a2ed30c15592', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2014, 'SED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2014 AND version_name = 'SED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'SED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'SED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'SED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '78a2fd82-dc7a-4a29-b073-5b02970d0e58', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2015, 'SED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2015 AND version_name = 'SED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'SED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'SED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'SED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b5324368-0237-48ef-9e18-838f2121eb22', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2016, 'SED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2016 AND version_name = 'SED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2016 AND version_name = 'SED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2016 AND version_name = 'SED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2016 AND version_name = 'SED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1dcde394-504c-41e9-8f45-9a7cb5b775b3', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '6433e85e-3467-43ec-bbf5-b074817de640', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 150 Factor', 'yamaha-ybr-150-factor'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-150-factor');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dfc1ff24-f5bc-425a-9adc-b7e0b9c7eb83', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2016, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2016 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd6510c92-6e4a-4035-acd5-19861b0bb7ac', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2017, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2017 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0ca286ba-bd7b-4ff7-be8f-8ceae0b804d5', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2018, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2018 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '05107006-7083-449b-b251-a27da944b983', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2019, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2019 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '04e310c2-a289-4363-b1cd-d012a6c93cd3', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2020, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2020 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7ae5c378-8885-411b-9b2d-f66d00887155', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2021, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2021 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ef7aa629-7feb-4b52-83d8-51ce7397cf72', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2022, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2022 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b91d319a-2401-41b7-a043-86ebc2955bd0', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2023, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2023 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '6733b9cd-519d-4a52-97e1-f1c89712e5bd', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7c687b71-9430-4e66-b63a-ab150c977244', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c85ad2e8-a680-4b3b-a89f-58183d42c8fc', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2015, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2015 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '744034a9-6f34-4f27-9777-c3e5c2d67529', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2016, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2016 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dc71fde7-b03e-4eab-9b49-55ca8c71352d', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2017, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2017 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '7b920e2c-ac38-4001-8f52-1e38af9f1fbc', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '13ee3bf7-0508-48e3-a2ef-a9e2f3b7fee4', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 150 Fazer', 'yamaha-ys-150-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-150-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd8774f53-6e6a-4757-b4df-72730ea8d728', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2014, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2014 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2014 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '53a86a9e-5e03-420e-af50-657940d79d5d', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2015, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2015 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2015 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '6bebff80-3b04-4d9c-a61a-77b9b72f483f', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '1724500e-6020-43fb-9049-72941ee6d21a', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 150 Factor', 'yamaha-ybr-150-factor'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-150-factor');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'cf1baf59-17a0-4437-8ac0-78b44ab1bd34', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2016 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c6f72d4f-2377-4682-96ce-76aac70a311b', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2017, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2017 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7e0cc247-7668-4dcf-a3ff-121218226a49', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2018, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2018 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ae0a63f9-d1d8-457a-b884-13a483766613', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '363863b7-2f25-4d9f-99b3-6dd9b782d5a7', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7776e3dd-d762-499f-a20f-ef58c3e772fd', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2018, 'Z FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2018 AND version_name = 'Z FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'Z FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'Z FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'Z FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5b93b640-9938-49be-9843-0fd0776774b6', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2019, 'Z FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2019 AND version_name = 'Z FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'Z FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'Z FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'Z FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4da3adee-6fed-425e-bf6a-0f5634ee4369', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '01d8f021-f37f-48cd-864d-1ff96bddfb24', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'be2a9524-e602-476f-8586-b6558601d408', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2018, 'S FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2018 AND version_name = 'S FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'S FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'S FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2018 AND version_name = 'S FLEX');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e8ccb7df-758b-491b-bd29-898a29f65ba6', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2019, 'S FLEX', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2019 AND version_name = 'S FLEX'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'S FLEX' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'S FLEX' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2019 AND version_name = 'S FLEX');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'b99b4201-1e5f-4768-aae6-57d9c6124105', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '7d1bce70-9648-4daa-9d25-2f24d9b4c751', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150 Crosser', 'yamaha-xtz-150-crosser'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150-crosser');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a3b91656-e2ad-411b-aca7-0b2c3f2c5bbd', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2015, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2015 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2015 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '65becbf3-511f-4428-9d26-057bea84434d', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2016 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ea2896b6-bf26-4cae-990c-827c4a939a20', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser'), 2017, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                AND year = 2017 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150-crosser')
                    AND year = 2017 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '5127ec87-c7f3-4221-b297-b03fc1581b2c', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '1c31a58c-43b6-475b-a7a8-6db9dd38d34c', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 150 Factor', 'yamaha-ybr-150-factor'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-150-factor');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f3b1e2f4-0de8-41f6-932e-d8e50c9812b0', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2017, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2017 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2017 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0db349bf-411d-4694-9eb5-f8babf44cffa', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2018, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2018 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2018 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '339251ac-d828-4d03-a498-9ee43c0ecc29', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2019, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2019 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2019 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '27f4b1e7-d935-41c8-a862-1840291f52c6', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2020, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2020 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2020 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '757ee5fc-87cc-4103-859d-9f2b8854f05b', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2021, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2021 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2021 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5d817f7b-60d8-4030-a1a9-96ed674543e6', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2022, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2022 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2022 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dc7a0025-18bd-472d-83f3-5d67cae6877c', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor'), 2023, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                AND year = 2023 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-150-factor')
                    AND year = 2023 AND version_name = 'UBS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '0498a210-52e3-4736-bf51-7816617f1aec', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '3ecdd7a5-53c0-4520-bec7-912efca251bc', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ys 150 Fazer', 'yamaha-ys-150-fazer'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ys-150-fazer');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '867436a1-09ab-48bf-8b6d-2ace6f66f761', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2017, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2017 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2017 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2017 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '922dc736-19ac-4697-a530-ed1a741275a7', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2018, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2018 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2018 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2018 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '71797e5b-13d5-4da8-a08f-24beb40121c2', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2019, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2019 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2019 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2019 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '770b365e-d767-4449-be42-b238eb45d983', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2020, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2020 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2020 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2020 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2020 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '788e9fa6-5dbe-45bc-ab28-a9c00dcc38d8', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2021, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2021 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2021 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2021 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2021 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8cd366d3-7adc-491b-8b29-82629a9e2467', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2022, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2022 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2022 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2022 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2022 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd189684b-cf40-41ed-a38f-56ce8d072dce', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2023, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2023 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2023 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2023 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2023 AND version_name = 'UBS');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a57923ce-e541-429b-b872-f13c4a955ff1', (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer'), 2024, 'UBS', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                AND year = 2024 AND version_name = 'UBS'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2024 AND version_name = 'UBS' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2024 AND version_name = 'UBS' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ys-150-fazer')
                    AND year = 2024 AND version_name = 'UBS');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'c5962794-87a7-44bd-a0fa-edd8d3310fd6', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '05a91c03-119e-4ce4-a8e2-76978aeaf8fc', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150', 'yamaha-xtz-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a6ec5af2-f0ad-4d5d-8d91-81f004bc3ef2', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2019, 'ABS S CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2019 AND version_name = 'ABS S CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2019 AND version_name = 'ABS S CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2019 AND version_name = 'ABS S CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2019 AND version_name = 'ABS S CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '56963028-eba9-43f7-b1c1-d899c5778a5f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2020, 'ABS S CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2020 AND version_name = 'ABS S CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2020 AND version_name = 'ABS S CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2020 AND version_name = 'ABS S CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2020 AND version_name = 'ABS S CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7c21ae41-acbc-42f2-ac21-f11ceaa836ad', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2021, 'ABS S CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2021 AND version_name = 'ABS S CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2021 AND version_name = 'ABS S CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2021 AND version_name = 'ABS S CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2021 AND version_name = 'ABS S CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1ec52be7-319d-42f4-9772-8539429e2899', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2022, 'ABS S CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2022 AND version_name = 'ABS S CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2022 AND version_name = 'ABS S CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2022 AND version_name = 'ABS S CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2022 AND version_name = 'ABS S CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '80d1df12-b78e-480a-ae53-8ed15602d669', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2023, 'ABS S CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2023 AND version_name = 'ABS S CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2023 AND version_name = 'ABS S CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2023 AND version_name = 'ABS S CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2023 AND version_name = 'ABS S CROSSER');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'f3101d6c-c0ed-48cc-88e4-b5014d379513', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '57a17853-5ba8-4d0b-861d-a1a268145da1', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 150', 'yamaha-xtz-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1cdeb52a-2d2b-4cdb-ba6b-79aac34c50c1', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2019, 'ABS Z CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2019 AND version_name = 'ABS Z CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2019 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2019 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2019 AND version_name = 'ABS Z CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1c98f8cd-80b2-4709-8987-6d14091ed164', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2020, 'ABS Z CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2020 AND version_name = 'ABS Z CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2020 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2020 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2020 AND version_name = 'ABS Z CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e363ca1f-25ef-489c-a9b9-372032cae7cb', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2021, 'ABS Z CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2021 AND version_name = 'ABS Z CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2021 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2021 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2021 AND version_name = 'ABS Z CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '06b68415-e59e-40cd-aa9a-c66610bfd90d', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2022, 'ABS Z CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2022 AND version_name = 'ABS Z CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2022 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2022 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2022 AND version_name = 'ABS Z CROSSER');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '99e70e18-32b9-46ed-9a03-c5018a71a1dc', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150'), 2023, 'ABS Z CROSSER', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                AND year = 2023 AND version_name = 'ABS Z CROSSER'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297400'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2023 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297400')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2023 AND version_name = 'ABS Z CROSSER' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297400')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-150')
                    AND year = 2023 AND version_name = 'ABS Z CROSSER');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '93e9dd28-5ab9-48cf-8797-c5bdb52219d2', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '53bac588-9390-49f5-95c1-be76b2550784', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 125', 'yamaha-xtz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f12ff656-bf0f-494a-a5b4-160cf9ad05df', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2008, 'XK', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2008 AND version_name = 'XK'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'XK' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'XK' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'XK');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '305ee96e-1c8b-4a7e-a0dc-a3e6e4734e49', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2009, 'XK', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2009 AND version_name = 'XK'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'XK' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'XK' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'XK');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4d91662b-5f98-4c4c-bf70-3b11ba417392', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2010, 'XK', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2010 AND version_name = 'XK'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'XK' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'XK' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'XK');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2d0ab712-1dfb-4f8f-b086-9ffcddc5b29c', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2011, 'XK', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2011 AND version_name = 'XK'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'XK' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'XK' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'XK');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e436f160-908a-4319-97b1-9c16f9343a6f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2012, 'XK', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2012 AND version_name = 'XK'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'XK' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'XK' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'XK');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '20ba5332-e89a-4abb-89a2-6662fa2e155b', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a08d3826-8e5d-41d6-9099-eba9fdc410e5', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 125', 'yamaha-ybr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3aec6251-257a-44a4-bb09-5e8cb7186f9d', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2004, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2004 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '99a57e17-0d40-453b-90b1-0a449c74cf80', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2005, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2005 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e81222b1-4b0c-4b81-a474-bdcbd6986c25', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2006, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2006 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '1a8eb4b7-6888-47df-b071-052f3ca68582', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2007, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2007 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '534645dc-a124-49bd-bc8f-5b141c714a46', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2008, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2008 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '39b1ac4b-042d-4a9a-971b-967f15a4c99f', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2009, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2009 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f3c5333e-9c5b-42b8-a2a9-2c3e3bcb6fa3', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2010, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2010 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f41e355c-9b96-43df-ae57-e5709aca1950', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2011, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2011 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '94f5bdff-0749-4bc0-96d8-81035ada0213', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2012, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2012 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e9628e8b-ea5a-476a-af3a-d4674e6efc2d', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2013, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2013 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'K');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'edebe711-239a-4fe2-bffe-85b85182af84', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2014, 'K', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2014 AND version_name = 'K'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'K' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'K' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'K');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1cfcfd7a-d06b-4b5a-8384-377ad3c9a821', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4dbccc21-9671-4d73-90aa-79b184d5fccd', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 125', 'yamaha-ybr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fb223ea2-082e-49d5-9f0d-cc4893365f33', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2004, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2004 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '83e3a4f4-0106-4dff-b783-b5c174224dc3', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2005, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2005 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '22967103-92c7-41fd-a35f-7735bd7287a8', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2006, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2006 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f37e5016-7545-4b51-84df-927948813d11', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2007, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2007 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e518624a-039c-4f5d-83f5-c22d742c4b6f', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '95a57216-59b9-4b18-85d6-7b94c2d21270', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '0930424e-12f7-4da4-a9c3-5f94d4309d87', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2010, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2010 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fb3fa631-27be-4628-8529-aa604657a151', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2011, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2011 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fe6dfa80-23fa-42a9-b5a6-59292bce3efd', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2012, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2012 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '70163421-9f79-432f-ae6e-a309ead470a1', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2013, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2013 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '42192655-1f71-466b-be8b-52e9af2e48a8', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2014, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2014 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '44b509aa-9ef4-4269-95a7-f99d746fd222', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2015, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2015 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2015 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2015 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16f40d38-cc8c-4926-b66c-a82f287fb5e6', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2016, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2016 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2016 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2016 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '746ecb26-2d4b-4f97-a1d3-21d910db2270', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b1b5cdd2-2527-4d2b-aeed-be159c30e29c', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 125', 'yamaha-xtz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '516b2e8e-0c79-414a-bacf-038b3a4fdd93', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2008, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2008 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '7e907423-6254-402d-9575-0d73406864a3', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2009, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2009 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4d1fb42f-69ab-4078-9028-93e1289cab46', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2010, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2010 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '87ed1ca5-0e9f-42ec-a559-31bf75da1e9b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2011, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2011 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aaba4af3-0ff0-480d-bdb7-af90a56591dc', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2012, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2012 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f5a95ca5-c99c-4d22-ae94-d8d8b9d4c142', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2013, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2013 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2013 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f2581e7a-7c7c-4683-adb5-d2a75bf679cd', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2014, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2014 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2014 AND version_name = 'XE');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'a412895e-62c1-42f5-86d1-36e1991d8ac8', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2015, 'XE', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2015 AND version_name = 'XE'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = 'XE' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = 'XE' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2015 AND version_name = 'XE');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '339963f2-cc6f-4cc3-82d9-7e83ce938212', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b1639f09-85f5-4612-a702-4f3871592d3b', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Xtz 125', 'yamaha-xtz-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-xtz-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '15c0f874-a9fe-4b32-8657-c2b80d5de50b', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '19075859-5013-4fb5-a813-a42a6fea6ed0', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2009 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6dd7cd6f-9ead-457b-9174-ebd2ba0a464f', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2010, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2010 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2010 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '533fb77f-c45d-41b1-a9cc-bc13ad3c4f6a', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2011, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2011 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2011 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b59fee65-c78b-49dc-8be8-62018ab08a5e', (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125'), 2012, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                AND year = 2012 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-xtz-125')
                    AND year = 2012 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'd86d17be-8941-4df5-8f04-aab976608607', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'a7a3fe76-af31-4423-9625-b86e565cc84f', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Ybr 125', 'yamaha-ybr-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-ybr-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bcd42d66-fe1b-49db-9e01-f7b9fb7bcd91', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2004, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2004 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2004 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f3711b19-1203-481f-a52c-66fd352edefe', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2005, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2005 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2005 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6c64664f-55da-4430-aaeb-2dc5ac283d0f', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2006, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2006 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2006 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd7bd4c60-4000-4d64-ba6c-5308dd72b654', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2007, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2007 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2007 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2f01ad39-a57a-4aab-bb80-4107ad2c506a', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2008, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2008 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2008 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '81324b1c-9cbf-43d4-aeeb-fd4156fc4343', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2009, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2009 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2009 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9d43cfcb-d619-4cec-9611-378a44446eca', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2010, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2010 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2010 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'bb211423-cb41-4965-a73b-cbe6fcc56700', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2011, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2011 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2011 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8136800a-1c2c-49ba-8203-7eb6520ba4e8', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2012, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2012 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2012 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3502f00a-eff4-4784-9d48-8b60816596c0', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2013, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2013 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2013 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '98b74b5f-d7a7-41fa-a663-fa020994b44f', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2014, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2014 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2014 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4db7ea36-55dc-4308-a37c-cfa4f1f33c89', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2015, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2015 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2015 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2015 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b89ab865-a0b7-4bba-af23-8d8cbad593ab', (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125'), 2016, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                AND year = 2016 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297100'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297100')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2016 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297100')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-ybr-125')
                    AND year = 2016 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'ac38185d-4877-4764-ad7b-5d8e17c8272c', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '6a39780e-5db2-4840-9bfe-4ce33cb1b77f', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor 125I Ybr', 'yamaha-factor-125i-ybr'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-125i-ybr');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd4690225-7295-4d3f-b3a2-04ff6e0335d2', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8a346094-e8f4-46c6-bfd9-7cd5dc0c033c', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '99abc18d-9774-448c-839e-fb3514d5806e', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '106481c1-d344-4f42-ac95-8a8f7a777794', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f18c5dbf-c49c-4422-9022-c4f2da6891e4', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4792fbfd-105d-4ed6-8769-e9b9e13e041b', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2022 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5493ce8a-920a-4cc4-99bd-d62aaeb35efb', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2023, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2023 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2023 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'df4bcd19-a6da-4756-8565-c93885bb00cb', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr'), 2024, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                AND year = 2024 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2024 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2024 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125i-ybr')
                    AND year = 2024 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '769a6657-bcbf-40f2-bdbc-25d2827109a1', 'YAMAHA', 'yamaha', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'yamaha');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '4bb26cbd-faf1-4a52-8890-46d962918e12', (SELECT id FROM brands WHERE slug = 'yamaha'), 'Factor 125 Ybr', 'yamaha-factor-125-ybr'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'yamaha-factor-125-ybr');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6fbd3299-c5cc-4ef4-a4af-5a73c9bdfd14', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2017, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2017 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2017 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2017 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'eec82690-4942-4f2c-9a56-07327d438e6f', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2018, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2018 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2018 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2018 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2018 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '34e9883f-acfc-46ae-82c9-19d26c53bf58', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2019, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2019 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2019 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2019 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2019 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff9baf55-75af-408e-930f-9708d27329b3', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2020, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2020 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2020 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2020 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2020 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6358d132-6cb8-4ad6-8200-d592eb06f457', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2021, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2021 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2021 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2021 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2021 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '542bbba9-279c-4c82-aea7-1308c6aad436', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2022, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2022 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2022 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2022 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2022 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '76a551b8-a153-4154-87f3-7885a29272f7', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2023, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2023 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2023 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2023 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2023 AND version_name = 'ED');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '94b8c4e0-9e32-4bb6-a180-026633f0ee50', (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr'), 2024, 'ED', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                AND year = 2024 AND version_name = 'ED'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297390'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2024 AND version_name = 'ED' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297390')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2024 AND version_name = 'ED' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297390')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'yamaha-factor-125-ybr')
                    AND year = 2024 AND version_name = 'ED');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'db74e2b4-9b25-496c-aecb-dfc21b850338', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '05763bbf-4b91-4326-aaf5-88e941cf5637', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En 125 Yes', 'suzuki-en-125-yes'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125-yes');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e03769f7-bef8-4a14-9fce-0cb85f0a8733', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd0695798-35eb-4020-88ba-5fa39d8ff55e', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '16777e46-bac7-403a-b938-5964d5951c3f', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ff6c8440-496a-4270-ad51-01bba46096dc', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '82c25b6f-7f03-45dc-97f6-51de196a1107', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2011 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'db9ec0d0-db1a-4ef7-8630-e90861bd2623', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b74d8076-664b-41dc-8011-42ead0285cb4', (SELECT id FROM brands WHERE slug = 'suzuki'), 'Intruder 125', 'suzuki-intruder-125'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-intruder-125');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '556cea52-e27d-4a65-9b9b-6d70ff4a40cf', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4b3c0c48-4abb-45da-96e9-42bcad4b7fe7', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'dbe5cab6-eae5-49e8-a5a4-7ce57dad3b1e', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6135f280-4793-42a0-9db7-864473093e89', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2010 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '8cbb245a-fb37-4dab-a138-5e5801e538c6', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2011, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2011 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2011 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2011 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '77fca848-2a0d-4413-b3cd-8c876afb247d', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ce8465d2-5a36-4bf7-8161-05690a45844e', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2013 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '65cd16a1-5e15-48e8-b318-31e047cef415', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4a81efa2-5bc3-4261-b1ee-491fc8e7874a', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2777ee0a-2cb6-4c2b-9d54-efef5c6608a6', (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-intruder-125')
                    AND year = 2016 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '4843f54e-9410-4eca-bd44-8c450b7e96f3', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '77dbe042-519a-4d32-b5a1-e552f7bab9b5', (SELECT id FROM brands WHERE slug = 'suzuki'), 'En 125 Yes', 'suzuki-en-125-yes'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-en-125-yes');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '10b10e3e-34b9-4751-b238-104a7e8962ae', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2007, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2007 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2007 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2007 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'fd8c01e9-dac7-4548-aeac-9007cfcc7809', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2008, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2008 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2008 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2008 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '69f6f20b-0d67-4042-8be1-a4998ac77746', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2009, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2009 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2009 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2009 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '44a634d0-0c56-411d-95c5-483365343727', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2010, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2010 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2010 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2010 AND version_name = 'E');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '77ae4316-68ee-4a0b-bb70-db10e5f84a36', (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes'), 2011, 'E', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                AND year = 2011 AND version_name = 'E'
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297430'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297430')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2011 AND version_name = 'E' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297430')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-en-125-yes')
                    AND year = 2011 AND version_name = 'E');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'bf284608-f97e-4a91-b386-6d549830897f', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'c3540cd3-7365-4127-85bd-6edbc68e61f7', (SELECT id FROM brands WHERE slug = 'suzuki'), 'Burgman 125I', 'suzuki-burgman-125i'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-burgman-125i');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa58375c-bfe5-4c6b-812f-7fb22e82bd9b', (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i'), 2012, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                AND year = 2012 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                    AND year = 2012 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                    AND year = 2012 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '733b8eed-2d96-42d3-a983-5fcb87fd1f5f', (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i'), 2013, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                AND year = 2013 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                    AND year = 2013 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-burgman-125i')
                    AND year = 2013 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '1aabb43e-1031-4ea6-ba97-fe16170c27b3', 'SUZUKI', 'suzuki', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'suzuki');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '2456426c-17d8-41f3-98da-bb6999226371', (SELECT id FROM brands WHERE slug = 'suzuki'), 'An 125 Burgman', 'suzuki-an-125-burgman'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'suzuki-an-125-burgman');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'f0eff313-330b-485c-89fb-f243405e5906', (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman'), 2005, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                AND year = 2005 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2005 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2005 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5f33b7c2-9289-40dc-bbb0-c25cbb8ed771', (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman'), 2006, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                AND year = 2006 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2006 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2006 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c35b5944-f2ae-4549-9b4b-6a6d4e80d1f8', (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman'), 2007, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                AND year = 2007 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2007 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2007 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'ffa13598-588a-452e-a397-e5da7ceb17b3', (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman'), 2008, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                AND year = 2008 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2008 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2008 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '6d303900-8343-430e-ab77-2dccfa129688', (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '9db5586e-1edc-42eb-b59b-59559903be2f', (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297420'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297420')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297420')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'suzuki-an-125-burgman')
                    AND year = 2010 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'e33f7815-497c-45fa-9281-38e808b86e34', 'SHINERAY', 'shineray', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'shineray');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '43c34c61-d6ba-4a2d-951c-521057bd7998', (SELECT id FROM brands WHERE slug = 'shineray'), 'Xy 50 Q', 'shineray-xy-50-q'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'shineray-xy-50-q');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b333b3f1-00b5-403e-a0b7-7f94db32bb69', (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q'), 2009, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                AND year = 2009 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297450'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297450')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                    AND year = 2009 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297450')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                    AND year = 2009 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5d8d3bb8-f415-41eb-8531-136becf0cb6e', (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q'), 2010, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                AND year = 2010 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297450'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297450')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                    AND year = 2010 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297450')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'shineray-xy-50-q')
                    AND year = 2010 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT 'f9301582-d53b-432a-bae1-4f1cb221eda1', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'ed5a3ab8-8ebd-4f0a-84f5-48aee2ed24c3', (SELECT id FROM brands WHERE slug = 'honda'), 'Xre 190A Flex', 'honda-xre-190a-flex'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-xre-190a-flex');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '3089a1e2-07bd-47a5-9dcd-4ecffe8f3885', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd686b8fe-4f41-486b-85d3-44c65154dadb', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '27d3272f-9e5f-4222-93ad-643ee993362a', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'aa801fe9-4f19-414b-abb5-ad5a17aac55c', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5827f2d0-4863-4711-b249-3c34a6f89e53', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2020 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2020 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2020 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '2fab0fa0-f412-4656-983d-33c21193f540', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2021, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2021 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2021 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2021 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'c8e57152-e3c4-4342-a7f4-30831ff94926', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2022, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2022 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2022 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2022 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'efe65f7b-e013-423b-aebb-d31bdfc72b99', (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex'), 2023, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                AND year = 2023 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297350'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297350')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2023 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297350')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-xre-190a-flex')
                    AND year = 2023 AND version_name = '');
            

        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '22793a9e-e907-4f7e-8479-4396f491e8d6', 'HONDA', 'honda', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = 'honda');
        

        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT 'b1bc2659-2735-4568-8399-feed9cf0ddf5', (SELECT id FROM brands WHERE slug = 'honda'), 'Pcx 150', 'honda-pcx-150'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = 'honda-pcx-150');
        

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '5a673b1c-1fb6-4c9a-adde-9968a9bb4b72', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2014, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2014 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2014 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2014 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'b6bf8c7c-a092-4e70-9f8a-327cdb34434d', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2015, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2015 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2015 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2015 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'e872077b-51a2-49fa-ae0d-aad336c6554d', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2016, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2016 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2016 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2016 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT 'd62aeb3c-8cd1-4f93-8277-9d575a518b56', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2017, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2017 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2017 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2017 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '379ba3c2-4da4-447d-b92f-fbebdb6b424b', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2018, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2018 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2018 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2018 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '434bf630-872f-4784-a2e5-a5ba03c2aafe', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2019, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2019 AND version_name = ''
            );
            

            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '90297340'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '90297340')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2019 AND version_name = '' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '90297340')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                    AND year = 2019 AND version_name = '');
            

            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '4e08de34-8562-4fb9-9ebf-36dd0dfa401f', (SELECT id FROM car_models WHERE slug = 'honda-pcx-150'), 2020, '', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = 'honda-pcx-150')
                AND year = 2020 AND version_name = ''
            );
            