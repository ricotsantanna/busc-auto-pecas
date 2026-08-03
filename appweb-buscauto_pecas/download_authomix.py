import urllib.request
import re
import os

url = 'https://www.authomix.com.br/catalogos'
output_dir = 'Buscautopeças.com.br/catalogos_authomix'

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

print(f"Buscando links de PDFs em {url}...")
req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})

try:
    html = urllib.request.urlopen(req).read().decode('utf-8')
    links = re.findall(r'href=[\'\"]([^\'\"]+\.pdf)[\'\"]', html, re.IGNORECASE)
    
    # Remove duplicates
    links = list(set(links))
    print(f"Encontrados {len(links)} catálogos em PDF distintos!")
    
    # Baixar apenas os 3 primeiros para demonstração rápida
    for i, pdf_url in enumerate(links[:3]):
        filename = pdf_url.split('/')[-1]
        filepath = os.path.join(output_dir, filename)
        
        print(f"Baixando ({i+1}/3): {filename}...")
        try:
            pdf_req = urllib.request.Request(pdf_url, headers={'User-Agent': 'Mozilla/5.0'})
            with urllib.request.urlopen(pdf_req) as response, open(filepath, 'wb') as out_file:
                out_file.write(response.read())
            print(f"✅ Salvo em {filepath}")
        except Exception as e:
            print(f"❌ Erro ao baixar {filename}: {e}")
            
    print(f"\nDownload de demonstração concluído. Salvos na pasta {output_dir}.")
    
    # Salvar a lista com todos os links
    list_path = os.path.join(output_dir, 'todos_os_links.txt')
    with open(list_path, 'w') as f:
        for link in links:
            f.write(f"{link}\n")
    print(f"A lista completa com os {len(links)} links foi salva em {list_path}")

except Exception as e:
    print('Erro geral:', e)
