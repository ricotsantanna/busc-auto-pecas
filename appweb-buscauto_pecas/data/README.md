# Dados do catálogo

## Brazilian Cars

`raw/brazilian-cars.sql` veio de
[`gpupo/brazilian-cars`](https://github.com/gpupo/brazilian-cars), sob licença
MIT. O repositório está arquivado e os registros observados foram gerados em
2019; portanto, esta fonte é apenas uma carga histórica.

Execute:

```powershell
node scripts/import-brazilian-cars.mjs
```

O comando gera CSVs normalizados em `data/normalized`. Os IDs `import_id` são
determinísticos dentro da execução e preservam os relacionamentos entre os
arquivos.

Antes de publicar:

1. importe e valide veículos recentes por uma fonte licenciada;
2. mantenha a origem de cada registro em `data_sources`;
3. não associe peças automaticamente apenas pela semelhança do nome;
4. publique compatibilidades somente após revisão do catálogo do fabricante.

## API FIPE

Copie `.env.example` para `.env.local`, preencha `FIPE_API_KEY` e execute:

```powershell
npm.cmd run data:fipe
```

Por padrão, a sincronização cobre quinze marcas prioritárias e grava o resultado
em `data/fipe`. Use `npm.cmd run data:fipe -- --all` somente se o plano contratado
comportar uma consulta para cada modelo disponível.
