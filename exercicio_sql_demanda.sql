-- criando as tabelas
create database exercicio;
use exercicio;
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(70) NOT NULL,
    cidade VARCHAR(50)
);

create table produtos (
id_produto int primary key not null,
nome_produto varchar(80) not null,
preco decimal (7,2) not null,
fabricante varchar(80),
qtd_estoque int not null
);

create table vendas (
id_venda int primary key not null,
id_produto int not null,
id_cliente int not null,
qtd_produto int not null,
data_venda date not null,
forma_pagamento varchar(50) not null,

foreign key (id_produto) references produtos(id_produto),
foreign key (id_cliente) references clientes(id_cliente)
);

-- inserindo dados

INSERT INTO clientes (id_cliente, nome, email, cidade) VALUES
(1,'Maria', 'maria@hotmail.com', 'Leopoldina'),
(2,'Antonio', 'toninho@hotmail.com', 'Muriae'),
(3,'Joarez', 'ju@hotmail.com', 'Cataguases'),
(4,'Godofredo', 'godo@hotmail.com', 'Itamarati'),
(5,'Gertrudes', 'gezinha@hotmail.com', 'Muriae');

insert into produtos (id_produto, nome_produto, preco, qtd_estoque) values
(7,"Blusa", 23.5, 10),
(8,"Camiseta", 50.99, 15),
(9,"Calça", 78.90, 20),
(15, 'Macacão', 80, 15),
(27, 'Vestido', 49.90, 10);

UPDATE produtos SET fabricante = 'JG modas' WHERE id_produto = 7;
UPDATE produtos SET fabricante = 'Flash' WHERE id_produto = 8;
UPDATE produtos SET fabricante = 'PG Style' WHERE id_produto = 9;
UPDATE produtos SET fabricante = 'Morrocos' WHERE id_produto = 15;
UPDATE produtos SET fabricante = 'Grinc' WHERE id_produto = 27;

insert into vendas values
(85, 7, 1, 2, '2025-10-01', 'Cartão'),
(27, 9, 2, 2, '2026-01-15', 'Pix'),
(15, 15, 5, 1, '2025-12-24', 'Pix'),
(7, 8, 4, 4, '2025-09-15', 'Cartão'),
(12, 27, 1, 3, '2026-01-10', 'Cartão');

insert into clientes (id_cliente, nome, email, cidade) values
(6,'Carlos','carlos@gmail.com','Muriaé'),
(7,'Fernanda','fernanda@gmail.com','Leopoldina'),
(8,'Paulo','paulo@gmail.com','Ubá'),
(9,'Juliana','juliana@gmail.com','Juiz de Fora'),
(10,'Ricardo','ricardo@gmail.com','Cataguases'),
(11,'Amanda','amanda@gmail.com','Muriaé'),
(12,'Bruno','bruno@gmail.com','Viçosa'),
(13,'Patricia','patricia@gmail.com','Ubá'),
(141,'Lucas','lucas@gmail.com','Leopoldina'),
(15,'Renata','renata@gmail.com','Juiz de Fora'),
(16,'Marcelo','marcelo@gmail.com','Cataguases'),
(17,'Vanessa','vanessa@gmail.com','Muriaé'),
(18,'Thiago','thiago@gmail.com','Viçosa'),
(19,'Aline','aline@gmail.com','Ubá'),
(20,'Eduardo','eduardo@gmail.com','Leopoldina'),
(21,'Rodrigo','rodrigo@gmail.com','Muriae'),
(22,'Tatiane','tatiane@gmail.com','Ubá'),
(23,'Roberta','roberta@gmail.com','Viçosa'),
(24,'Felipe','felipe@gmail.com','Juiz de Fora'),
(25,'Mariana','mariana@gmail.com','Leopoldina'),
(26,'Sandro','sandro@gmail.com','Cataguases'),
(27,'Daniela','daniela@gmail.com','Ubá'),
(28,'Igor','igor@gmail.com','Muriae'),
(29,'Camila','camila@gmail.com','Viçosa'),
(30,'Henrique','henrique@gmail.com','Juiz de Fora');

