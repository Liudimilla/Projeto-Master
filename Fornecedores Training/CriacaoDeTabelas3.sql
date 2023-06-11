-- CPF do cliente
-- O nome completo do cliente
-- Endereço com Rua, bairro, cidade, estado e CEP
-- Data de nascimento
-- A idade
-- Gênero
-- O limite do crédito do cliente para ele comprar produtos na empresa
-- O volume mínimo de produtos que ele pode comprar
-- Se ele já realizou a primeira compra

CREATE TABLE [TABELA DE CLIENTES]
(
[CPF] [CHAR] (11),
[NOME] [VARCHAR] (100),
[ENDERECO1] [VARCHAR] (150),
[ENDERECO2] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (50),
[CIDADE] [VARCHAR] (50),
[ESTADO] [CHAR] (2),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[GENERO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME DE COMPRA] [FLOAT],
[PRIMEIRA COMPRA] [BIT]
)

-- Código do produto
-- Nome do produto
-- Embalagem
-- Tamanho
-- Sabor
-- Preço de lista

CREATE TABLE [TABELA DE PRODUTOS]
(
[CODIGO DO PRODUTO] [VARCHAR] (20),
[NOME DO PRODUTO] [VARCHAR] (150),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]
);

   CREATE TABLE [TABELA DE FORNECEDORES]
   (
   [CNPJ] [CHAR] (11),
   [NOME DA EMPRESA] [VARCHAR] (100),
   [ENDERECO1] [VARCHAR] (150),
   [ENDERECO2] [VARCHAR] (150),
   [BAIRRO] [VARCHAR] (50),
   [CIDADE] [VARCHAR] (50),
   [ESTADO] [CHAR] (2),
   [CEP] [CHAR] (8),
   [DATA DE CONTRATO] [DATE],
   [LIMITE DE CREDITO] [MONEY],
   [VOLUME DE COMPRA] [FLOAT],
   [PRIMEIRA COMPRA] [BIT]
   )

   CREATE TABLE [TABELA DE VENDEDORES]
   (
   [MATRICULA] [CHAR] (11),
   [NOME] [VARCHAR] (100),
   [COMISSAO] [MONEY]
   )

   CREATE TABLE [TABELA DE FUNCIONARIOS](
    [MATRICULA] [varchar](5) NOT NULL,
    [NOME] [varchar](100) NULL,
    [CIDADE] [varchar](100) NULL,
    [PERCENTUAL COMISSÃO] [FLOAT] NOT NULL,
    [DATA INICIO] [date] NOT NULL,
    [TEM DEPENDENTE] [BIT]);