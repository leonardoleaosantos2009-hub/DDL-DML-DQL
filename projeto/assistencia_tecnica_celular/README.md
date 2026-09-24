# 📱 Sistema de Assistência Técnica de Celulares (`assistencia_celulares_db`)

Este repositório contém os scripts SQL para a criação e população de um banco de dados relacional voltado para a gestão de uma **Assistência Técnica de Celulares**. O sistema foi modelado para gerenciar clientes, dispositivos eletrônicos, técnicos responsáveis e ordens de serviço (O.S.).

---

## 🛠️ Tecnologias Utilizadas
* **SGBD:** MySQL / MariaDB
* **Linguagem:** SQL (DDL, DML e DQL)

---

## 📂 Estrutura do Banco de Dados

O banco de dados `assistencia_celulares_db` é composto por quatro tabelas principais:

1. **`clientes`**: Armazena as informações de cadastro dos clientes.
   * `id` (Chave Primária, Auto Increment)
   * `nome` (Nome completo)
   * `cpf` (CPF único do cliente)
   * `telefone` (Contato telefônico)

2. **`dispositivos`**: Registra os aparelhos celulares vinculados aos clientes.
   * `id` (Chave Primária, Auto Increment)
   * `id_cliente` (Chave Estrangeira referenciando `clientes`)
   * `imei` (Número de identificação único do aparelho)
   * `marca` (Ex: Samsung, Apple, Motorola)
   * `modelo` (Ex: Galaxy S23, iPhone 13)

3. **`tecnicos`**: Guarda o cadastro dos profissionais de manutenção.
   * `id` (Chave Primária, Auto Increment)
   * `nome` (Nome completo do técnico)
   * `cpf` (CPF único)
   * `telefone` (Contato)
   * `especialidade` (Ex: Hardware, Software)

4. **`ordens_servico`**: Controla os serviços prestados nos aparelhos.
   * `id` (Chave Primária, Auto Increment)
   * `id_dispositivo` (Chave Estrangeira referenciando `dispositivos`)
   * `id_tecnico` (Chave Estrangeira referenciando `tecnicos`)
   * `data_abertura` (Data em que o serviço foi aberto)
   * `status` (Ex: Em andamento, Concluída, Aguardando peça)
   * `descricao` (Detalhes do problema/serviço)
   * `senha_desbloqueio` (Senha opcional do aparelho para testes)
   * `valor_total` (Custo total do serviço)

---

## 🚀 Como Executar o Script

Para configurar o banco de dados em seu ambiente local, siga os passos abaixo:

1. Abra o seu gerenciador de banco de dados MySQL (como MySQL Workbench, DBeaver ou PhpMyAdmin).
2. Execute primeiro o script de **criação das tabelas** (DDL) para estruturar o banco e as restrições de chave estrangeira.
3. Em seguida, execute o script de **inserção de dados iniciais** (DML) para popular as tabelas com registros de teste.
4. Utilize as consultas de teste (`SELECT`) para verificar se os dados foram inseridos corretamente.
