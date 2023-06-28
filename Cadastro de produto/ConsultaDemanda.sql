--Bairro aonde tenho vendedores.
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;
-- clientes da mesma regiao dos meus vendedores;
SELECT * FROM TABELA_DE_CLIENTES 
WHERE BAIRRO IN ('Cobacabana', 'Jardins', 'Santo Amaro', 'Tijuca');
-- -Bairro aonde tenho vendedores e clientes da mesma regiao dos meus vendedores;;
SELECT * FROM TABELA_DE_CLIENTES 
WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);
--selecao preco medio
SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM;
---Selecao preco medio menor que 10
SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM 
HAVING AVG(PRECO_DE_LISTA) <= 10;
------Selecao preco medio menor que 10
SELECT MEDIA_EMBALAGENS.EMBALAGEM, MEDIA_EMBALAGENS.PRECO_MEDIO FROM (
    SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
    FROM TABELA_DE_PRODUTOS 
    GROUP BY EMBALAGEM
) MEDIA_EMBALAGENS 
WHERE MEDIA_EMBALAGENS.PRECO_MEDIO <= 10;
--
SELECT MEDIA_EMBALAGENS.EMBALAGEM, MEDIA_EMBALAGENS.PRECO_MEDIO FROM (
    SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
    FROM TABELA_DE_PRODUTOS 
    GROUP BY EMBALAGEM
) MEDIA_EMBALAGENS 
WHERE MEDIA_EMBALAGENS.PRECO_MEDIO <= 10;
--
SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
FROM TABELA_DE_PRODUTOS 
GROUP BY EMBALAGEM;

CREATE VIEW MEDIA_EMBALAGENS AS 
SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
FROM TABELA_DE_PRODUTOS 
GROUP BY EMBALAGEM;

SELECT EMBALAGEM, PRECO_MEDIO FROM MEDIA_EMBALAGENS 
WHERE PRECO_MEDIO <= 10;