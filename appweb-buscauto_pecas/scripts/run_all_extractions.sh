#!/bin/bash
source venv/bin/activate 2>/dev/null || source scripts/catalog_extractor/venv/bin/activate 2>/dev/null || true

echo "Iniciando processamento em lote de todos os catálogos (incluindo Catalogos_Diversos)..."

for dir in catalogos_* Catalogos* continental-catalogo; do
    if [ -d "$dir" ]; then
        echo "=========================================="
        echo "Processando diretório: $dir"
        echo "=========================================="
        python3 scripts/catalog_extractor/extract_catalogs.py "$dir"
    fi
done

echo "Processamento em lote finalizado!"
