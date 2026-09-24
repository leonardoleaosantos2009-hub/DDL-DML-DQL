-- Exercício 1
CREATE DATABASE agroindustria_acucar_db;

USE agroindustria_acucar_db;

CREATE TABLE  setores(
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(40) NOT NULL,
 descricao VARCHAR(100) NOT NULL
);

CREATE TABLE sensores(
id INT AUTO_INCREMENT PRIMARY KEY,
id_setores INT NOT NULL,
codigo VARCHAR(20) NOT NULL,
tipo VARCHAR (20) NOT NULL,
fabricante VARCHAR (50) NOT NULL,
telefone_fornecedor VARCHAR(20) NOT NULL,
instalacao DATE NOT NULL,
status VARCHAR(20) NOT NULL,
FOREIGN KEY(id_setores) REFERENCES setores (id)
);

create table medicoes(
id INT AUTO_INCREMENT PRIMARY KEY,
id_sensores INT NOT NULL,
data_hora DATETIME NOT NULL,
valor DECIMAL(10,2),
FOREIGN KEY(id_sensores) REFERENCES sensores (id)
);

-- Exercicio 2

RENAME TABLE medicoes to leituras;

ALTER TABLE sensores
RENAME COLUMN status to estado;

ALTER TABLE setores
MODIFY COLUMN descricao VARCHAR(255) NOT NULL;

ALTER TABLE leituras
ADD COLUMN turno VARCHAR(10) NOT NULL;

ALTER TABLE sensores
DROP COLUMN telefone_fornecedor;

ALTER TABLE sensores
DROP COLUMN codigo;




