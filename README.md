# Projeto SQL - Sistema de Clientes, Produtos e Vendas

## Sobre o Projeto

Este projeto foi desenvolvido com o objetivo de praticar conceitos de SQL através da criação de um banco de dados fictício de uma loja.

O banco contém informações sobre clientes, produtos e vendas, permitindo simular cenários próximos aos encontrados em atividades de análise de dados e suporte a negócios.

---

## Estrutura do Banco de Dados

O projeto possui três tabelas principais:

### Clientes

Armazena informações dos clientes cadastrados.

Campos:

* id_cliente
* nome
* email
* cidade

### Produtos

Armazena informações dos produtos disponíveis para venda.

Campos:

* id_produto
* nome_produto
* preco
* fabricante
* qtd_estoque

### Vendas

Registra as vendas realizadas.

Campos:

* id_venda
* id_produto
* id_cliente
* qtd_produto
* data_venda
* forma_pagamento

---

## Conceitos Praticados

Durante o desenvolvimento deste projeto foram praticados os seguintes conceitos:

* Criação de banco de dados
* Criação de tabelas
* Chaves primárias (PRIMARY KEY)
* Chaves estrangeiras (FOREIGN KEY)
* Inserção de dados (INSERT)
* Atualização de registros (UPDATE)
* Consultas básicas (SELECT)
* Filtros com WHERE
* Ordenação de resultados (ORDER BY)
* Limitação de registros (LIMIT)
* Funções de agregação (COUNT)
* Relacionamento entre tabelas (INNER JOIN)
* Agrupamento de dados (GROUP BY)

---

## Exemplos de Análises Realizadas

Algumas consultas desenvolvidas durante os estudos:

* Clientes cadastrados por cidade
* Produtos com menor quantidade em estoque
* Vendas realizadas por forma de pagamento
* Produtos mais vendidos
* Clientes com maior quantidade de compras
* Fabricantes com mais produtos cadastrados
* Identificação de clientes que realizaram compras
* Relatórios relacionando clientes, produtos e vendas

---

## Objetivo de Aprendizado

Este projeto faz parte da minha jornada de estudos em Banco de Dados e Análise de Dados.

O foco é evoluir gradualmente nos seguintes tópicos:

* GROUP BY
* HAVING
* LEFT JOIN
* Funções de agregação (SUM, AVG, MAX e MIN)
* Subconsultas
* Modelagem de dados
* SQL para análise de negócios

---

## Tecnologias Utilizadas

* MySQL
* SQL

---

## Autor

Projeto desenvolvido para fins de estudo e prática de SQL.
