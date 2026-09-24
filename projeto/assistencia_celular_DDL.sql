-- Cria a base de dados.
CREATE DATABASE assistencia_celulares_db;
USE assistencia_celulares_db;

-- Cria a tabela de clientes.
CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(15) NOT NULL UNIQUE,
  telefone VARCHAR(20)
);

-- Cria a tabela de dispositivos.
CREATE TABLE dispositivos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL,
  imei VARCHAR(20) NOT NULL UNIQUE,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,

  FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- Cria a tabela de técnicos.
CREATE TABLE tecnicos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(15) NOT NULL UNIQUE,
  telefone VARCHAR(20),
  especialidade VARCHAR(50) NOT NULL
);

-- Tabela de ordens de serviço.
CREATE TABLE ordens_servico (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_dispositivo INT NOT NULL,
  id_tecnico INT NOT NULL,
  data_abertura DATE NOT NULL,
  status VARCHAR(20) NOT NULL,
  descricao TEXT NOT NULL,
  senha_desbloqueio VARCHAR(50),
  valor_total DECIMAL(10,2) NOT NULL,

  FOREIGN KEY (id_dispositivo) REFERENCES dispositivos(id),
  FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id)
);
