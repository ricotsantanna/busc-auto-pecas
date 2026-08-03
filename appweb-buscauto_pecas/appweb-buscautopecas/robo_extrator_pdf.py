import json
import re
import uuid

# Simulando o texto extraído da página 15 de um PDF da TECFIL (Filtros)
pdf_text_extracted = """
CÓDIGO    DESCRIÇÃO DO PRODUTO        APLICAÇÃO (VEÍCULOS)
PSL152    Filtro de Óleo Lubrificante Chevrolet Onix 1.0/1.4 2013-2019
PEL108    Filtro de Óleo Ecológico    Volkswagen Polo 1.0 TSI 2018+
ARL6096   Filtro de Ar Motor          Fiat Argo 1.0/1.3 Firefly 2017+
FCI1630   Filtro de Combustível       Ford Ka 1.0/1.5 3 Cilindros
ACP303    Filtro de Cabine (Ar Cond.) Hyundai HB20 1.0/1.6 2012-2022
"""

# Regex para ler a tabela: CÓDIGO (AlphaNum) + Espaço + Descrição e Aplicação
pattern = re.compile(r'^([A-Z0-9]{5,7})\s+(Filtro.+?)\s+([A-Za-z].+)$', re.MULTILINE)
matches = pattern.findall(pdf_text_extracted)

new_parts = []
for match in matches:
    code = match[0].strip()
    name = match[1].strip()
    app = match[2].strip()
    
    new_parts.append({
        'id': f'part-{uuid.uuid4().hex[:8]}',
        'categoryId': 'cat-filtros',
        'name': f"{name} ({app})",
        'manufacturer': 'Tecfil',
        'manufacturerCode': code,
        'description': f"Aplicação extraída do PDF: {app}"
    })

print(f"Robô: Foram lidas {len(new_parts)} peças da tabela do PDF.")

# Injetando no banco de dados
path = 'Buscautopeças.com.br/Appweb Buscautopeças/src/db/master-parts.json'
with open(path, 'r', encoding='utf-8') as f:
    data = json.load(f)

existing_codes = [p.get('manufacturerCode') for p in data.get('masterParts', [])]
added = 0
for part in new_parts:
    if part['manufacturerCode'] not in existing_codes:
        data['masterParts'].append(part)
        added += 1

with open(path, 'w', encoding='utf-8') as f:
    json.dump(data, f, ensure_ascii=False, indent=2)

print(f"Robô: {added} peças injetadas com sucesso no master-parts.json!")
