--Vendas Validas
SELECT 
TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL, 
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS V�LIDAS' 
ELSE 'VENDAS INV�LIDAS' END) AS RESULTADO 
FROM TABELA_DE_CLIENTES TC 
INNER JOIN (
    SELECT NF.CPF, 
    CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
    SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL 
    FROM NOTAS_FISCAIS NF 
    INNER JOIN ITENS_NOTAS_FISCAIS INF 
    ON NF.NUMERO = INF.NUMERO 
    GROUP BY NF.CPF, CONVERT(VARCHAR(7), NF.DATA_VENDA, 120)
) TV
ON TV.CPF = TC.CPF 
WHERE TV.MES_ANO = '2015-01';

---
--Lista de vendas inv�lidas e diferen�a entre o limite de venda m�x e o realizado e percentuais.
SELECT
TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS V�LIDAS'
ELSE 'VENDAS INV�LIDAS' END) AS RESULTADO
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(
SELECT 
NF.CPF
,CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO
,SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF
, CONVERT(VARCHAR(7), NF.DATA_VENDA, 120)
) TV
ON TV.CPF = TC.CPF
WHERE TV.MES_ANO = '2015-01';
--filtro especial para somente os que tiveram seus limites estourados.
SELECT
TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS V�LIDAS'
ELSE 'VENDAS INV�LIDAS' END) AS RESULTADO,
ROUND((1 - (TC.VOLUME_DE_COMPRA/TV.QUANTIDADE_TOTAL)) * 100, 2) AS PERCENTUAL
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(
SELECT 
NF.CPF
,CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO
,SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF
, CONVERT(VARCHAR(7), NF.DATA_VENDA, 120)
) TV
ON TV.CPF = TC.CPF
WHERE TV.MES_ANO = '2015-01'
AND (TC.VOLUME_DE_COMPRA - TV.QUANTIDADE_TOTAL) < 0;
-- Pesquisa por sabor ,ano e Venda_ano
SELECT TP.SABOR, 
YEAR(NF.DATA_VENDA) AS ANO, 
SUM(INF.QUANTIDADE) AS VENDA_ANO 
FROM TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF 
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO 
INNER JOIN NOTAS_FISCAIS NF 
ON INF.NUMERO = NF.NUMERO 
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA);
-- Venda  por ano;
SELECT TP.SABOR, 
YEAR(NF.DATA_VENDA) AS ANO, 
SUM(INF.QUANTIDADE) AS VENDA_ANO 
FROM TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF 
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO 
INNER JOIN NOTAS_FISCAIS NF 
ON INF.NUMERO = NF.NUMERO 
WHERE YEAR(NF.DATA_VENDA) = 2015 
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA);
-- Total do ano;
SELECT YEAR(NF.DATA_VENDA) AS ANO, 
SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO 
FROM NOTAS_FISCAIS NF 
INNER JOIN ITENS_NOTAS_FISCAIS INF 
ON NF.NUMERO = INF.NUMERO 
WHERE YEAR(NF.DATA_VENDA) = 2015 
GROUP BY YEAR(NF.DATA_VENDA);
-- Total do ano em percentual
SELECT VS.SABOR, VS.ANO, VS.VENDA_ANO, VA.VENDA_TOTAL_ANO, 
    ROUND((CONVERT(FLOAT, VS.VENDA_ANO) / CONVERT(FLOAT, VA.VENDA_TOTAL_ANO)) * 100, 2) AS PERCENTUAL 
FROM (
    SELECT TP.SABOR, 
    YEAR(NF.DATA_VENDA) AS ANO, 
    SUM(INF.QUANTIDADE) AS VENDA_ANO 
    FROM TABELA_DE_PRODUTOS TP 
    INNER JOIN ITENS_NOTAS_FISCAIS INF 
    ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO 
    INNER JOIN NOTAS_FISCAIS NF 
    ON INF.NUMERO = NF.NUMERO 
    WHERE YEAR(NF.DATA_VENDA) = 2015 
    GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA) 
) VS 
INNER JOIN (
    SELECT YEAR(NF.DATA_VENDA) AS ANO, 
    SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO 
    FROM NOTAS_FISCAIS NF 
    INNER JOIN ITENS_NOTAS_FISCAIS INF 
    ON NF.NUMERO = INF.NUMERO 
    WHERE YEAR(NF.DATA_VENDA) = 2015 
    GROUP BY YEAR(NF.DATA_VENDA)
) VA 
ON VS.ANO = VA.ANO 
ORDER BY VS.VENDA_ANO DESC;
--  ranking das vendas por tamanho.
SELECT
VS.TAMANHO, VS.ANO, VS.VENDA_ANO,
ROUND((CONVERT( FLOAT, VS.VENDA_ANO) / CONVERT( FLOAT, VA.VENDA_TOTAL_ANO)) * 100, 2) AS PERCENTUAL
FROM 
(
SELECT
TP.TAMANHO
,YEAR(NF.DATA_VENDA) AS ANO
,SUM(INF.QUANTIDADE) AS VENDA_ANO
FROM TABELA_DE_PRODUTOS TP
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.TAMANHO, YEAR(NF.DATA_VENDA)
) VS
INNER JOIN
(
SELECT 
YEAR(NF.DATA_VENDA) AS ANO
, SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)
) VA
ON VS.ANO = VA.ANO
ORDER BY VS.VENDA_ANO DESC;