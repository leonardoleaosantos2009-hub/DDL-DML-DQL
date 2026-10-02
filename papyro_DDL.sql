CREATE DATABASE papyro_db;

USE papyro_db;

CREATE TABLE IF NOT EXISTS livro(
id INT AUTO_INCREMENT PRIMARY KEY,
isbn VARCHAR (13) NOT NULL UNIQUE,
autor VARCHAR(100) NOT NULL,
editora VARCHAR (100) NOT NULL,
genero VARCHAR (50) NOT NULL,
edicao VARCHAR (20) NOT NULL,
ano_publicacao INT NOT NULL
);

CREATE TABLE IF NOT EXISTS leitor(
id INT AUTO_INCREMENT PRIMARY KEY,
matricula VARCHAR (20) NOT NULL UNIQUE,
nome VARCHAR (100) NOT NULL,
cpf VARCHAR (14) NOT NULL UNIQUE,
tipo ENUM('Aluno', 'Professor') NOT NULL,
turma VARCHAR(20),
email VARCHAR(100) NOT NULL,
telefone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS exemplar(
id INT AUTO_INCREMENT PRIMARY KEY,
id_livro INT NOT NULL,
codigo INT NOT NULL UNIQUE,
situacao ENUM ('Disponível', 'Emprestado', 'Extraviado') NOT NULL,
FOREIGN KEY (id_livro) REFERENCES livro (id)
);

CREATE TABLE IF NOT EXISTS emprestimos(
id INT AUTO_INCREMENT PRIMARY KEY,
id_leitor INT NOT NULL,
id_exemplar INT NOT NULL,
data_emprestimo DATE NULL,
data_devolucao DATE NOT NULL,
data_prevista_devolucao DATE NOT NULL, 
FOREIGN KEY (id_leitor) REFERENCES leitor (id),
FOREIGN KEY (id_exemplar) REFERENCES exemplar (id)
);