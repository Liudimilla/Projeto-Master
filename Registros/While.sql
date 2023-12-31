-- Loop
DECLARE @LIMITE_MINIMO INT;
DECLARE @LIMITE_MAXIMO INT;

SET @LIMITE_MINIMO = 3;
SET @LIMITE_MAXIMO = 15;

PRINT 'ENTREI NO LOOPING';
WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
    PRINT @LIMITE_MINIMO;
    SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1;
END;
PRINT 'SAI DO LOOPING';

----- A partir do dia 01/01/2017, conte o n�mero de notas fiscais at� o dia 10/01/2017 e, al�m disso, 
---imprima a data e o n�mero de notas fiscais?
DECLARE @DATAINICIAL DATE
DECLARE @DATAFINAL DATE
DECLARE @NUMNOTAS INT
SET @DATAINICIAL = '20170101'
SET @DATAFINAL = '20170110'
WHILE @DATAINICIAL <= @DATAFINAL
BEGIN
    SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
        WHERE DATA = @DATAINICIAL
    PRINT CONVERT(VARCHAR(10), @DATAINICIAL) + ' --> ' 
        + CONVERT(VARCHAR(10), @NUMNOTAS)
    SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
END