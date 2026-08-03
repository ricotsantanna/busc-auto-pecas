import urllib.request
import re
import os
import urllib.error

import ssl

url = 'https://www.vetorauto.com.br/produtos'
output_dir = 'Buscautopeças.com.br/catalogos_vetor'

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

print(f"Buscando links de PDFs em {url}...")
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}
req = urllib.request.Request(url, headers=headers)

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

try:
    html = urllib.request.urlopen(req, timeout=15, context=ctx).read().decode('utf-8', errors='ignore')
    
    # Procura por links de PDF
    links = re.findall(r'href=[\'\"]([^\'\"]+\.pdf)[\'\"]', html, re.IGNORECASE)
    
    # Tratar links relativos
    full_links = []
    for link in links:
        if link.startswith('http'):
            full_links.append(link)
        elif link.startswith('//'):
            full_links.append('https:' + link)
        elif link.startswith('/'):
            full_links.append('https://www.vetorauto.com.br' + link)
        else:
            full_links.append('https://www.vetorauto.com.br/' + link)
            
    # Remove duplicatas
    full_links = list(set(full_links))
    
    if not full_links:
        print("Nenhum PDF direto encontrado. O site pode carregar os catálogos via JavaScript ou ter outra página específica de downloads.")
        # Print a bit of html to debug
        print("Trecho do HTML:", html[:500])
    else:
        print(f"Encontrados {len(full_links)} catálogos em PDF distintos!")
        
        # Baixar apenas os 3 primeiros
        for i, pdf_url in enumerate(full_links[:3]):
            filename = pdf_url.split('/')[-1]
            filepath = os.path.join(output_dir, filename)
            
            print(f"Baixando ({i+1}/3): {filename}...")
            try:
                pdf_req = urllib.request.Request(pdf_url, headers=headers)
                with urllib.request.urlopen(pdf_req, timeout=30) as response, open(filepath, 'wb') as out_file:
                    out_file.write(response.read())
                print(f"✅ Salvo em {filepath}")
            except Exception as e:
                print(f"❌ Erro ao baixar {filename}: {e}")
                
        print(f"\nDownload concluído. Salvos na pasta {output_dir}.")
        
        list_path = os.path.join(output_dir, 'todos_os_links.txt')
        with open(list_path, 'w') as f:
            for link in full_links:
                f.write(f"{link}\n")
        print(f"A lista completa com os links foi salva em {list_path}")

except Exception as e:
    print('Erro ao acessar a página:', e)
