-- Declaração de variáveis
-- DECLARE @MATRICULA VARCHAR(5), @NOME VARCHAR(100), @PERCENTUAL FLOAT, @DATA DATE, @FERIAS BIT, @BAIRRO VARCHAR(50);
DECLARE @MATRICULA VARCHAR(5);
DECLARE @NOME VARCHAR(100);
DECLARE @PERCENTUAL FLOAT;
DECLARE @DATA DATE;
DECLARE @FERIAS BIT;
DECLARE @BAIRRO VARCHAR(50);
-- atribuiçao de valores
SET @MATRICULA = '00240';
SET @NOME = 'Cláudia Rodrigues';
SET @PERCENTUAL = 0.10;
SET @DATA = '2012-03-12';
SET @FERIAS = 1;
SET @BAIRRO = 'Jardins';
--Código omitido
PRINT @MATRICULA;
PRINT @NOME;
PRINT @PERCENTUAL;
PRINT @DATA;
PRINT @FERIAS;
PRINT @BAIRRO;
--Código omitido
SET @MATRICULA = '00244';
SET @NOME = 'Roberto Araujo';
---------------------------------------------------------------
--Nome: Cliente - Tipo: Caracteres com 10 posições.
--Nome: Idade - Tipo: Inteiro.
--Nome: DataNascimento - Tipo: Data.
--Nome: Custo - Tipo: Número com casas decimais.
DECLARE @Cliente VARCHAR(10)
DECLARE @Idade INT
DECLARE @DataNascimento DATE
DECLARE @Custo FLOAT
-- Desafio atribuiçao de valores
Set @cliente = 'Joao';
Set @Idade = '10';
Set @DataNascimento = '10/01/2007';
Set @Custo = '10.23';
Print @cliente;
Print @Idade;
Print @DataNascimento;
Print @Custo;
-------------------------------------------

