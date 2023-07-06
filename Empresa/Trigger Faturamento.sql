--- 
CREATE TABLE TAB_FATURAMENTO (
    DATA_VENDA DATE NULL, 
    TOTAL_VENDA FLOAT
);
--- Ver o pre�o das duas tabelas;
SELECT 
    TV.DATA_VENDA, 
    SUM (TIV.QUANTIDADE * TIV.PRECO) AS TOTAL_VENDA 
FROM TABELA_DE_VENDAS TV 
INNER JOIN TABELA_DE_ITENS_VENDIDOS TIV 
ON TV.NUMERO = TIV.NUMERO 
GROUP BY TV.DATA_VENDA;
---
SELECT * FROM VENDEDORES;
SELECT * FROM CLIENTES;
SELECT * FROM PRODUTOS
SELECT * FROM TABELA_DE_ITENS_VENDIDOS;
---

--- Inserir itens de vendas faturamento
INSERT INTO TABELA_DE_VENDAS VALUES ('0109', '2018-05-15', '1471156710', '235', 0.19);
INSERT INTO TABELA_DE_ITENS_VENDIDOS VALUES ('0109', '1000889', 100, 10);

-- seleciona o valor das vendas naquele dia;
SELECT 
    TV.DATA_VENDA, 
    SUM (TIV.QUANTIDADE * TIV.PRECO) AS TOTAL_VENDA 
FROM TABELA_DE_VENDAS TV 
INNER JOIN TABELA_DE_ITENS_VENDIDOS TIV 
ON TV.NUMERO = TIV.NUMERO 
GROUP BY TV.DATA_VENDA;

-- incluir e atualiza linha em faturamento;
INSERT INTO TAB_FATURAMENTO 
SELECT 
    TV.DATA_VENDA, 
    SUM (TIV.QUANTIDADE * TIV.PRECO) AS TOTAL_VENDA 
FROM TABELA_DE_VENDAS TV 
INNER JOIN TABELA_DE_ITENS_VENDIDOS TIV 
ON TV.NUMERO = TIV.NUMERO 
GROUP BY TV.DATA_VENDA;
--
SELECT * FROM TAB_FATURAMENTO;
-- faturamento total da causa
SELECT * FROM TAB_FATURAMENTO;

INSERT INTO TABELA_DE_VENDAS 
VALUES ('0104', '2018-05-16', '1471156710', '235', 0.18);

INSERT INTO TABELA_DE_ITENS_VENDIDOS VALUES ('0104', '1000889', 100, 10);

DELETE FROM TAB_FATURAMENTO;

INSERT INTO TAB_FATURAMENTO 
SELECT 
    TV.DATA_VENDA, 
    SUM (TIV.QUANTIDADE * TIV.PRECO) AS TOTAL_VENDA 
FROM TABELA_DE_VENDAS TV 
INNER JOIN TABELA_DE_ITENS_VENDIDOS TIV 
ON TV.NUMERO = TIV.NUMERO 
GROUP BY TV.DATA_VENDA;
---
--
CREATE TRIGGER TG_ITENS_VENDIDOS 
ON [dbo].[TABELA_DE_ITENS_VENDIDOS] 
AFTER INSERT, UPDATE, DELETE 
AS 
BEGIN 
DELETE FROM TAB_FATURAMENTO;
--

CREATE TRIGGER TG_ITENS_VENDIDOS 
ON [dbo].[TABELA_DE_ITENS_VENDIDOS] 
AFTER INSERT, UPDATE, DELETE 
AS 
BEGIN 
DELETE FROM TAB_FATURAMENTO;

INSERT INTO TAB_FATURAMENTO 
SELECT 
    TV.DATA_VENDA, 
    SUM (TIV.QUANTIDADE * TIV.PRECO) AS TOTAL_VENDA 
FROM TABELA_DE_VENDAS TV 
INNER JOIN TABELA_DE_ITENS_VENDIDOS TIV 
ON TV.NUMERO = TIV.NUMERO 
GROUP BY TV.DATA_VENDA;

END;
----
SELECT * FROM TAB_FATURAMENTO;
---
INSERT INTO TABELA_DE_VENDAS 
VALUES ('0105', '2018-05-16', '1471156710', '235', 0.18);

INSERT INTO TABELA_DE_ITENS_VENDIDOS 
VALUES ('0105', '1000889', 150, 10);
---
INSERT INTO TABELA_DE_VENDAS 
VALUES (
    '0106', '2018-05-16', '1471156710', '235', 0.18);

INSERT INTO TABELA_DE_ITENS_VENDIDOS 
VALUES (
    '0106', '1000889', 150, 10);
---
	UPDATE TABELA_DE_ITENS_VENDIDOS SET QUANTIDADE = 200 
WHERE NUMERO = '0106';
---
DELETE FROM TABELA_DE_ITENS_VENDIDOS 
WHERE NUMERO = '0106';
---

