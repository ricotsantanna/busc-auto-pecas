const fs = require('fs');
const crypto = require('crypto');

function uuid() {
  return crypto.randomUUID();
}

function esc(str) {
  if (!str) return 'NULL';
  return "'" + str.replace(/'/g, "''") + "'";
}

const CATEGORIES = [
  { name: 'Freios', slug: 'freios', icon: 'Disc' },
  { name: 'Suspensão e Direção', slug: 'suspensao', icon: 'Wrench' },
  { name: 'Motor', slug: 'motor', icon: 'Settings' },
  { name: 'Filtros', slug: 'filtros', icon: 'Filter' },
  { name: 'Arrefecimento', slug: 'arrefecimento', icon: 'Snowflake' },
  { name: 'Transmissão', slug: 'transmissao', icon: 'Cog' },
];

const COMPANIES = [
  { cnpj: '11111111000111', name: 'Auto Peças São Paulo', email: 'contato@autosp.com.br' },
  { cnpj: '22222222000122', name: 'Mercadão das Peças', email: 'vendas@mercadao.com.br' },
  { cnpj: '33333333000133', name: 'Império Autoparts', email: 'atendimento@imperioparts.com' },
];

const STORES = [
  { name: 'Auto Peças SP - Centro', address: 'Rua das Flores, 123', city: 'São Paulo', state: 'SP', whatsapp: '5511999991111', rating: 4.8 },
  { name: 'Auto Peças SP - Zona Sul', address: 'Av. Paulista, 1000', city: 'São Paulo', state: 'SP', whatsapp: '5511999992222', rating: 4.5 },
  { name: 'Mercadão Matriz', address: 'Rodovia Dutra, km 10', city: 'Guarulhos', state: 'SP', whatsapp: '5511988883333', rating: 4.9 },
  { name: 'Império Sul', address: 'Rua Voluntários da Pátria, 500', city: 'Curitiba', state: 'PR', whatsapp: '5541977774444', rating: 4.7 },
];

const PARTS = [
  { name: 'Pastilha de Freio Dianteira', manufacturer: 'Cobreq', code: 'N-1234', category: 'freios', position: 'Dianteira' },
  { name: 'Disco de Freio Ventilado', manufacturer: 'Fremax', code: 'BD-5678', category: 'freios', position: 'Dianteira' },
  { name: 'Amortecedor Dianteiro Direito', manufacturer: 'Monroe', code: 'M-1010', category: 'suspensao', position: 'Dianteira Direita' },
  { name: 'Amortecedor Dianteiro Esquerdo', manufacturer: 'Monroe', code: 'M-1011', category: 'suspensao', position: 'Dianteira Esquerda' },
  { name: 'Filtro de Óleo', manufacturer: 'Tecfil', code: 'PSL123', category: 'filtros', position: 'N/A' },
  { name: 'Filtro de Ar do Motor', manufacturer: 'Mann', code: 'C-28100', category: 'filtros', position: 'N/A' },
  { name: 'Bomba de Água', manufacturer: 'Nakata', code: 'NK-8080', category: 'arrefecimento', position: 'N/A' },
  { name: 'Radiador de Alumínio', manufacturer: 'Visconde', code: 'RV-900', category: 'arrefecimento', position: 'Dianteira' },
  { name: 'Kit Embreagem', manufacturer: 'Luk', code: '620 3000 00', category: 'transmissao', position: 'N/A' },
  { name: 'Correia Dentada', manufacturer: 'Gates', code: 'GT-500', category: 'motor', position: 'N/A' },
  { name: 'Jogo de Velas de Ignição', manufacturer: 'NGK', code: 'BKR6E-11', category: 'motor', position: 'N/A' },
  { name: 'Óleo de Motor 5W30 Sintético', manufacturer: 'Castrol', code: '5W30-1L', category: 'motor', position: 'N/A' },
];

let sql = '';

// 1. Delete existing (Optional, but let's clear them just in case)
sql += `DELETE FROM store_offers;\n`;
sql += `DELETE FROM stores;\n`;
sql += `DELETE FROM companies;\n`;
sql += `DELETE FROM part_compatibility;\n`;
sql += `DELETE FROM master_parts;\n`;
sql += `DELETE FROM categories;\n\n`;

// 2. Categories
const catMap = {};
for (const cat of CATEGORIES) {
  const id = uuid();
  catMap[cat.slug] = id;
  sql += `INSERT INTO categories (id, name, slug, icon, created_at) VALUES (${esc(id)}, ${esc(cat.name)}, ${esc(cat.slug)}, ${esc(cat.icon)}, (unixepoch() * 1000));\n`;
}
sql += `\n`;

// 3. Companies & Stores
const storeIds = [];
for (let i = 0; i < COMPANIES.length; i++) {
  const comp = COMPANIES[i];
  const compId = uuid();
  sql += `INSERT INTO companies (id, cnpj, name, email, password_hash, active_plan, created_at) VALUES (${esc(compId)}, ${esc(comp.cnpj)}, ${esc(comp.name)}, ${esc(comp.email)}, 'fake_hash', 'PROFISSIONAL', (unixepoch() * 1000));\n`;
  
  // Assign stores
  let assignedStores = [];
  if (i === 0) assignedStores = [STORES[0], STORES[1]];
  if (i === 1) assignedStores = [STORES[2]];
  if (i === 2) assignedStores = [STORES[3]];

  for (const st of assignedStores) {
    const storeId = uuid();
    storeIds.push(storeId);
    sql += `INSERT INTO stores (id, company_id, name, address, city, state, whatsapp, rating, created_at) VALUES (${esc(storeId)}, ${esc(compId)}, ${esc(st.name)}, ${esc(st.address)}, ${esc(st.city)}, ${esc(st.state)}, ${esc(st.whatsapp)}, ${st.rating}, (unixepoch() * 1000));\n`;
  }
}
sql += `\n`;

// 4. Master Parts & Offers
for (const part of PARTS) {
  const partId = uuid();
  const catId = catMap[part.category];
  
  sql += `INSERT INTO master_parts (id, name, manufacturer, manufacturer_code, category_id, position, created_at, updated_at) VALUES (${esc(partId)}, ${esc(part.name)}, ${esc(part.manufacturer)}, ${esc(part.code)}, ${esc(catId)}, ${esc(part.position)}, (unixepoch() * 1000), (unixepoch() * 1000));\n`;

  // For each part, generate 1 to 3 offers from random stores
  const numOffers = Math.floor(Math.random() * 3) + 1; // 1 to 3
  
  // Shuffle storeIds
  const shuffledStores = [...storeIds].sort(() => 0.5 - Math.random());
  const selectedStores = shuffledStores.slice(0, numOffers);

  for (const stId of selectedStores) {
    const offerId = uuid();
    const price = (Math.random() * 300 + 50).toFixed(2);
    const inStock = Math.random() > 0.1 ? 1 : 0; // 90% in stock
    const condition = Math.random() > 0.8 ? 'USADO' : 'NOVO'; // 80% new
    
    sql += `INSERT INTO store_offers (id, store_id, part_id, price, in_stock, condition, created_at, updated_at) VALUES (${esc(offerId)}, ${esc(stId)}, ${esc(partId)}, ${price}, ${inStock}, ${esc(condition)}, (unixepoch() * 1000), (unixepoch() * 1000));\n`;
  }
}

fs.writeFileSync('seed-parts.sql', sql);
console.log('Generated seed-parts.sql successfully!');
