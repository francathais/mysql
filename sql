-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS NOSSAS_VENDAS;

-- Selecionar o banco de dados
USE NOSSAS_VENDAS;

--exemplo de como criar as tabelas

--A tabela real que eu preciso deve ter CPF, código de identificação do cliente; Nome completo de cada cliente; 
--Endereço, um campo que será decomposto quando armazenado na base de dados; 
--Data de nascimento; 
--Idade; 
--Sexo; 
--Limite de crédito;
--Limite mínimo de compra do produto; 
--Por fim, se o cliente já realizou alguma compra; isso informa se ele é um cliente novo ou antigo na empresa.

--Em MySQL

-- Criar a tabela 'TABELA DE CLIENTES'
CREATE TABLE `TABELA DE CLIENTES` (
    CPF VARCHAR(11),
    `Nome completo` VARCHAR(50),
    `Endereço completo` VARCHAR(50),
    `Data de nascimento` DATE,
    Idade INT,
    Sexo VARCHAR(1), --UMA LETRA PARA CADA GÊNERO
    `Limite de crédito` VARCHAR(50),
    `Volume mínimo de compra de produto` VARCHAR(50),
    `Se já realizou alguma compra na empresa` VARCHAR(50)
);

--Em SQL Server
CREATE TABLE [TABELA DE CLIENTES](

[CPF] [CHAR] (11),
[NOME] [VARCHAR] (150),
[RUA] [VARCHAR] (150),
[COMPLEMENTO] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (150),
[ESTADO] [CHAR] (2),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),

)

-- Exibir todos os registros da tabela 'TABELA DE CLIENTES'
SELECT * FROM `TABELA DE CLIENTES`;

-- Inserir dados na tabela 'TABELA DE CLIENTES'
INSERT INTO `TABELA DE CLIENTES` (`Nome completo`, CPF) VALUES ('João Silva', '00000000000');
INSERT INTO `TABELA DE CLIENTES` (`Nome completo`, CPF) VALUES ('Maria Oliveira', '11111111111');




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
DROP DATABASE IF EXISTS NOSSAS_VENDAS;
