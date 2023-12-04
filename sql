CREATE DATABASE SUCOS_VENDAS;

USE SUCOS_VENDAS;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50),
    preco DECIMAL(10, 2)
);

-- No ID quando você define uma coluna com a propriedade AUTO_INCREMENT no MySQL, ela é automaticamente incrementada 

USE SUCO_VENDAS;

-- Inserir dados na tabela 'clientes'
INSERT INTO clientes (nome, email) VALUES ('João Silva', 'joao@email.com');
INSERT INTO clientes (nome, email) VALUES ('Maria Oliveira', 'maria@email.com');

-- Inserir dados na tabela 'produtos'
INSERT INTO produtos (nome_produto, preco) VALUES ('Suco de Laranja', 5.99);
INSERT INTO produtos (nome_produto, preco) VALUES ('Suco de Morango', 6.99);

-- consulta estruturada

SELECT
    nome,
    email
FROM
    clientes
WHERE
    nome = 'João Silva';

