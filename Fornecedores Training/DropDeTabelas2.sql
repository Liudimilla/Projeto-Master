CREATE TABLE [TABELA DE CLIENTES01]
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



CREATE TABLE [TABELA DE PRODUTOS02]
(
[CODIGO DO PRODUTO] [VARCHAR] (20),
[NOME DO PRODUTO] [VARCHAR] (150),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]
);

DROP TABLE [TABELA DE CLIENTES01]
DROP TABLE [TABELA DE PRODUTOS02]

--- Exclusao por produto
DELETE FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Limão';
