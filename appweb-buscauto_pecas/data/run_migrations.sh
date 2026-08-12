#!/bin/bash
cd appweb-buscautopecas
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_0.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_1000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_1500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_2000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_2500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_3000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_3500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_4000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_4500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_5000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_5500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_6000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_6500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_7000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_7500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_8000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_8500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_9000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_9500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_10000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_10500.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_11000.sql --yes
npx wrangler d1 execute buscautopecas-db --remote --file=../data/migration_11500.sql --yes
