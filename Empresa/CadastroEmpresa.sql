--
CREATE DATABASE [VENDAS SUCOS];
--
CREATE DATABASE [VENDAS SUCOS 2] 
ON (
    NAME = 'VENDAS_SUCOS_2_DAT', 
    FILENAME ='C:\TEMP\VENDAS_SUCOS_02.MDF', 
    SIZE = 10, 
    MAXSIZE = 50,  
    FILEGROWTH = 5
);
--
CREATE DATABASE [VENDAS SUCOS 2] 
ON (
    NAME = 'VENDAS_SUCOS_2_DAT', 
    FILENAME ='C:\TEMP\VENDAS_SUCOS_02.MDF', 
    SIZE = 10, 
    MAXSIZE = 50, 
    FILEGROWTH = 5
) 
LOG ON (
    NAME = 'VENDAS_SUCOS_2_LOG', 
    FILENAME ='C:\TEMP\VENDAS_SUCOS_02.LDF', 
    SIZE = 10, 
    MAXSIZE = 50, 
    FILEGROWTH = 5
);
CREATE TABLE VENDEDORES (
    MATRICULA VARCHAR(5) NOT NULL, 
    NOME VARCHAR(100) NULL, 
    BAIRRO VARCHAR(50) NULL, 
    COMISSAO FLOAT NULL, 
    DATA_ADMISSAO DATE NULL, 
    FERIAS BIT NULL, 
    PRIMARY KEY (MATRICULA)
);
CREATE TABLE PRODUTOS (
    CODIGO VARCHAR(10) NOT NULL, 
    DESCRITOR VARCHAR(100) NULL, 
    SABOR VARCHAR(50) NULL, 
    TAMANHO VARCHAR(50) NULL, 
    EMBALAGEM VARCHAR(50) NULL, 
    PRECO_LISTA FLOAT NULL, 
    PRIMARY KEY (CODIGO)
);
CREATE TABLE TABELA_DE_ITENS_VENDIDOS
(
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
QUANTIDADE FLOAT NULL,
PRECO FLOAT NULL,
PRIMARY KEY (NUMERO, CODIGO)
);