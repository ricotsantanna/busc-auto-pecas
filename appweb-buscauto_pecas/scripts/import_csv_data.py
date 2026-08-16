import glob
import csv
import sqlite3
import re
import os

DB_PATH = 'data/local_catalog.db'

def main():
    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()
    
    # Ensure image_url column exists in extracted_parts
    try:
        cursor.execute("ALTER TABLE extracted_parts ADD COLUMN image_url TEXT")
    except Exception:
        pass # already exists
        
    cursor.execute("SELECT id, part_code FROM extracted_parts")
    existing_parts = {r[1].strip(): r[0] for r in cursor.fetchall() if r[1]}
    
    csv_files = glob.glob('Catálogo CSV/*.csv') + glob.glob('Catalogo CVS1/*.csv') + glob.glob('*CVS*/*.csv') + glob.glob('*CSV*/*.csv')
    # Remove duplicates
    csv_files = list(set(csv_files))
    print(f"Encontrados {len(csv_files)} arquivos CSV para processamento.")
    
    added_parts = 0
    updated_images = 0
    
    for csv_file in csv_files:
        print(f"Processando CSV: {csv_file}...")
        with open(csv_file, 'r', encoding='utf-8', errors='ignore') as fp:
            reader = csv.DictReader(fp)
            for r in reader:
                title = r.get('data') or r.get('name') or r.get('title') or ''
                img_url = r.get('image') or r.get('image_url') or ''
                logo_url = r.get('image3') or ''
                
                if not title:
                    continue
                    
                # Clean invalid/default images
                if 'default-image' in img_url:
                    img_url = ''
                    
                parts = title.split(' - ')
                main_title = parts[0].strip()
                manufacturer = ''
                code = ''
                
                if len(parts) > 1:
                    manuf_part = parts[1].strip()
                    m_match = re.search(r'^(.*?)\s+([A-Za-z0-9\/-]{4,})$', manuf_part)
                    if m_match:
                        manufacturer = m_match.group(1).strip()
                        code = m_match.group(2).strip()
                    else:
                        manufacturer = manuf_part
                
                if not code:
                    # Try finding a code at end of title (e.g. Pitstop: "VS5087", "54.142.0301")
                    code_match = re.search(r'\b([A-Za-z0-9\.\/-]{5,})\b$', title)
                    if code_match:
                        code = code_match.group(1).strip()
                
                if not code:
                    continue
                    if code_match:
                        code = code_match.group(1).strip()
                
                if not code:
                    continue
                    
                if code in existing_parts:
                    # Update image URL if available
                    if img_url:
                        cursor.execute("UPDATE extracted_parts SET image_url = ? WHERE part_code = ? AND (image_url IS NULL OR image_url = '')", (img_url, code))
                        if cursor.rowcount > 0:
                            updated_images += 1
                else:
                    # Insert new master part into local_catalog.db
                    cursor.execute('''
                        INSERT INTO extracted_parts (original_pdf, page, part_code, name, manufacturer, category, image_url, status)
                        VALUES ('CSV_IMPORT', 1, ?, ?, ?, 'Geral', ?, 'pending')
                    ''', (code, main_title, manufacturer, img_url))
                    
                    part_id = cursor.lastrowid
                    existing_parts[code] = part_id
                    added_parts += 1
                    
                    # Extract vehicle brand/model from title if present
                    # e.g. "VOLKSWAGEN BRASILIA", "HONDA CIVIC"
                    brand_match = re.search(r'\b(VOLKSWAGEN|VW|FIAT|CHEVROLET|GM|HONDA|TOYOTA|FORD|RENAULT|HYUNDAI|JEEP|NISSAN|PEUGEOT|CITROEN|MITSUBISHI|AUDI|BMW|MERCEDES)\b\s+([A-Za-z0-9]+)', main_title, re.IGNORECASE)
                    if brand_match:
                        brand_name = brand_match.group(1).upper()
                        model_name = brand_match.group(2).title()
                        cursor.execute('''
                            INSERT INTO extracted_compatibility (part_id, brand, model, version, year_start, year_end, engine)
                            VALUES (?, ?, ?, '', 2000, 2024, '')
                        ''', (part_id, brand_name, model_name))
                        
    conn.commit()
    conn.close()
    
    print(f"\n==========================================")
    print(f"✅ IMPORTAÇÃO CSV FINALIZADA COM SUCESSO!")
    print(f" 🔹 Novas Peças Adicionadas: {added_parts}")
    print(f" 🔹 Imagens Atualizadas: {updated_images}")
    print(f"==========================================")

if __name__ == '__main__':
    main()
