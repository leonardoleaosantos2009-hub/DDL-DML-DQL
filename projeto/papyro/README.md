# Papyro - Sistema de Biblioteca

## Sobre o projeto

O Papyro é um banco de dados desenvolvido para controlar o funcionamento de uma biblioteca escolar.

O sistema permite cadastrar livros, leitores e exemplares, além de registrar os empréstimos e devoluções dos livros.

## Banco de dados

O nome do banco de dados utilizado é:

`papyro_db`

## Estrutura do banco

O banco possui 4 tabelas principais:

### Livro

Armazena as informações dos livros disponíveis na biblioteca.

* `id` - Identificador único do livro
* `isbn` - ISBN do livro
* `autor` - Autor do livro
* `editora` - Editora
* `genero` - Gênero do livro
* `edicao` - Edição do livro
* `ano_publicacao` - Ano de publicação

### Leitor

Armazena os dados das pessoas que podem realizar empréstimos.

* `id` - Identificador único do leitor
* `matricula` - Matrícula do leitor
* `nome` - Nome do leitor
* `cpf` - CPF
* `tipo` - Tipo de leitor: Aluno ou Professor
* `turma` - Turma do aluno
* `email` - E-mail
* `telefone` - Telefone

### Exemplar

Controla os exemplares físicos de cada livro.

* `id` - Identificador do exemplar
* `id_livro` - Identifica o livro ao qual o exemplar pertence
* `codigo` - Código único do exemplar
* `situacao` - Situação atual: Disponível, Emprestado ou Extraviado

### Empréstimos

Registra os empréstimos realizados pelos leitores.

* `id` - Identificador do empréstimo
* `id_leitor` - Identifica quem realizou o empréstimo
* `id_exemplar` - Identifica qual exemplar foi emprestado
* `data_emprestimo` - Data em que o empréstimo foi realizado
* `data_devolucao` - Data da devolução
* `data_prevista_devolucao` - Data prevista para devolução

## Relacionamentos

O banco possui os seguintes relacionamentos:

* Um **livro** pode possuir vários **exemplares**.
* Cada **exemplar** pertence a um **livro**.
* Um **leitor** pode realizar vários **empréstimos**.
* Cada **empréstimo** pertence a um **leitor**.
* Um **exemplar** pode aparecer em vários registros de empréstimos ao longo do tempo.
* Cada **empréstimo** está relacionado a um **exemplar**.

## Tecnologias utilizadas

* MySQL
* SQL
* DDL (Data Definition Language)

## Como executar

1. Abra o MySQL ou MySQL Workbench.
2. Abra o arquivo `papyro_DDL.sql`.
3. Execute o script SQL.
4. O banco `papyro_db` será criado automaticamente.
5. As tabelas serão criadas com suas respectivas chaves primárias e estrangeiras.

## Chaves e regras

O projeto utiliza:

* **PRIMARY KEY** para identificar cada registro.
* **FOREIGN KEY** para relacionar as tabelas.
* **NOT NULL** para campos obrigatórios.
* **UNIQUE** para evitar valores repetidos em campos como ISBN, matrícula, CPF e código do exemplar.
* **ENUM** para limitar algumas opções de cadastro.

## Objetivo

O objetivo do projeto é organizar os dados de uma biblioteca escolar em um banco de dados relacional, facilitando o controle dos livros, leitores, exemplares e empréstimos.
