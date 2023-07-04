--
INSERT INTO PRODUTOS (
    CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA
) VALUES (
    '1040107', 'Light - 350 ml - Melancia', 'Melancia', '350 ml', 'Lata', 4.56
);
--
INSERT INTO PRODUTOS (
    CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA
) VALUES (
    '1040108', 'Light - 350 ml - Graviola' , 'Graviola', '350 ml', 'Lata', 4.00
);
INSERT INTO PRODUTOS (
    CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA
) VALUES (
    '1040109', 'Light - 350 ml - Açai' , 'Açai', '350 ml', 'Lata', 5.60
);
INSERT INTO PRODUTOS 
VALUES 
('1040115', 'Light - 350 ml ' , 'Manga', '350 ml', 'Lata', 3.20),
('1040116', 'Light - 350 ml ' , 'Maça', '350 ml', 'Lata', 4.20),
('1040117', 'Light - 350 ml ' , 'Laranja', '350 ml', 'Lata', 3.19),
('1040118', 'Light - 350 ml ', 'Pessego', '350 ml', 'Lata', 4.25);

INSERT INTO [dbo].[CLIENTES] ([CPF], [NOME], [ENREDECO], 
    [BAIRRO], [CIDADE], [ESTADO], [CEP], [DATA_NASCIMENTO], 
    [IDADE], [GENERO], [LIMITE_CREDITO] ,[VOLUME_COMPRA], 
    [PRIMAIRA_COMPRA])
VALUES ('1471156710', 'Érica Carvalho', 'R. Iriquitia', 'Jardins', 'São Paulo', 
        'SP', '80012212', '19900901', 27, 'F', 170000, 24500,0), 
    ('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', 'Água Santa', 
        'Rio de Janeiro', 'RJ', '22000000', '20000212', 18, 'M', 100000, 20000, 1), 
    ('2600586709', 'César Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 
        'Rio de Janeiro', 'RJ', '22020001', '20000312', 18, 'M', 120000, 22000, 0);

----
		USE [VENDAS SUCOS]
GO

INSERT INTO [dbo].[PRODUTOS]
           ([CODIGO]
           ,[DESCRITOR]
           ,[SABOR]
           ,[TAMANHO]
           ,[EMBALAGEM]
           ,[PRECO_LISTA])
     VALUES
           ('1040119'
            ,'Light - 350 ml - Limão'
            ,'Limão'
            ,'350 ml'
            ,'Lata'
            ,3.25)
GO
-------