INSERT INTO produtos
(id_produto, nome_produto, preco, fabricante, qtd_estoque)
VALUES
(30,'Saia',39.90,'Fashion',12),
(31,'Jaqueta',120.00,'Style',8),
(32,'Short',35.50,'Flash',20),
(33,'Camisa Social',89.90,'Elegance',10),
(34,'Regata',29.90,'Sport',18),
(35,'Moletom',110.00,'Urban',6),
(36,'Casaco',150.00,'Winter',7),
(37,'Top',25.00,'Fashion',15),
(38,'Blazer',180.00,'Elegance',5),
(39,'Calça Jeans',95.00,'Denim',14),
(40,'Bermuda',45.00,'Flash',16),
(41,'Cropped',32.90,'Fashion',11),
(42,'Suéter',88.00,'Winter',9),
(43,'Vestido Longo',130.00,'Luxury',4),
(44,'Camisa Polo',70.00,'Sport',13),
(45,'Tênis',199.90,'Runner',10),
(46,'Boné',35.00,'Street',25),
(47,'Meia',12.90,'Comfort',50),
(48,'Bolsa',149.90,'Fashion',8),
(49,'Cinto',39.90,'CouroMax',20),
(50,'Sapato Social',249.90,'Elegance',6),
(51,'Sandália',89.90,'Summer',15),
(52,'Carteira',59.90,'Leather',12),
(53,'Relógio',299.90,'TimeX',5),
(54,'Óculos',179.90,'Vision',7);

insert into vendas values
(200,30,6,2,'2026-02-01','Pix'),
(201,31,7,1,'2026-02-02','Cartão'),
(202,32,8,3,'2026-02-03','Dinheiro'),
(203,33,9,2,'2026-02-04','Pix'),
(204,34,10,4,'2026-02-05','Cartão'),
(205,35,11,1,'2026-02-06','Pix'),
(206,36,12,2,'2026-02-07','Dinheiro'),
(207,37,13,3,'2026-02-08','Cartão'),
(208,38,15,1,'2026-02-09','Pix'),
(209,39,16,2,'2026-02-10','Cartão'),
(210,40,17,3,'2026-02-11','Dinheiro'),
(211,41,18,2,'2026-02-12','Pix'),
(212,42,19,1,'2026-02-13','Cartão'),
(213,43,20,1,'2026-02-14','Pix'),
(214,44,6,2,'2026-02-15','Dinheiro'),
(215,45,21,1,'2026-03-01','Pix'),
(216,46,22,2,'2026-03-02','Cartão'),
(217,47,23,5,'2026-03-02','Dinheiro'),
(218,48,24,1,'2026-03-03','Pix'),
(219,49,25,2,'2026-03-03','Cartão'),
(220,50,26,1,'2026-03-04','Pix'),
(221,51,27,2,'2026-03-04','Dinheiro'),
(222,52,28,1,'2026-03-05','Cartão'),
(223,53,29,1,'2026-03-05','Pix'),
(224,54,30,1,'2026-03-06','Cartão');

# Nível 1 — Consultas simples
# Demanda 1: O setor de atendimento precisa de uma relação contendo o nome e o e-mail de todos os clientes cadastrados.
select nome, email from clientes;

# Demanda 2: O gerente da loja quer verificar quais produtos estão cadastrados atualmente com seus respectivos preços.
select nome_produto, preco from produtos;

# Demanda 3: O responsável pelo estoque pediu uma lista dos produtos que possuem menos de 10 unidades disponíveis.
select nome_produto, qtd_estoque 
from produtos where qtd_estoque<10;

# Demanda 4: A filial de Muriaé deseja entrar em contato apenas com seus clientes.
select nome from clientes 
where cidade = 'Muriaé' or cidade = 'Muriae';

# Demanda 5: O setor comercial está preparando uma campanha para produtos com valor acima de R$100.
select nome_produto, preco from produtos
where preco>100;

