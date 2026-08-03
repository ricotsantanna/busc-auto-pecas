import urllib.request
import re
import os
import ssl
from urllib.parse import quote

url = 'https://www.totalmoto.com.br/biblioteca-digital-catalogos/'
output_dir = 'Buscautopeças.com.br/catalogos_totalmoto'

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

print(f"Buscando links de PDFs em {url}...")
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'}
req = urllib.request.Request(url, headers=headers)

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

try:
    html = urllib.request.urlopen(req, timeout=15, context=ctx).read().decode('utf-8', errors='ignore')
    
    links = re.findall(r'href=[\'\"]([^\'\"]+\.pdf)[\'\"]', html, re.IGNORECASE)
    
    full_links = list(set(links))
    
    fixed_links = []
    for link in full_links:
        if link.startswith('http'):
            fixed_links.append(link)
        elif link.startswith('//'):
            fixed_links.append('https:' + link)
        else:
            if not link.startswith('/'):
                link = '/' + link
            fixed_links.append('https://www.totalmoto.com.br' + link)
            
    if not fixed_links:
        print("Nenhum PDF encontrado.")
        all_links = re.findall(r'href=[\'\"]([^\'\"]+)[\'\"]', html, re.IGNORECASE)
        print("Alguns links disponíveis na página:", list(set(all_links))[:10])
    else:
        print(f"Encontrados {len(fixed_links)} catálogos em PDF distintos!")
        
        for i, pdf_url in enumerate(fixed_links[:3]):
            filename = pdf_url.split('/')[-1].split('?')[0]
            if len(filename) < 5: filename = f"totalmoto_cat_{i}.pdf"
            filepath = os.path.join(output_dir, filename)
            
            print(f"Baixando ({i+1}/3): {filename}...")
            try:
                # Resolve potential spaces in URL
                pdf_req = urllib.request.Request(quote(pdf_url, safe=':/'), headers=headers)
                with urllib.request.urlopen(pdf_req, timeout=30, context=ctx) as response:
                    with open(filepath, 'wb') as out_file:
                        out_file.write(response.read())
                print(f"✅ Salvo em {filepath}")
            except Exception as e:
                print(f"❌ Erro ao baixar {filename}: {e}")
                
        print(f"\nSalvos na pasta {output_dir}.")
        
        list_path = os.path.join(output_dir, 'todos_os_links.txt')
        with open(list_path, 'w') as f:
            for link in fixed_links:
                f.write(f"{link}\n")

except Exception as e:
    print('Erro ao acessar a página:', e)
