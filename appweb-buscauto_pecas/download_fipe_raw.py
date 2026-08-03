import urllib.request
import json
import os

BASE_URL = 'https://parallelum.com.br/fipe/api/v1/carros/marcas'
headers = {'User-Agent': 'Mozilla/5.0'}
output_dir = 'Buscautopeças.com.br/fipe_data'

print(f"Baixando dados da FIPE e salvando na pasta: {output_dir}")

def download_and_save(url, filename):
    req = urllib.request.Request(url, headers=headers)
    try:
        resp = urllib.request.urlopen(req)
        data = json.loads(resp.read().decode('utf-8'))
        filepath = os.path.join(output_dir, filename)
        with open(filepath, 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
        
        # O endpoint de modelos retorna um objeto com 'modelos' e 'anos', pegar o len de 'modelos'
        count = len(data) if isinstance(data, list) else len(data.get('modelos', []))
        print(f"✅ Salvo: {filepath} ({count} registros)")
        return data
    except Exception as e:
        print(f"❌ Erro ao baixar {url}: {e}")
        return None

# 1. Baixar todas as marcas
print("Baixando todas as marcas de carros da FIPE...")
brands = download_and_save(BASE_URL, 'fipe_marcas_completo.json')

if brands:
    # 2. Baixar os modelos de algumas marcas famosas para mostrar o exemplo
    for brand in brands:
        # Pega Fiat (21), VW (59), Ford (22)
        if str(brand['codigo']) in ['21', '59', '22']:
            print(f"Baixando modelos da marca {brand['nome']}...")
            url_modelos = f"{BASE_URL}/{brand['codigo']}/modelos"
            # Formatando o nome do arquivo para remover espaços
            brand_name = brand['nome'].replace(' ', '_').replace('/', '')
            download_and_save(url_modelos, f"fipe_modelos_{brand_name}.json")

print("\nDownload concluído! Os arquivos JSON brutos estão salvos na pasta fipe_data.")
