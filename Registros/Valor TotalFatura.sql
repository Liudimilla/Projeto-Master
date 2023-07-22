---- Faturamento da nota fiscal número 100;
SELECT SUM(QUANTIDADE * [PREÇO])
FROM [dbo].[ITENS NOTAS FISCAIS]
WHERE NUMERO = 100

---- Retornará o faturamento de uma nota e o parâmetro
CREATE FUNCTION FaturamentoNota (@NUMERO AS INT)
RETURNS FLOAT
AS
BEGIN
   DECLARE @FATURAMENTO FLOAT
   SELECT @FATURAMENTO = SUM(QUANTIDADE * [PREÇO])
   FROM [dbo].[ITENS NOTAS FISCAIS]
   WHERE NUMERO = @NUMERO
   RETURN @FATURAMENTO 
END;
----- O valor da fatura de cada nota.
SELECT NUMERO, dbo.FaturamentoNota(NUMERO) AS FATURAMENTO
FROM [dbo].[NOTAS FISCAIS] 
-----
