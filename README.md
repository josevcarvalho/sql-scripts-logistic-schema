# 🚚 sql-scripts-logistic-schema

Este projeto consiste na implementação de um **Banco de Dados Relacional** voltado para o cenário de logística. O sistema gerencia o fluxo de entregas, motoristas, veículos, clientes, rotas e ocorrências.

O modelo foi desenvolvido seguindo uma abordagem de "mini-mundo", aplicando rigorosamente as regras de **normalização**, **integridade referencial** e manipulação de dados via **DML** (Data Manipulation Language).

## 📋 Funcionalidades e Escopo

O projeto abrange as seguintes etapas de desenvolvimento de banco de dados:

* **Modelagem (DDL):** Estrutura completa de tabelas (Clientes, Motoristas, Veículos, Rotas, Entregas, Ocorrências).
* **População (DML):** Scripts de inserção de dados para testes (Dummy Data).
* **Análise (DQL):** Consultas SQL complexas para relatórios gerenciais.
* **Manutenção:** Scripts de atualização (`UPDATE`) e exclusão controlada (`DELETE`).

## 🛠️ Tecnologias Utilizadas

* **SGBD:** MySQL 8.x
* **Interface:** MySQL Workbench

## 📂 Estrutura do Repositório

Os scripts SQL estão numerados para garantir a ordem correta de execução e dependência.

| Arquivo | Descrição |
| :--- | :--- |
| `create_tables.sql` | Criação do banco de dados e das tabelas com chaves primárias e estrangeiras. |
| `insert_data.sql` | Inserção de dados fictícios para popular o banco. |
| `select_queries.sql` | Consultas `SELECT` (simples, com joins, agregações e filtros). |
| `updates.sql` | Exemplos de atualização de registros (ex: mudança de status de entrega). |
| `deletes.sql` | Exemplos de exclusão de registros (ex: remoção de ocorrências antigas). |

## 🚀 Como Executar o Projeto

### Pré-requisitos
* Ter o MySQL Server instalado.
* Ter um cliente SQL (Workbench ou linha de comando).

### Passo a Passo

1.  **Clone o repositório:**
    ```bash
    git clone <URL_DO_REPOSITORIO>
    cd <NOME_DO_REPOSITORIO>
    ```

2.  **Execute os scripts no MySQL:**
    Recomenda-se executar na ordem apresentada abaixo para evitar erros de chave estrangeira.

    **Via MySQL Workbench:**
    1.  Abra o Workbench e conecte-se ao servidor.
    2.  Vá em **File > Open SQL Script**.
    3.  Selecione o arquivo `create_tables.sql` e execute (ícone do raio ⚡).
    4.  Repita o processo para os arquivos `insert_data`, `select_queries`, `updates`, `deletes`

## 📊 Entidades Principais

* **Clientes:** Cadastro de quem solicita o serviço.
* **Motoristas:** Dados pessoais e CNH dos condutores.
* **Veículos:** Frota disponível (Placa, Modelo, Marca).
* **Rotas:** Definição de origem, destino e quilometragem.
* **Entregas:** Tabela central que vincula Motorista, Veículo, Rota e Cliente.
* **Ocorrências:** Registro de problemas durante o transporte.

---
Desenvolvido para fins educacionais e de portfólio.
