INSERT INTO companies (id, cnpj, name, email, password_hash, active_plan) 
VALUES ('c-1234', '00.000.000/0001-00', 'Loja Teste Oficial', 'teste@loja.com.br', '$2b$10$2KkpKpJrrBvSsblLPlPx0uuR4LNOoyhBPWUPyLY9gODOJe3pVUE9S', 'TRIAL');

INSERT INTO stores (id, company_id, name, address, city, state, whatsapp, rating)
VALUES ('s-1234', 'c-1234', 'Auto Peças Teste', 'Rua do Teste, 123', 'Rio de Janeiro', 'RJ', '21999999999', 5.0);
