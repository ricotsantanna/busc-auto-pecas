import google.generativeai as genai
import os
import json
import sqlite3
import time
from PyPDF2 import PdfReader, PdfWriter
import tempfile

# Config
GEMINI_API_KEY = "AIzaSyBO6unsAjQ8g6xVpJOYZXaU5fmkl_3Pd04"
genai.configure(api_key=GEMINI_API_KEY)

import sys
import glob

# Config
GEMINI_API_KEY = "AIzaSyBO6unsAjQ8g6xVpJOYZXaU5fmkl_3Pd04"
genai.configure(api_key=GEMINI_API_KEY)

# Using Flash model. We could use generation_config to enforce JSON, but prompt engineering usually suffices.
model = genai.GenerativeModel(
    'gemini-3.5-flash',
    generation_config={"response_mime_type": "application/json"}
)

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

def extract_from_pdf(pdf_path, max_pages=None):
    pdf_name = os.path.basename(pdf_path)
    reader = PdfReader(pdf_path)
    total_pages = len(reader.pages)
    
    print(f"\\n--- Iniciando extração do PDF: {pdf_name} ({total_pages} páginas) ---")
    
    # Process 2 pages at a time to avoid huge JSON outputs
    chunk_size = 2
    
    start_page = 0
    end_test_page = total_pages if max_pages is None else min(max_pages, total_pages)
    
    for i in range(start_page, end_test_page, chunk_size):
        end_page = min(i + chunk_size, total_pages)
        print(f"Processando páginas {i+1} a {end_page}...")
        
        # Create temp pdf
        writer = PdfWriter()
        for j in range(i, end_page):
            writer.add_page(reader.pages[j])
            
        with tempfile.NamedTemporaryFile(delete=False, suffix=".pdf") as tmp_pdf:
            writer.write(tmp_pdf)
            tmp_pdf_path = tmp_pdf.name
            
        try:
            print(f"  Enviando documento temporário para Gemini API...")
            uploaded_file = genai.upload_file(path=tmp_pdf_path, display_name=f"{pdf_name}_{i}")
            
            prompt = """
            Você é um Engenheiro de Dados especialista em Catálogos de Autopeças e Motopeças do Brasil. 
            O documento anexo contém páginas de um catálogo em PDF.
            Sua missão é extrair rigorosamente os dados das peças (códigos, descrições) e as aplicações (veículos) onde elas servem.
            
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
            
            print(f"  Aguardando resposta do modelo...")
            response = model.generate_content([uploaded_file, prompt])
            
            genai.delete_file(uploaded_file.name)
            
            text = response.text
            
            try:
                parts_list = json.loads(text)
                if isinstance(parts_list, list) and len(parts_list) > 0:
                    save_to_db(pdf_name, i+1, parts_list)
                    print(f"  ✅ Sucesso: {len(parts_list)} peças estruturadas e salvas.")
                else:
                    print("  ⚠️ Nenhuma peça encontrada nestas páginas.")
            except json.JSONDecodeError:
                print(f"  ❌ Erro ao fazer parse do JSON. Primeiros 100 caracteres: {text[:100]}")
                
        except Exception as e:
            print(f"  ❌ Erro na comunicação com a API: {e}")
            
        finally:
            os.remove(tmp_pdf_path)
            
        time.sleep(5)

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
        # Default fallback test
        test_pdf = os.path.join(os.path.dirname(__file__), '..', '..', 'catalogos_authomix', 'AUT-016-25-Catalogo-Biela-DIGITAL.pdf')
        if os.path.exists(test_pdf):
            print("Nenhum argumento passado. Executando PoC nas 6 primeiras páginas...")
            extract_from_pdf(test_pdf, max_pages=6)
        else:
            print("Nenhum argumento passado e arquivo de teste não encontrado.")
