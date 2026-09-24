-- Defina o uso de base de dados
USE assistencia_celulares_db;

-- Filtragem pelo nome do cliente
SELECT * FROM clientes
WHERE nome = 'Ana Paula Ribeiro';

-- Filtragem pelo valor da ordem de serviço
SELECT id_dispositivo, descricao, valor_total FROM ordens_servico
WHERE valor_total >= 150;

-- Filtragem pela data de abertura da ordem de serviço
SELECT * FROM ordens_servico
WHERE data_abertura >= '2026-09-12';

-- Filtragem pela marca do dispositivo
SELECT marca, imei, modelo FROM dispositivos
WHERE marca = 'Apple'
OR marca = 'Samsung';

-- Filtragem pela correspondência no nome do cliente
SELECT nome, telefone FROM clientes
WHERE nome LIKE '%Santos%';

-- Seleção do nome dos clientes na ordem descendente
SELECT * FROM clientes
ORDER BY nome DESC;

-- DESAFIOS (15 minutos):
-- 1) Exiba as ordens de serviço por valor total crescente
SELECT * FROM ordens_servico
ORDER BY valor_total ASC;

-- 2) Exibe o nome do técnico que tem CPF igual a 222.333.444-55
SELECT nome FROM tecnicos
WHERE cpf LIKE '222.333.444-55';

-- 3) Liste todas as ordens de serviço com status igual a Aguardando
SELECT * FROM ordens_servico
WHERE status LIKE '%Aguardando%'


