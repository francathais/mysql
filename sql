-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS SUCOS_VENDAS;

-- Selecionar o banco de dados
USE SUCOS_VENDAS;

-- Criar a tabela 'clientes'
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50)
);

-- Criar a tabela 'produtos'
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50),
    preco DECIMAL(10, 2)
);

-- Inserir dados na tabela 'clientes'
INSERT INTO clientes (nome, email) VALUES ('João Silva', 'joao@email.com');
INSERT INTO clientes (nome, email) VALUES ('Maria Oliveira', 'maria@email.com');

-- Inserir dados na tabela 'produtos'
INSERT INTO produtos (nome_produto, preco) VALUES ('Suco de Laranja', 5.99);
INSERT INTO produtos (nome_produto, preco) VALUES ('Suco de Morango', 6.99);

-- Consulta estruturada
SELECT
    nome,
    email
FROM
    clientes
WHERE
    nome = 'João Silva';

-- Drop do banco de dados (use com cuidado)
-- O comando DROP DATABASE IF EXISTS SUCOS_VENDAS; é adicionado ao final do script para remover o banco de dados. 
-- O IF EXISTS é usado para garantir que o comando só seja executado se o banco de dados existir. 
DROP DATABASE IF EXISTS SUCOS_VENDAS;
