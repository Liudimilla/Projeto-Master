
SELECT * FROM TABELA_DE_CLIENTES;
SELECT * FROM TABELA_DE_VENDEDORES;
SELECT * FROM TABELA_DE_PRODUTOS;
SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT EMBALAGEM FROM TABELA_DE_PRODUTOS;
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Maca';
SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS;
--consulta para obter o n�mero de sabores existentes
SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS;
SELECT DISTINCT CIDADE, LIMITE_DE_CREDITO FROM TABELA_DE_CLIENTES;

SELECT TOP 4 * FROM CLIENTE;
SELECT TOP 5 * FROM TABELA_DE_PRODUTOS;
SELECT TOP 5 * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Maca';

--para listar as 10 primeiras matriculas
SELECT TOP 10 * FROM NOTAS_FISCAIS WHERE MATRICULA = '00235';

--para listar ordem
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA ASC;
--para listar ordem >
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;
--para listar ordem embalagem de ordem
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM, NOME_DO_PRODUTO;
--para listar ordem 5 primeiros
SELECT TOP 5 * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO DESC;
--maior venda do produto "Linha Refrescante - 1 Litro - Morango/Limao" em quantidade
SELECT * FROM TABELA_DE_PRODUTOS 
WHERE nome_do_produto = 'Linha Refrescante - 1 Litro - Morango/Limao';
------------maior quantidade vendida deste produto
SELECT * FROM ITENS_NOTAS_FISCAIS WHERE codigo_do_produto = '1101035' ORDER BY QUANTIDADE DESC;
--Cidade e idades;
SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES;
---Coloca a idade em ordem de acordo a cidade;
SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES ORDER BY CIDADE, IDADE;
---A idade media dos cidadoes 
SELECT CIDADE, AVG(IDADE) AS IDADE FROM TABELA_DE_CLIENTES group BY CIDADE;

SELECT CIDADE, SUM(IDADE) AS IDADE, SUM(LIMITE_DE_CREDITO) FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

SELECT CIDADE, AVG(IDADE) AS IDADE, SUM(LIMITE_DE_CREDITO) FROM TABELA_DE_CLIENTES GROUP BY CIDADE
-- Quantos clientes
SELECT CIDADE, COUNT(*) AS NUMERO_DE_CLIENTES FROM TABELA_DE_CLIENTES GROUP BY CIDADE;
--
SELECT EMBALAGEM, COUNT(*) AS NUMERO_DE_CLIENTES FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja' GROUP BY EMBALAGEM;

--Quantidade de vendas foram feitas com quantidade igual a 99 litros para o produto '1101035'
SELECT COUNT(*) FROM ITENS_NOTAS_FISCAIS WHERE CODIGO_DO_PRODUTO = '1101035' AND QUANTIDADE = 99;
SELECT QUANTIDADE, COUNT(*) AS QTD_VENDAS FROM ITENS_NOTAS_FISCAIS WHERE QUANTIDADE = '11' GROUP BY QUANTIDADE;

--
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO FROM TABELA_DE_CLIENTES GROUP BY ESTADO;
-- Estado do rio de possui credito maio que 90 mil
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO 
FROM TABELA_DE_CLIENTES GROUP BY ESTADO 
HAVING SUM(LIMITE_DE_CREDITO) >= 900000;
--Pre�o maior e menor de cada embalagem
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN 
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM;
--Pre�o maiores que 10;
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN 
FROM TABELA_DE_PRODUTOS WHERE PRECO_DE_LISTA >= 10 GROUP BY EMBALAGEM;
--Pre�o maiores que 20;
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN 
FROM TABELA_DE_PRODUTOS WHERE PRECO_DE_LISTA >= 10 
GROUP BY EMBALAGEM HAVING MAX(PRECO_DE_LISTA) >=20;
--quantidades totais de vendas de cada produto e ordene do maior para o menor
SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS QUANTIDADE FROM ITENS_NOTAS_FISCAIS 
GROUP BY CODIGO_DO_PRODUTO ORDER BY SUM(QUANTIDADE) DESC;
--lista somente os produtos que venderam mais que 200 unidades.
SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS QUANTIDADE FROM ITENS_NOTAS_FISCAIS 
GROUP BY CODIGO_DO_PRODUTO HAVING SUM(QUANTIDADE) > 200
ORDER BY SUM(QUANTIDADE) DESC;