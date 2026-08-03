import urllib.request
import json
import time

BASE_URL = 'https://parallelum.com.br/fipe/api/v1/carros/marcas'
headers = {'User-Agent': 'Mozilla/5.0'}

def get_json(url):
    req = urllib.request.Request(url, headers=headers)
    try:
        resp = urllib.request.urlopen(req)
        return json.loads(resp.read().decode('utf-8'))
    except Exception as e:
        print(f"Error fetching {url}: {e}")
        return None

# Target specific brands
target_brands = {'Fiat': '21', 'VW - VolksWagen': '59', 'Chevrolet': '23'}
brand_mapping = {'Fiat': 'b-fiat', 'VW - VolksWagen': 'b-vw', 'Chevrolet': 'b-chevrolet'}

print("Starting FIPE fetch...")

all_models = []
all_versions = []

for b_name, b_id in target_brands.items():
    print(f"Fetching models for {b_name}...")
    data = get_json(f"{BASE_URL}/{b_id}/modelos")
    if not data: continue
    
    models = data.get('modelos', [])
    # Filter for popular models to save API requests
    popular_keywords = ['Argo', 'Strada', 'Toro', 'Mobi', 'Gol', 'Polo', 'T-Cross', 'Nivus', 'Onix', 'Tracker', 'S10', 'Cruze']
    
    selected_models = []
    for m in models:
        for p in popular_keywords:
            if p.lower() in m['nome'].lower():
                selected_models.append(m)
                break
                
    # Limit to max 4 models per brand to avoid rate limits (4 models * 3 brands = 12 requests)
    selected_models = selected_models[:4]
    
    for m in selected_models:
        model_slug = m['nome'].lower().replace(' ', '-').replace('/', '')
        internal_model_id = f"m-{model_slug}"
        
        all_models.append({
            'id': internal_model_id,
            'brandId': brand_mapping[b_name],
            'name': m['nome'],
            'slug': model_slug,
            'vehicleType': 'CARRO'
        })
        
        print(f"  Fetching years for {m['nome']}...")
        years_data = get_json(f"{BASE_URL}/{b_id}/modelos/{m['codigo']}/anos")
        if years_data:
            for i, y in enumerate(years_data):
                if i >= 5: break # max 5 versions per model
                
                # FIPE year format: "2018 Gasolina", "2019 Diesel", "32000 Gasolina" (Zero KM)
                name_parts = y['nome'].split(' ')
                year_str = name_parts[0]
                fuel = name_parts[1] if len(name_parts) > 1 else "Flex"
                
                year_num = 2024 if year_str == '32000' else int(year_str)
                
                all_versions.append({
                    'id': f"v-{model_slug}-{y['codigo']}",
                    'modelId': internal_model_id,
                    'name': f"{year_num} {fuel}",
                    'yearStart': year_num,
                    'yearEnd': year_num,
                    'engine': fuel
                })
        time.sleep(1) # delay to respect API

print(f"Found {len(all_models)} models and {len(all_versions)} versions!")

# Now update the database
db_path = 'Buscautopeças.com.br/Appweb Buscautopeças/src/db/brazilian-vehicles.json'
with open(db_path, 'r', encoding='utf-8') as f:
    db = json.load(f)

# Keep non-car models (motos, eletricos, autopropelidos)
kept_models = [m for m in db['models'] if m['brandId'] not in brand_mapping.values()]
kept_versions = [v for v in db['versions'] if v['modelId'] in [m['id'] for m in kept_models]]

db['models'] = kept_models + all_models
db['versions'] = kept_versions + all_versions

with open(db_path, 'w', encoding='utf-8') as f:
    json.dump(db, f, ensure_ascii=False, indent=2)

print("Database updated with official FIPE data!")
