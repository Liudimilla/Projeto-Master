---- Faturamento da nota fiscal n�mero 100;
SELECT SUM(QUANTIDADE * [PRE�O])
FROM [dbo].[ITENS NOTAS FISCAIS]
WHERE NUMERO = 100

---- Retornar� o faturamento de uma nota e o par�metro
CREATE FUNCTION FaturamentoNota (@NUMERO AS INT)
RETURNS FLOAT
AS
BEGIN
   DECLARE @FATURAMENTO FLOAT
   SELECT @FATURAMENTO = SUM(QUANTIDADE * [PRE�O])
   FROM [dbo].[ITENS NOTAS FISCAIS]
   WHERE NUMERO = @NUMERO
   RETURN @FATURAMENTO 
END;
----- O valor da fatura de cada nota.
SELECT NUMERO, dbo.FaturamentoNota(NUMERO) AS FATURAMENTO
FROM [dbo].[NOTAS FISCAIS] 
-----
