import sqlite3
import uuid
import re

def slugify(text):
    text = text.lower().strip()
    text = re.sub(r'[^\w\s-]', '', text)
    text = re.sub(r'[\s_-]+', '-', text)
    return text

def escape_sql(text):
    if not text:
        return ''
    return text.replace("'", "''")

def safe_int(val):
    if not val:
        return None
    try:
        val_str = str(val).strip()
        if val_str.isdigit():
            return int(val_str)
        match = re.search(r'\b(19\d{2}|20\d{2})\b', val_str)
        if match:
            return int(match.group(1))
        match2 = re.search(r'\b(\d{2})\b', val_str)
        if match2:
            num = int(match2.group(1))
            return 2000 + num if num < 50 else 1900 + num
        return None
    except Exception:
        return None

def main():
    conn = sqlite3.connect('data/local_catalog.db')
    cursor = conn.cursor()
    
    # Motor category ID from D1
    MOTOR_CAT_ID = '8b42c8da-d1a8-46f2-b3f5-31b322ca948c'
    
    cursor.execute('SELECT id, part_code, name, manufacturer, image_url FROM extracted_parts')
    parts = cursor.fetchall()
    
    part_codes = {}
    sql_statements = []
    
    # 1. Insert master_parts
    for p in parts:
        part_id = p[0]
        code = escape_sql((p[1] or '').strip())
        name = escape_sql((p[2] or '').strip())
        manufacturer = escape_sql((p[3] or '').strip())
        img_url = escape_sql((p[4] or '').strip())
        
        if not code:
            continue
        
        part_uuid = str(uuid.uuid4())
        part_codes[part_id] = code
        
        sql_statements.append(f"""
        INSERT INTO master_parts (id, name, manufacturer, manufacturer_code, category_id, image_url)
        SELECT '{part_uuid}', '{name}', '{manufacturer}', '{code}', '{MOTOR_CAT_ID}', '{img_url}'
        WHERE NOT EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '{code}');
        """)

    # 2. Insert compatibilities (brands, models, versions, and links)
    cursor.execute('SELECT part_id, brand, model, version, year_start, year_end FROM extracted_compatibility')
    compats = cursor.fetchall()
    
    for c in compats:
        part_id = c[0]
        brand_raw = (c[1] or '').strip().upper()
        model_raw = (c[2] or '').strip().title()
        version_raw = (c[3] or '').strip()
        start_year = c[4]
        end_year = c[5]
        
        if not brand_raw or not model_raw:
            continue
            
        brand_slug = slugify(brand_raw)
        model_slug = slugify(f"{brand_raw} {model_raw}")
        
        brand = escape_sql(brand_raw)
        model = escape_sql(model_raw)
        version_str = escape_sql(version_raw)
        
        brand_uuid = str(uuid.uuid4())
        model_uuid = str(uuid.uuid4())
        
        code = part_codes.get(part_id)
        if not code:
            continue
            
        # Brands
        sql_statements.append(f"""
        INSERT INTO brands (id, name, slug, vehicle_type)
        SELECT '{brand_uuid}', '{brand}', '{brand_slug}', 'moto'
        WHERE NOT EXISTS (SELECT 1 FROM brands WHERE slug = '{brand_slug}');
        """)
        
        # Car Models
        sql_statements.append(f"""
        INSERT INTO car_models (id, brand_id, name, slug)
        SELECT '{model_uuid}', (SELECT id FROM brands WHERE slug = '{brand_slug}'), '{model}', '{model_slug}'
        WHERE NOT EXISTS (SELECT 1 FROM car_models WHERE slug = '{model_slug}');
        """)
        
        parsed_start = safe_int(start_year)
        parsed_end = safe_int(end_year)
        s_year = parsed_start if parsed_start else 2000
        e_year = parsed_end if parsed_end else s_year
        if e_year < s_year: e_year = s_year
        
        for y in range(s_year, e_year + 1):
            v_uuid = str(uuid.uuid4())
            # Car Versions
            sql_statements.append(f"""
            INSERT INTO car_versions (id, model_id, year, version_name, engine)
            SELECT '{v_uuid}', (SELECT id FROM car_models WHERE slug = '{model_slug}'), {y}, '{version_str}', ''
            WHERE NOT EXISTS (
                SELECT 1 FROM car_versions 
                WHERE model_id = (SELECT id FROM car_models WHERE slug = '{model_slug}')
                AND year = {y} AND version_name = '{version_str}'
            );
            """)
            
            # Compatibility Link
            sql_statements.append(f"""
            INSERT INTO part_compatibility (part_id, version_id)
            SELECT (SELECT id FROM master_parts WHERE manufacturer_code = '{code}'), 
                   (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = '{model_slug}')
                    AND year = {y} AND version_name = '{version_str}' LIMIT 1)
            WHERE NOT EXISTS (
                SELECT 1 FROM part_compatibility 
                WHERE part_id = (SELECT id FROM master_parts WHERE manufacturer_code = '{code}')
                AND version_id = (SELECT id FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = '{model_slug}')
                    AND year = {y} AND version_name = '{version_str}' LIMIT 1)
            )
            AND EXISTS (SELECT 1 FROM master_parts WHERE manufacturer_code = '{code}')
            AND EXISTS (SELECT 1 FROM car_versions 
                    WHERE model_id = (SELECT id FROM car_models WHERE slug = '{model_slug}')
                    AND year = {y} AND version_name = '{version_str}');
            """)

    import os
    
    CHUNK_SIZE = 500
    for i in range(0, len(sql_statements), CHUNK_SIZE):
        chunk = sql_statements[i:i + CHUNK_SIZE]
        with open(f'data/migration_{i}.sql', 'w', encoding='utf-8') as f:
            f.write("\n".join(chunk))
    
    # Write a bash script to run them all
    with open('data/run_migrations.sh', 'w', encoding='utf-8') as f:
        f.write("#!/bin/bash\n")
        f.write("cd appweb-buscautopecas\n")
        for i in range(0, len(sql_statements), CHUNK_SIZE):
            f.write(f"npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_{i}.sql --yes\n")

    print(f"Migration scripts gerados com sucesso. Rode: bash data/run_migrations.sh")

if __name__ == '__main__':
    main()
