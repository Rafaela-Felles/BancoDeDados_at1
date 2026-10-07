CREATE DATABASE empresa_senai;

USE empresa_senai;

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(19, 2) NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE vendas(
    id_vendas INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade_Vendida INT NOT NULL
);

/* Criando a tabela cliente */
SELECT * FROM cliente;

INSERT INTO CLIENTE (id_cliente, nome_cliente, email, telefone)
VALUES ("1", "Ivan", "Ivan@gmail.com", "19 00000-0001");

INSERT INTO CLIENTE (id_cliente, nome_cliente, email, telefone)
VALUES ("2", "Till", "Till@gmail.com", "19 00000-0002");

INSERT INTO CLIENTE (id_cliente, nome_cliente, email, telefone)
VALUES ("3", "Hyuna", "Hyuna@gmail.com", "19 00000-0003");

/* Criando a tabela produto */
SELECT * FROM produto;

INSERT INTO PRODUTO (id_produto, nome_produto, preco, quantidade)
VALUES ("1", "Tinta Preta", 50.00, 4);

INSERT INTO PRODUTO (id_produto, nome_produto, preco, quantidade)
VALUES ("2", "Guitarra Verde", 1000.00, 1);

INSERT INTO PRODUTO (id_produto, nome_produto, preco, quantidade)
VALUES ("3", "Moto Vermelha", 15.000, 2);

/* Criando a tabela venda */
SELECT * FROM vendas;

INSERT INTO vendas (id_vendas, id_cliente, id_produto, quantidade_Vendida)
VALUES ("1", "1", "1", 4);

INSERT INTO vendas (id_vendas, id_cliente, id_produto, quantidade_Vendida)
VALUES ("2", "2", "2", 1);

INSERT INTO vendas (id_vendas, id_cliente, id_produto, quantidade_Vendida)
VALUES ("3", "3", "3", 2);

/* TESTANDO O CRUD */

/* CREATE - Inserir */

INSERT INTO CLIENTE (id_cliente, nome_cliente, email, telefone)
VALUES ("4", "Luka", "Luka@gmail.com", "19 00000-0004");


/* READ - Consultar */
SELECT * FROM cliente;

/* UPDATE - Alterar */
UPDATE cliente SET telefone = '19 00000-0005' WHERE id_cliente = 4;

/* READ - Conferir alteração */
SELECT * FROM cliente;

/* DELETE - Excluir */
DELETE FROM cliente WHERE id_cliente = 4;

/* READ - Conferir exclusão */
SELECT * FROM cliente;



