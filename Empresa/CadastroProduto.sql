
--
CREATE TABLE PRODUTOS (
    CODIGO VARCHAR(10) NOT NULL, 
    DESCRITOR VARCHAR(100) NULL, 
    SABOR VARCHAR(50) NULL, 
    TAMANHO VARCHAR(50) NULL, 
    EMBALAGEM VARCHAR(50) NULL, 
    PRECO_LISTA FLOAT NULL, 
    PRIMARY KEY (CODIGO)
);
----
CREATE TABLE VENDEDORES (
    MATRICULA VARCHAR(5) NOT NULL, 
    NOME VARCHAR(100) NULL, 
    BAIRRO VARCHAR(50) NULL, 
    COMISSAO FLOAT NULL, 
    DATA_ADMISSAO DATE NULL, 
    FERIAS BIT NULL, 
    PRIMARY KEY (MATRICULA)
);
----
CREATE TABLE CLIENTES
(
CPF VARCHAR(11) NOT NULL,
NOME VARCHAR(100) NULL,
ENREDECO VARCHAR(100) NULL,
BAIRRO VARCHAR(50) NULL,
CIDADE VARCHAR(50) NULL,
ESTADO VARCHAR(50) NULL,
CEP VARCHAR(8) NULL,
DATA_NASCIMENTO DATE NULL,
IDADE INTEGER NULL,
GENERO VARCHAR(1) NULL,
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMAIRA_COMPRA BIT,
PRIMARY KEY (CPF)
);
---
CREATE TABLE TABELA_DE_VENDAS (
    NUMERO VARCHAR(5) NOT NULL, 
    DATA_VENDA DATE NULL, 
    CPF VARCHAR(11) NOT NULL, 
    MATRICULA VARCHAR(11) NOT NULL, 
    IMPOSTO FLOAT NULL, 
    PRIMARY KEY (NUMERO)
);
ALTER TABLE TABELA_DE_VENDAS 
ADD CONSTRAINT FK_CLIENTES 
FOREIGN KEY (CPF) REFERENCES CLIENTES (CPF);
------- Cria�ao de tabelas itens da tabela ------------
ALTER TABLE TABELA_DE_VENDAS 
ALTER COLUMN MATRICULA VARCHAR(5) NOT NULL;
----
ALTER TABLE TABELA_DE_VENDAS 
ADD CONSTRAINT FK_VENDEDORES 
FOREIGN KEY (MATRICULA) REFERENCES VENDEDORES (MATRICULA);
-- ex;
ALTER TABLE TABELA_DE_ITENS_VENDIDOS
ADD CONSTRAINT FK_NUMERO
FOREIGN KEY (NUMERO) REFERENCES TABELA_DE_VENDAS (NUMERO);

ALTER TABLE TABELA_DE_ITENS_VENDIDOS
ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO) REFERENCES PRODUTOS (CODIGO);
--
SELECT * FROM TABELA_DE_VENDAS;
SELECT * FROM VENDEDORES;
SELECT * FROM CLIENTES;
SELECT * FROM PRODUTOS;
SELECT * FROM TABELA_DE_ITENS_VENDIDOS;

ALTER TABLE TABELA_DE_VENDAS 
ALTER COLUMN MATRICULA VARCHAR(5) NOT NULL;