--
SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA 
FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga';
-- Classifica o produto como caro, barato e em conta.
SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA, 
(CASE WHEN PRECO_DE_LISTA >12 THEN 'PRODUTO CARO' 
      WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA' 
      ELSE 'PRODUTO BARATO' END) AS CLASSIFICACAO 
FROM TABELA_DE_PRODUTOS 
WHERE SABOR = 'Manga';
-- Classifica o produto como caro, barato e em conta na ordem
SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA, 
(CASE WHEN PRECO_DE_LISTA >12 THEN 'PRODUTO CARO' 
      WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA' 
      ELSE 'PRODUTO BARATO' END) AS CLASSIFICACAO 
FROM TABELA_DE_PRODUTOS 
WHERE SABOR = 'Manga'
ORDER BY CLASSIFICACAO;
-- Ordem somente de produto;
SELECT 
(CASE WHEN PRECO_DE_LISTA >12 THEN 'PRODUTO CARO' 
      WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA' 
      ELSE 'PRODUTO BARATO' END) AS CLASSIFICACAO 
FROM TABELA_DE_PRODUTOS;
-- Demonstra a quantidade de produto pela suas categorias.
SELECT 
(CASE WHEN PRECO_DE_LISTA >12 THEN 'PRODUTO CARO' 
      WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA' 
      ELSE 'PRODUTO BARATO' END) AS CLASSIFICACAO, COUNT(*) AS NUMERO_DE_PRODUTOS 
FROM TABELA_DE_PRODUTOS 
GROUP BY (CASE WHEN PRECO_DE_LISTA >12 THEN 'PRODUTO CARO' 
      WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA' 
      ELSE 'PRODUTO BARATO' END);

SELECT * FROM TABELA_DE_CLIENTES;
--Lista de classifica�ao por:
--Acima ou igual a 150.000 - Clientes grandes
--Entre 150.000 e 110.000 - Clientes m�dios
--Menores que 110.000 Clientes pequenos
SELECT NOME,
(CASE WHEN LIMITE_DE_CREDITO >= 150000 THEN 'Clientes grandes'
WHEN LIMITE_DE_CREDITO < 150000 AND LIMITE_DE_CREDITO >= 110000 THEN 'Clientes medios'
ELSE 'Clientes pequenos' END) AS CLASSIFICACAO
FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_VENDEDORES;
SELECT * FROM NOTAS_FISCAIS;
--Qta de nota de cada vendedor gerou;
SELECT MATRICULA, COUNT(*) AS NUMERO_NOTAS FROM NOTAS_FISCAIS GROUP BY MATRICULA;
--Qta de nota de cada vendedor com nome gerou;
SELECT NOTAS_FISCAIS.MATRICULA, TABELA_DE_VENDEDORES.NOME, COUNT(*) AS NUMERO_NOTAS 
FROM NOTAS_FISCAIS 
INNER JOIN TABELA_DE_VENDEDORES 
ON NOTAS_FISCAIS.MATRICULA = TABELA_DE_VENDEDORES.MATRICULA 
GROUP BY NOTAS_FISCAIS.MATRICULA, TABELA_DE_VENDEDORES.NOME;
--Qta de nota de cada vendedor com nome gerou;
SELECT NF.MATRICULA, TV.NOME, COUNT(*) AS NUMERO_NOTAS 
FROM NOTAS_FISCAIS NF 
INNER JOIN TABELA_DE_VENDEDORES TV 
ON NF.MATRICULA = TV.MATRICULA 
GROUP BY NF.MATRICULA, TV.NOME;

