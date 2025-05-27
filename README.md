# 💾 Aprendizado de Comandos SQL - Exercício 4

Este repositório contém scripts SQL desenvolvidos durante meu processo de **aprendizagem de banco de dados relacional**, como parte dos exercícios do curso. O foco está na criação, inserção e relacionamento de dados utilizando **comandos SQL básicos e intermediários**.

---

## 📚 Objetivo

O principal objetivo é praticar e fixar os seguintes conceitos de SQL:

- Criação de banco de dados e tabelas
- Inserção de dados com `INSERT INTO`
- Aplicação de chaves primárias (`PRIMARY KEY`) e estrangeiras (`FOREIGN KEY`)
- Relacionamento entre tabelas
- Estruturação lógica de um modelo de dados para representar informações sobre:
  - Veículos
  - Proprietários
  - Combustíveis
  - Acessórios
  - Localidades
  - Modelos e Marcas

---

## 🗂️ Estrutura de Tabelas

O banco de dados `ex4_caio` contém as seguintes tabelas:

| Tabela              | Finalidade                                         |
|---------------------|----------------------------------------------------|
| `cor`               | Cadastro das cores dos veículos                   |
| `acessorio`         | Lista de acessórios disponíveis                   |
| `localidade`        | Locais associados aos proprietários               |
| `marca`             | Marcas de veículos                                |
| `combustivel`       | Tipos de combustíveis                             |
| `modelo`            | Modelos dos veículos, associados à marca          |
| `proprietario`      | Dados dos proprietários                           |
| `veiculo`           | Informações detalhadas dos veículos               |
| `veiculo_combustivel` | Relação entre veículos e seus combustíveis       |
| `veiculo_acessorio` | Relação entre veículos e seus acessórios          |

---

## 🧩 Relacionamentos

- `modelo` → `marca` via `cd_marca`
- `proprietario` → `localidade` via `cd_localidade`
- `veiculo` → `cor`, `proprietario`, `modelo`
- `veiculo_combustivel` → `veiculo`, `combustivel`
- `veiculo_acessorio` → `veiculo`, `acessorio`

---

## 🔄 Próximos Passos

Durante o avanço do projeto e dos estudos, irei praticar também:

- Alterações em tabelas com `ALTER TABLE`
- Adição e remoção de colunas
- Renomear colunas e tabelas
- Atualização de dados com `UPDATE`
- Exclusão de dados com `DELETE`
- Criação de consultas com `SELECT`, `JOIN`, `LIKE` e outras cláusulas úteis

---

## 📌 Observações

- Este projeto faz parte do **meu aprendizado contínuo em SQL**, portanto poderá ser modificado conforme avanço nos estudos.
- Todo o conteúdo é baseado em exercícios práticos, com supervisão e orientação do curso Entra21.
- O banco de dados pode ser importado em um SGBD como **MySQL** para testes e execução.

---

## 📁 Como usar

1. Clone ou copie os scripts para seu computador.
2. Execute os comandos no seu banco MySQL:
   ```sql
   CREATE DATABASE ex4_caio;
   USE ex4_caio;
   -- (demais comandos abaixo...)

Verifique os relacionamentos com ferramentas como o MySQL Workbench ou DBeaver.

👨‍💻 Autor

Caio Amaro
Aluno do curso de Java - Entra21 2025


Implementação Proposta
![image](https://github.com/user-attachments/assets/a29e1856-4874-42e5-bfdc-d40244ebbaec)



