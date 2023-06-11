SELECT * FROM [TABELA DE PRODUTOS];
SELECT * FROM [TABELA DE CLIENTES];
SELECT * FROM [TABELA DE VENDEDORES];
SELECT * FROM [TABELA DE FUNCIONARIOS];

SELECT [CPF], [NOME] FROM [TABELA DE CLIENTES]; 

SELECT * FROM [TABELA DE CLIENTES];

---
SELECT [NOME] AS [NOME DO CLIENTE], [CPF]
FROM [TABELA DE CLIENTES] 

---
SELECT [NOME] AS [NOME DO CLIENTE], [CPF] AS [IDENTIFICADOR]
FROM [TABELA DE CLIENTES]; 

SELECT [NOME] AS [NOME DO VENDEDOR], [MATRICULA] AS [IDENTIFICADOR] FROM [TABELA DE VENDEDORES];

---Seleçao por produto
SELECT * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Uva'

---Seleçao por Cidade
SELECT [MATRICULA] AS IDENTIFICADOR,[NOME] AS [NOME DO VENDEDOR]
FROM [TABELA DE VENDEDORES] WHERE [CIDADE] = 'São Paulo';

SELECT FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] = 'Lata';

SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] = 'Lata';

-- 4,555
-- 4,211
-- 3,8595
-- 2,808

-- acrescimento 10% no produto com o codigo 1040107;
UPDATE [TABELA DE PRODUTOS] SET [PRECO DE LISTA] = 4,555 * 1.1 WHERE [CODIGO DO PRODUTO] = '1040107'; 

--acrescimo de 10% em todas embalagens de lata

UPDATE [TABELA DE PRODUTOS] SET [PRECO DE LISTA] = [PRECO DE LISTA] * 1.1 WHERE [EMBALAGEM] = 'Lata' 

--vendedores que possuem dependentes aumente em 1 ponto percentual suas comissões.
UPDATE [TABELA DE FUNCIONARIOS] SET [PERCENTUAL COMISSÃO] = [PERCENTUAL COMISSÃO] + 0.01 
WHERE [TEM DEPENDENTE] = 1;

-- Selecionar produto com o valor igual a 7.50;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] = 7.50;
-- Selecionar produto com o valor maior a 7.50
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] > 7.50;
-- Selecionar produto com o valor diferente a 7.50
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] <> 7.50;
--todos os produtos que custam mais que 7.50, incluindo os que custam 7.50.
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] >= 7.50;
-- seleciona todos os produtos maiores em ordem alfabetica ASC;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] >= 'Lata' ;
--Mostre os vendedores que possuem comissão abaixo de 8%.
SELECT * FROM [TABELA DE VENDEDORES] WHERE [COMISSAO] < '0.08' ;
-- Pesquisa por data de nascimento;
SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] = '1965-03-21';
-- Pesquisa por ano de nascimento;
SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR ([DATA DE NASCIMENTO]) = 1965;
-- Pesquisa com ano de nascimento separado;
SELECT [NOME], [ESTADO], [DATA DE NASCIMENTO], YEAR ([DATA DE NASCIMENTO]) AS ANO FROM [TABELA DE CLIENTES];
-- Pesquisa com ano/dia/mes de nascimento separado;
SELECT [NOME], [ESTADO], [DATA DE NASCIMENTO]
, YEAR ([DATA DE NASCIMENTO]) AS ANO
, MONTH ([DATA DE NASCIMENTO]) AS MES
, DAY ([DATA DE NASCIMENTO]) AS DIA
FROM [TABELA DE CLIENTES];
-- Pesquisa separando o o cliente por mes de nascimento;
SELECT [NOME], [ESTADO], [DATA DE NASCIMENTO]
, YEAR ([DATA DE NASCIMENTO]) AS ANO
, MONTH ([DATA DE NASCIMENTO]) AS MES
, DAY ([DATA DE NASCIMENTO]) AS DIA
FROM [TABELA DE CLIENTES]
WHERE MONTH ([DATA DE NASCIMENTO]) = 3;
--Liste os vendedores que foram admitidos em 2020 e antes destes ano.
SELECT [NOME],[DATA INICIO]
, YEAR ([DATA INICIO]) AS ANO
, MONTH ([DATA INICIO]) AS MES
, DAY ([DATA INICIO]) AS DIA
FROM [TABELA DE FUNCIONARIOS] 
WHERE YEAR ([DATA INICIO]) <= 2020;
--Dados de todos os vendedores que foram admitidos em 2020 e antes destes ano.
SELECT * FROM [TABELA DE FUNCIONARIOS] WHERE YEAR([DATA INICIO]) <= 2020;
------------Filtros Compostos
-- selecinar quem nasceu no dia 1;
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY ([DATA DE NASCIMENTO]) = 01;
--Selecionar por dia de nascimento e bairro;
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY ([DATA DE NASCIMENTO]) = 21 AND [BAIRRO] = 'Copacabana';
-- Selecionar por bairro;
SELECT * FROM [TABELA DE CLIENTES] WHERE [BAIRRO] = 'Jardim S Joao' OR [BAIRRO] = 'Jardim Das Rosas';
--Liste os FUNCIONARIO que possuem dependentes e que estejam atuando na cidade do Rio de Janeiro.
SELECT * FROM [TABELA DE FUNCIONARIOS] WHERE [CIDADE] = 'Rio de Janeiro' AND [TEM DEPENDENTE] = 1;

