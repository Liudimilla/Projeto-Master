
SELEC * FROM [TABELA DE CLIENTES];

SELECT BAIRRO, SUM([LIMITE DE CR�DITO]) FROM [TABELA CLIENTES] GROUP BY BAIRRO
--
WHERE BAIRRO = '�gua Santa'
SELECT SUM([LIMITE DE CR�DITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = '�gua Santa'
---// C�digo omitido

SET @LIMITE_M�XIMO = 50000;
SET @BAIRRO = [�gua Santa];
-----// C�digo omitido

SELECT @LIMITE_ATUAL = SUM([LIMITE DE CR�DITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO;

DECLARE @LIMITE_MAXIMO FLOAT;
DECLARE @LIMITE_ATUAL FLOAT;
DECLARE @BAIRRO VARCHAR(20);
---
SET @LIMITE_M�XIMO = 50000;
SET @BAIRRO = [�gua Santa];
SELECT @LIMITE_ATUAL = SUM([LIMITE DE CR�DITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO;
IF @LIMITE_MAXIMO <= @LIMITE ATUAL
    PRINT 'VALOR ESTOUROU';
ELSE
    PRINT 'VALOR N�O ESTOUROU';