USE assistencia_celulares_db;

-- Insere os técnicos.

INSERT INTO tecnicos (nome, cpf, telefone, especialidade) VALUES

('Carlos Eduardo Souza', '111.222.333-44', '(14) 99123-4567', 'Hardware'),
('Fernanda Lima Torres', '222.333.444-55', '(14) 99234-5678', 'Software');

-- Insere os clientes.
INSERT INTO clientes (nome, cpf, telefone) VALUES
('Ana Paula Ribeiro', '333.444.555-66', '(14) 99345-6789'),
('Bruno Henrique Alves', '444.555.666-77', '(14) 99456-7890'),
('Camila dos Santos', '555.666.777-88', '(14) 99567-8901');
 
 -- Insere os dispositivos.
 INSERT INTO dispositivos (id_cliente, imei, marca, modelo) VALUES
 (1, '3512344567891234', 'Sansung', 'Galaxy S23'),
 (2, '351234567895678', 'Apple', 'Iphone 13'),
 (3, '351234567899876', 'Motorola', 'Edge 40');
 
 -- Insere as ordens de serviço.
 INSERT INTO ordens_servico (id_dispositivo, id_tecnico, data_abertura, status, descricao, senha_desbloqueio, valor_total) VALUES
 (1, 1, '2026-09-10', 'Em andamento', 'Troca de tela trincada', '2580', 350.00),
 (2, 2, '2026-09-12', 'Concluída', 'Substituição de bateria', NULL, 220.00),
 (3, 1, '2026-09-15', 'Aguardando peça', 'Conector de carga ruim', '1470', 180.00);
 
SELECT * FROM tecnicos;
SELECT * FROM clientes;
SELECT * FROM dispositivos;
SELECT * FROM ordens_servico;
