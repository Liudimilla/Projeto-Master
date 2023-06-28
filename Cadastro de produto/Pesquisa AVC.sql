SELECT CEILING(3.433);
SELECT FLOOR(3.433);
SELECT POWER(12, 2);
SELECT EXP(3);
SELECT SQRT(300);
SELECT ABS(10), ABS(-10);]]

SELECT 'O cliente ' + TC.NOME + ' comprou R$ ' + 
TRIM(STR(SUM(INF.QUANTIDADE * INF.PRECO) ,10,2)) + ' no ano de ' + DATENAME(YEAR, NF.DATA_VENDA)
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON NF.NUMERO = INF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC ON NF.CPF = TC.CPF
WHERE YEAR(NF.DATA_VENDA) = '2016'
GROUP BY TC.NOME, NF.DATA_VENDA;