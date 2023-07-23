---- Busca alguns dados do cliente da TB Cliente
SELECT CPF, NOME, [DATA DE NASCIMENTO], IDADE FROM [TABELA DE CLIENTES]
---- Calcula a idade da pessoa comparando o ano de Nasc com a data atual;
SELECT DATEDIFF (YEAR, '2000-01-01', GETDATE())
---- Calcula a idade da pessoa comparando o ano de Nasc com a data atual;
SELECT CPF, NOME, [DATA DE NASCIMENTO], IDADE, DATEDIFF(YEAR, [DATA DE NASCIMENTO],
GETDATE()) FROM [TABELA DE CLIENTES]
----
CREATE PROCEDURE CalculaIdade
AS
BEGIN
 UPDATE [TABELA DE CLIENTES] SET IDADE = DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE())
END
----
INSERT INTO [TABELA DE CLIENTES]
(CPF, NOME, [ENDERECO 1], BAIRRO, CIDADE, ESTADO, CEP, [DATA DE NASCIMENTO], IDADE, SEXO, [LIMITE DE CREDITO], [VOLUME DE COMPRA], [PRIMEIRA COMPRA])
VALUES
('123123123', 'JOAO MACHADO', 'RUA PROJETADA A', 'MADUREIRA', 'Rio de Janeiro', 'RJ', '20000', '2000-01-01', 10, 'M', 12000, 12000, 1)
----
SELECT * FROM [TABELA DE CLIENTES] WHERE CPF = '123123123'
---executa procedura
EXEC [dbo].[CalculaIdade]
---
CREATE PROCEDURE BuscaNotasCliente
DECLARE @CPF AS VARCHAR(12) = '19290992743'
DECLARE @DATA_INICIAL AS DATETIME = '20160101'
DECLARE @DATA_FINAL AS DATETIME = '20161231'
AS
BEGIN
   SELECT * FROM [NOTAS FISCAIS] WHERE CPF = @CPF
   AND DATA >= @DATA_INICIAL AND DATA <= @DATA_FINAL
END;