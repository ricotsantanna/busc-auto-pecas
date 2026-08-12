#!/bin/bash
source scripts/catalog_extractor/venv/bin/activate

echo "Iniciando processamento em lote de todos os catálogos..."

for dir in catalogos_*; do
    if [ -d "$dir" ]; then
        echo "Processando diretório: $dir"
        python scripts/catalog_extractor/extract_catalogs.py "$dir"
    fi
done

echo "Processamento finalizado."
