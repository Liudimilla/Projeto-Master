--- TB Endereco completo2;
CREATE FUNCTION Enderecocompleto2
(@ENDERECO VARCHAR(100),
@BAIRRO VARCHAR(50),
@CIDADE VARCHAR(50),
@ESTADO VARCHAR(2),
@CEP VARCHAR(20))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @ENDERECO_COMPLETO VARCHAR(250)
    SET @ENDERECO_COMPLETO = @ENDERECO + ' ' + 
    @BAIRRO + ' ' + @CIDADE + ' ' + @ESTADO + ', CEP ' + @CEP
    RETURN @ENDERECO_COMPLETO
END
----TB Endereco completo3;
CREATE FUNCTION Enderecocompleto3
(@ENDERECO VARCHAR(100),
@BAIRRO VARCHAR(50),
@CIDADE VARCHAR(50),
@ESTADO VARCHAR(2),
@CEP VARCHAR(20))
RETURNS VARCHAR(250)
AS
BEGIN
    DECLARE @ENDERECO_COMPLETO VARCHAR(250)
    SET @ENDERECO_COMPLETO = @ENDERECO + ' ' + 
    @BAIRRO + ' ' + @CIDADE + ' ' + @ESTADO + ', CEP ' + @CEP
    RETURN @ENDERECO_COMPLETO
END
---- Verifica se existe e depois excluir ou ignora
IF OBJECT_ID('Enderecocompleto3', 'FN') IS NOT NULL
DROP FUNCTION [dbo].[Enderecocompleto3]
---- Excluir a TB
DROP FUNCTION [dbo].[Enderecocompleto3]

SELECT * FROM [dbo].[Enderecocompleto2]