# Demanda 6: O financeiro precisa consultar apenas as compras realizadas por Pix.
select*from vendas
where forma_pagamento = 'Pix';

# Nível 2 — Começando a pensar
# Demanda 7: Durante uma reunião, o gerente pediu para analisar primeiro os produtos de maior valor.
select * from produtos
order by preco desc;

# Demanda 8: A equipe de relacionamento quer conferir os clientes em sequência alfabética.
select*from clientes
order by nome asc;

# Demanda 9: O supervisor precisa verificar as vendas mais recentes antes das mais antigas.
select*from vendas
order by data_venda desc;

# Demanda 10: O estoque deseja identificar os cinco produtos com menor quantidade disponível.
select*from produtos
order by qtd_estoque asc limit 5;

# Demanda 11: A diretoria quer saber quantos clientes existem cadastrados.
select count(*) as qtd_clientes from clientes;

# Demanda 12: O financeiro quer saber quantos produtos existem no catálogo.
select count(*) as qtd_produtos from produtos;

# Nível 3 — Primeiros relacionamentos

# Demanda 13: Uma auditoria solicitou uma relação contendo:
# número da venda
# nome do cliente
# data da compra
select v.id_venda, v.data_venda, c.nome from vendas v
inner join clientes c
on c.id_cliente = v.id_cliente;

# Demanda 14
#  O comercial quer visualizar:
# nome do cliente
#  produto adquirido
# quantidade comprada

select c.nome, v.qtd_produto, p.nome_produto from clientes c
inner join vendas v
on v.id_cliente = c.id_cliente
inner join produtos p
on p.id_produto = v.id_produto;

# Demanda 15: O gerente quer saber quais produtos foram vendidos para Maria.
select v.id_venda, c.nome, p.nome_produto from clientes c
inner join vendas v
on v.id_cliente = c.id_cliente
inner join produtos p
on p.id_produto= v.id_produto 
where c.nome = 'Maria';

# Demanda 16: O suporte recebeu uma reclamação e precisa descobrir qual cliente realizou a compra de código 220.
select v.id_venda, c.nome from vendas v
inner join clientes c
on c.id_cliente = v.id_cliente
where v.id_venda = 220;

# Demanda 17: O financeiro quer visualizar todas as vendas feitas por clientes de Leopoldina.
select* from vendas v
inner join clientes c
on c.id_cliente = v.id_cliente
where c.cidade = 'Leopoldina';


# Demanda 18: A equipe comercial quer saber quais fabricantes tiveram produtos vendidos.
select distinct p.fabricante
from produtos p
inner join vendas v
on v.id_produto = p.id_produto;

# Nível 4 — Situações reais
# Demanda 19: A diretoria quer saber qual cidade possui mais clientes cadastrados.
select cidade, count(cidade) as qtd_cidade from clientes 
group by cidade
order by cidade desc limit 1;

# Demanda 20: O gerente deseja identificar quais produtos aparecem com mais frequência nas vendas.
select p.nome_produto, count(*) as qtd_vendas from produtos p
inner join vendas v
on v.id_produto= p.id_produto
group by p.nome_produto order by qtd_vendas desc;

# Demanda 21: O financeiro quer descobrir qual cliente realizou mais compras.
select c.nome, count(*) as qtd_compras from clientes c
inner join vendas v
on v.id_cliente = c.id_cliente 
group by c.nome
order by v.id_cliente desc limit 1;

# Demanda 22: A equipe de marketing deseja saber quais formas de pagamento são mais utilizadas.
select forma_pagamento, count(forma_pagamento)  as qtd_pagamento from vendas group by forma_pagamento;

# Demanda 23: O estoque quer descobrir quais fabricantes possuem mais produtos cadastrados.
select fabricante, count(fabricante) as qtd_fabricante from produtos 
group by fabricante
order by count(fabricante) desc;

# Demanda 24: A diretoria quer saber quais cidades ainda não geraram nenhuma venda.
select  c.cidade from clientes c
left join vendas v
on v.id_cliente = c.id_cliente
where v.id_venda is null;