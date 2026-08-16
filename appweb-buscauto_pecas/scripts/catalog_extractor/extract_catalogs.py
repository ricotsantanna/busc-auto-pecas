import google.generativeai as genai
import os
import sys
import glob
import json
import sqlite3
import time
import urllib.request
import urllib.error
from PyPDF2 import PdfReader, PdfWriter
import tempfile

# Load API Keys from environment or .env files
env_paths = [
    os.path.expanduser("~/.env"),
    os.path.join(os.path.dirname(__file__), "..", "..", ".env"),
    os.path.join(os.path.dirname(__file__), "..", "..", ".env.local")
]

GEMINI_API_KEY = os.environ.get("GEMINI_API_KEY")
NVIDIA_API_KEY = os.environ.get("NVIDIA_API_KEY") or os.environ.get("NVAPI_KEY")

for ep in env_paths:
    if os.path.exists(ep):
        try:
            with open(ep, "r", encoding="utf-8") as f:
                for line in f:
                    line_str = line.strip()
                    if not GEMINI_API_KEY and line_str.startswith("GEMINI_API_KEY="):
                        GEMINI_API_KEY = line_str.split("=", 1)[1].strip().strip('"').strip("'")
                    if not NVIDIA_API_KEY and (line_str.startswith("NVIDIA_API_KEY=") or line_str.startswith("NVAPI_KEY=")):
                        NVIDIA_API_KEY = line_str.split("=", 1)[1].strip().strip('"').strip("'")
        except Exception:
            pass

if GEMINI_API_KEY:
    genai.configure(api_key=GEMINI_API_KEY)

# DB Path
DB_PATH = os.path.join(os.path.dirname(__file__), '..', '..', 'data', 'local_catalog.db')

def save_to_db(pdf_name, page_num, parts_list):
    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()
    
    for part in parts_list:
        part_code = part.get('part_code', '')
        name = part.get('name', '')
        manufacturer = part.get('manufacturer', '') 
        category = part.get('category', '')
        
        cursor.execute('''
            INSERT INTO extracted_parts (original_pdf, page, part_code, name, manufacturer, category, status)
            VALUES (?, ?, ?, ?, ?, ?, 'pending')
        ''', (pdf_name, page_num, part_code, name, manufacturer, category))
        
        part_id = cursor.lastrowid
        
        compatibilities = part.get('compatible_vehicles', [])
        for comp in compatibilities:
            brand = comp.get('brand', '')
            model_name = comp.get('model', '')
            version = comp.get('version', '')
            year_start = comp.get('year_start', None)
            year_end = comp.get('year_end', None)
            engine = comp.get('engine', '')
            
            cursor.execute('''
                INSERT INTO extracted_compatibility (part_id, brand, model, version, year_start, year_end, engine)
                VALUES (?, ?, ?, ?, ?, ?, ?)
            ''', (part_id, brand, model_name, version, year_start, year_end, engine))
            
    conn.commit()
    conn.close()

def is_pdf_already_extracted(pdf_name):
    try:
        conn = sqlite3.connect(DB_PATH)
        cursor = conn.cursor()
        cursor.execute("SELECT COUNT(*) FROM extracted_parts WHERE original_pdf = ?", (pdf_name,))
        count = cursor.fetchone()[0]
        conn.close()
        return count > 0
    except Exception:
        return False

def call_nvidia_nim_api(text_content, prompt_instruction):
    """Calls NVIDIA NIM API using Llama 3.1 8B / 70B Instruct"""
    url = "https://integrate.api.nvidia.com/v1/chat/completions"
    headers = {
        "Authorization": f"Bearer {NVIDIA_API_KEY}",
        "Content-Type": "application/json",
        "Accept": "application/json",
        "User-Agent": "Mozilla/5.0 (Python catalog extractor)"
    }
    
    payload = {
        "model": "meta/llama-3.1-8b-instruct",
        "messages": [
            {"role": "system", "content": prompt_instruction},
            {"role": "user", "content": f"Texto do catálogo:\n{text_content}"}
        ],
        "temperature": 0.1,
        "top_p": 0.7,
        "max_tokens": 4096
    }
    
    req = urllib.request.Request(url, data=json.dumps(payload).encode('utf-8'), headers=headers, method='POST')
    with urllib.request.urlopen(req, timeout=120) as resp:
        res_data = json.loads(resp.read().decode('utf-8'))
        return res_data['choices'][0]['message']['content']

import re

def parse_json_safely(responseText):
    clean_text = responseText.strip()
    clean_text = re.sub(r'^```(?:json)?\s*', '', clean_text, flags=re.IGNORECASE)
    clean_text = re.sub(r'\s*```$', '', clean_text)
    clean_text = clean_text.strip()
    
    match = re.search(r'\[\s*\{.*\}\s*\]', clean_text, re.DOTALL)
    if match:
        clean_text = match.group(0)

    clean_text = re.sub(r'[\r\n]+', ' ', clean_text)
    
    try:
        return json.loads(clean_text)
    except Exception:
        clean_text_fixed = re.sub(r',\s*([\]\}])', r'\1', clean_text)
        try:
            return json.loads(clean_text_fixed)
        except Exception:
            return None

