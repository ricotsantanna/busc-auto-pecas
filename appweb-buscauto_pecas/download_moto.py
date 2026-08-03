import urllib.request
import os
import ssl

url = 'https://ideia2001.com.br/CatExp/AMAAM/InstalarCatalogoMotoPecas.exe'
output_dir = 'Buscautopeças.com.br/catalogos_motos'

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

filename = url.split('/')[-1]
filepath = os.path.join(output_dir, filename)

print(f"Baixando catálogo de Moto Peças (Executável Windows)...")
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'}
req = urllib.request.Request(url, headers=headers)

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

try:
    with urllib.request.urlopen(req, timeout=60, context=ctx) as response, open(filepath, 'wb') as out_file:
        out_file.write(response.read())
    print(f"✅ Salvo em {filepath}")
except Exception as e:
    print(f"❌ Erro ao baixar {filename}: {e}")
