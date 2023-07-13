
-- Caso ja tenha a tabela excluir cria novamente.
DROP TABLE TABELA_TESTE;
CREATE TABLE TABELA_TESTE (ID VARCHAR(10));
-- Verifica se tem a tabela -> excluir caso tenha e criar a tabela
IF OBJECT_ID('TABELA_TESTE', 'U') IS NOT NULL DROP TABLE TABELA_TESTE;
CREATE TABLE TABELA_TESTE (ID VARCHAR(10));


--Verifica se tem tabela e cria
IF OBJECT_ID('TABELA_TESTE', 'U') IS NOT NULL DROP TABLE TABELA_TESTE;
---verifica se TB nao e NULL e cria
IF OBJECT_ID('TABELA_TESTE', 'U') IS NULL CREATE TABLE TABELA_TESTE (ID VARCHAR(10));