def extract_from_pdf(pdf_path, max_pages=None):
    pdf_name = os.path.basename(pdf_path)

    if is_pdf_already_extracted(pdf_name):
        print(f"\n[PULANDO] PDF já processado anteriormente: {pdf_name}")
        return

    reader = PdfReader(pdf_path)
    total_pages = len(reader.pages)
    
    print(f"\n--- Iniciando extração do PDF: {pdf_name} ({total_pages} páginas) ---")
    
    chunk_size = 2
    start_page = 0
    end_test_page = total_pages if max_pages is None else min(max_pages, total_pages)
    
    prompt = """
    Você é um Engenheiro de Dados especialista em Catálogos de Autopeças e Motopeças do Brasil. 
    Sua missão é extrair rigorosamente os dados das peças (códigos, descrições) e as aplicações (veículos) onde elas servem a partir do texto do catálogo.
    
    REGRAS DE FORMATAÇÃO E INFERÊNCIA EXTREMAMENTE IMPORTANTES:
    1. **Anos de Fabricação:** No Brasil, os catálogos usam o formato "AA/AA" ou "AA-AA" para anos (ex: "09/15", "94/01"). 
       Você DEVE converter isso para anos completos: "09/15" vira ano_inicial=2009 e ano_final=2015. "94/01" vira ano_inicial=1994 e ano_final=2001. Se disser apenas "09/", é ano_inicial=2009 e ano_final=null.
    2. **Separação de Aplicações:** Se o texto disser "Cb 300 09/15, Xre 300 Flex 17/22", você deve criar DUAS (2) entradas distintas no array `compatible_vehicles`. 
       Uma para o modelo Cb 300 e outra para o modelo Xre 300 Flex.
    3. **Inferência de Montadora (Brand):** Muitos catálogos omitem a montadora na linha do veículo. Ex: "Crf 230f 06/16". Você, como IA inteligente, DEVE saber que Crf 230f é fabricado pela HONDA. Preencha o campo "brand" corretamente mesmo que não esteja escrito no texto ("brand": "HONDA").
    4. **Modelo e Versão:** Separe o modelo principal ("CB 300") de versões adicionais ou motorização ("Flex").
    5. **Fabricante (Manufacturer):** Se a página contiver a marca da peça (ex: AuthoMix, Magnetron), preencha o campo. Caso contrário, inferir pelo contexto do catálogo.

    Retorne ESTRITAMENTE uma lista JSON válida (um array de objetos).
    NÃO use markdown (```json), não adicione explicações, apenas retorne o JSON puro.
    Formato:
    [
      {
          "part_code": "código exato da peça",
          "name": "nome/descrição da peça",
          "manufacturer": "marca da peça (fabricante da peça)",
          "category": "categoria (ex: Motor, Elétrica, Freio)",
          "compatible_vehicles": [
              {
                  "brand": "montadora inferida do veículo (ex: HONDA, YAMAHA)",
                  "model": "modelo do veículo (ex: CG 150 TITAN)",
                  "version": "versão do veículo (se houver, ex: KS, ESD)",
                  "year_start": 2009,
                  "year_end": 2015,
                  "engine": "motor (se aplicável)"
              }
          ]
      }
    ]
    Se não houver peças com códigos na página, retorne [].
    """

    for i in range(start_page, end_test_page, chunk_size):
        end_page = min(i + chunk_size, total_pages)
        print(f"Processando páginas {i+1} a {end_page}...")
        
        page_text = ""
        for j in range(i, end_page):
            try:
                text_extracted = reader.pages[j].extract_text() or ""
            except Exception as pe:
                text_extracted = ""
                print(f"  ⚠️ Aviso na leitura da página {j+1}: {pe}")
            page_text += f"\n--- Página {j+1} ---\n" + text_extracted
            
        if not page_text.strip():
            print("  ⚠️ Página sem texto extraível.")
            continue

        try:
            responseText = ""
            if NVIDIA_API_KEY:
                print(f"  Enviando texto para NVIDIA NIM API (Llama 3.1 8B)...")
                responseText = call_nvidia_nim_api(page_text, prompt)
            elif GEMINI_API_KEY:
                print(f"  Enviando documento para Gemini API...")
                writer = PdfWriter()
                for j in range(i, end_page):
                    writer.add_page(reader.pages[j])
                with tempfile.NamedTemporaryFile(delete=False, suffix=".pdf") as tmp_pdf:
                    writer.write(tmp_pdf)
                    tmp_pdf_path = tmp_pdf.name
                
                try:
                    uploaded_file = genai.upload_file(path=tmp_pdf_path, display_name=f"{pdf_name}_{i}")
                    model_gemini = genai.GenerativeModel('gemini-1.5-flash', generation_config={"response_mime_type": "application/json"})
                    response = model_gemini.generate_content([uploaded_file, prompt])
                    genai.delete_file(uploaded_file.name)
                    responseText = response.text
                finally:
                    if os.path.exists(tmp_pdf_path):
                        os.remove(tmp_pdf_path)
            else:
                print("  ❌ Nenhuma API Key configurada (NVIDIA_API_KEY ou GEMINI_API_KEY).")
                break

            parts_list = parse_json_safely(responseText)
            if parts_list and isinstance(parts_list, list) and len(parts_list) > 0:
                save_to_db(pdf_name, i+1, parts_list)
                print(f"  ✅ Sucesso: {len(parts_list)} peças estruturadas e salvas.")
            else:
                print("  ⚠️ Nenhuma peça válida encontrada nestas páginas.")
                
        except Exception as e:
            print(f"  ❌ Erro na comunicação com a API: {e}")
            
        time.sleep(1)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        target = sys.argv[1]
        if os.path.isdir(target):
            pdfs = glob.glob(os.path.join(target, "*.pdf"))
            print(f"Encontrados {len(pdfs)} PDFs no diretório {target}.")
            for pdf in pdfs:
                extract_from_pdf(pdf)
        elif os.path.isfile(target):
            extract_from_pdf(target)
        else:
            print("Caminho inválido.")
    else:
        test_pdf = os.path.join(os.path.dirname(__file__), '..', '..', 'catalogos_authomix', 'AUT-016-25-Catalogo-Biela-DIGITAL.pdf')
        if os.path.exists(test_pdf):
            extract_from_pdf(test_pdf, max_pages=6)
