--- Valor de faturamento pra nota Nº 4.000
SELECT [dbo].[FaturamentoNota](4000)
---
SELECT * FROM [NOTAS FISCAIS] WHERE CPF = '7771579779'

CREATE FUNCTION ListaNotasCliente (@CPF AS VARCHAR(11))
RETURNS TABLE
AS
BEGIN
    RETURN SELECT * FROM [NOTAS FISCAIS] WHERE CPF = @CPF
END
---- Funçao para buscar pelo CPF
CREATE FUNCTION ListaNotasCliente (@CPF AS VARCHAR(11))
RETURNS TABLE
AS
RETURN SELECT * FROM [NOTAS FISCAIS] WHERE CPF = @CPF

--- seleciona as tabelas pra esse CPF;
SELECT * FROM [dbo].[ListaNotasCliente]('1471156710')

--- seleciona o valor total pra esse CPF;
SELECT COUNT(*) FROM [dbo].[ListaNotasCliente]('1471156710')
