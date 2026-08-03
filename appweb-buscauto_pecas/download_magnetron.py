import urllib.request
import re
import os
import ssl

url = 'https://www.magnetron.com.br/downloads/'
output_dir = 'Buscautopeças.com.br/catalogos_magnetron'

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

print(f"Buscando links de PDFs em {url}...")
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'}
req = urllib.request.Request(url, headers=headers)

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

try:
    # Adding User-Agent to pretend to be a real browser to bypass basic blocks
    html = urllib.request.urlopen(req, timeout=15, context=ctx).read().decode('utf-8', errors='ignore')
    
    links = re.findall(r'href=[\'\"]([^\'\"]+\.pdf)[\'\"]', html, re.IGNORECASE)
    
    if not links:
        # Tenta achar link na pagina inicial
        url = 'https://www.magnetron.com.br/'
        req = urllib.request.Request(url, headers=headers)
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
            fixed_links.append('https://www.magnetron.com.br' + link)
            
    if not fixed_links:
        print("Nenhum PDF direto encontrado. O site pode ter mudado a estrutura.")
        all_links = re.findall(r'href=[\'\"]([^\'\"]+)[\'\"]', html, re.IGNORECASE)
        print("Alguns links disponíveis na home:", list(set(all_links))[:10])
    else:
        print(f"Encontrados {len(fixed_links)} catálogos em PDF distintos!")
        
        # Baixar apenas os 3 primeiros
        for i, pdf_url in enumerate(fixed_links[:3]):
            filename = pdf_url.split('/')[-1].split('?')[0]
            filepath = os.path.join(output_dir, filename)
            
            print(f"Baixando ({i+1}/3): {filename}...")
            try:
                pdf_req = urllib.request.Request(pdf_url, headers=headers)
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
