--
SELECT * FROM PRODUTOS;
SELECT * FROM CLIENTES;
--- Atualiza�ao de campos
UPDATE PRODUTOS SET PRECO_LISTA = 9 WHERE CODIGO = '1040107';
UPDATE PRODUTOS SET EMBALAGEM = 'VIDRO' WHERE CODIGO = '1040108';
-- Seleciona todos os campos MANGA
SELECT * FROM PRODUTOS WHERE SABOR = 'Manga';
--- Acrescimo de valor 10%
UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10;
-- OU
UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10 
WHERE SABOR = 'Manga';
--
SELECT DESCRITOR FROM PRODUTOS WHERE TAMANHO = '350 ml';
SELECT DESCRITOR, TAMANHO FROM PRODUTOS WHERE TAMAnHO = '550 ml';
-- Alterar o tamanho da embalagem
SELECT DESCRITOR, replace (DESCRITOR, '350 ml', '550 ml') FROM PRODUTOS WHERE TAMANHO = '350 ml';
--
UPDATE PRODUTOS SET 
    DESCRITOR = replace(DESCRITOR, '350 ml', '550 ml'), 
    TAMANHO = '550 ml' 
WHERE TAMANHO = '350 ml';
--Modifique o endere�o do cliente 19290992743 para R. Jorge Emilio 23, em Santo Amaro, S�o Paulo, SP, CEP 8833223.
UPDATE [dbo].[CLIENTES] SET 
    [ENREDECO] = 'R. Jorge Emilio 23',
    [BAIRRO] = 'Santo Amaro',
    [CIDADE] = 'S�o Paulo',
    [ESTADO] = 'SP',
    [CEP] = '8833223'
WHERE [CPF] = '19290992743'
-- altera�ao o volume de compra em 20% dos clientes do estado do Rio de Janeiro
UPDATE [dbo].[CLIENTES]
    SET [VOLUME_COMPRA] = [VOLUME_COMPRA] * 1.2
WHERE [ESTADO] = 'RJ'

-- sele�ao interna de DB e externa.
SELECT * FROM PRODUTOS ORDER BY CODIGO;

SELECT * FROM Training.DBO.TABELA_DE_PRODUTOS 
ORDER BY CODIGO_DO_PRODUTO;

-- aumentar todos os pre�os dos produtos da outra tabela em 20%
UPDATE Training.DBO.TABELA_DE_PRODUTOS SET 
PRECO_DE_LISTA = PRECO_DE_LISTA * 1.20;
--sele�ao de dois DB Dados
SELECT 
A.CODIGO AS CODIGO_MINHA_TABELA, A.PRECO_LISTA AS PRECO_MINHA_TABELA, 
B.CODIGO_DO_PRODUTO AS CODIGO_TABELA_APOIO, B.PRECO_DE_LISTA AS PRECO_TABELA_APOIO 
FROM PRODUTOS A 
INNER JOIN Training.DBO.TABELA_DE_PRODUTOS B 
ON A.CODIGO = B.CODIGO_DO_PRODUTO;
--
SELECT 
A.CODIGO AS CODIGO_MINHA_TABELA, A.PRECO_LISTA AS PRECO_MINHA_TABELA, 
B.CODIGO_DO_PRODUTO AS CODIGO_TABELA_APOIO, B.PRECO_DE_LISTA AS PRECO_TABELA_APOIO 
FROM PRODUTOS A 
INNER JOIN Training.DBO.TABELA_DE_PRODUTOS B 
ON A.CODIGO = B.CODIGO_DO_PRODUTO;

-- aumentar em 30% o volume de compra dos clientes que possuem,
-- em seus endere�os, bairros onde os vendedores possuam escrit�rios.
SELECT A.CPF FROM [dbo].[CLIENTES] A INNER JOIN [dbo].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]

UPDATE A SET A.[VOLUME DE COMPRA] = 
    A.[VOLUME DE COMPRA] * 1.30
FROM [dbo].[CLIENTES] A 
INNER JOIN [dbo].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]
--
--
SELECT * FROM VENDEDORES;
---
UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.1;
---
BEGIN TRANSACTION 

INSERT INTO VENDEDORES 
VALUES ('239', 'Maria Joana', 'Copacabana', '0.2', '2015-01-01', 1);
---
