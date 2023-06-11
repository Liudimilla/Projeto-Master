INSERT INTO [TABELA DE PRODUTOS]
(
[CODIGO DO PRODUTO], [NOME DO PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO DE LISTA]
)
VALUES
(
'1000900','Sabor Floral- 500 ml - Pera','Garrafa','500 ml','Pera',12.91
);
INSERT INTO [TABELA DE CLIENTES]
(
[CPF],
[NOME],
[ENDERECO1],
[ENDERECO2],
[BAIRRO],
[CIDADE],
[ESTADO],
[CEP],
[DATA DE NASCIMENTO],
[IDADE],
[GENERO],
[LIMITE DE CREDITO],
[VOLUME DE COMPRA],
[PRIMEIRA COMPRA]

)
VALUES
(
'12890678099','Maria','Rua Joao 10','Rua Das Flores 12','Jardim Das Rosas','Sao Paulo','SP','03236000','18-12-1982','39','F',300.00,'3','1'
);

INSERT INTO [TABELA DE PRODUTOS]
VALUES
(
'1040107','Light - 350 ml - Melância','Garrafa','350 ml','Melância',4.56
),(
'1037797','Clean - 2 Litros - Laranja','PET','2 lITROS','Laranja',16.01
),(
'1000889','Linha Citros - 1 Litro - Limão','Garrafa','1 Litro','Limão',7.50
),(
'1088126','Frescor do Verão - 350 ml - Limão','Garrafa','500 ml','Limao',3.00
);

INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [COMISSAO])
VALUES
('00235','Márcio Almeida Silva',0.08);

   INSERT INTO [TABELA DE PRODUTOS]
   ([CODIGO DO PRODUTO],[NOME DO PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO DE LISTA])
   VALUES
   ('10401071','Light - 350 ml - Tuti-Fruti','Lata','350 ml','Tuti-Fruti',4.56);

SELECT * FROM [TABELA DE PRODUTOS];
SELECT * FROM [TABELA DE CLIENTES];
SELECT * FROM [TABELA DE VENDEDORES];
SELECT * FROM [TABELA DE FUNCIONARIOS];

--Manutenção dos dados nas tabelas;

INSERT INTO [TABELA DE VENDEDORES]
VALUES
('00381','Liudimila Massagardi',0.10);

INSERT INTO [TABELA DE CLIENTES]
VALUES
(
'45690678099','Marcia','Rua Da Burque 12','Rua Das Pedolas 19','Jardim S Joao','Curitiba','SC','09236001','19-12-1996','41','M',900.00,'2','9'
),
(
'89190678099','Pedro','Rua Judas 10','Rua Das Flores 12','Jardim S Pedro','Rio Janeiro','RJ','09016000','01-12-1989','81','M',9.000,'2','0'
);

INSERT INTO [TABELA DE VENDEDORES]
VALUES
('00236','Claudia Moraes',0.08),('00237','Marcela Ferreira',0.09);

INSERT INTO [TABELA DE CLIENTES] 
VALUES 
    ('00384393431', 'João da Silva', 'Rua Projetada A1', 'Numero 233', 'Copacabana', 'Rio de janeiro', 'RJ', '20000000', '1965-03-21', 57, 'M', 20000, 30000.30, 1);

INSERT INTO [TABELA DE FUNCIONARIOS]
([NOME], 
[MATRICULA],
[CIDADE],
[PERCENTUAL COMISSÃO],
[DATA INICIO],
[TEM DEPENDENTE])
VALUES
('Alberto de Sá Verneck','00239','São Paulo', 0.08,'2020-06-05',1);
---Alteraçao do campo logico

INSERT INTO [TABELA DE CLIENTES] 
VALUES 
    ('00384393555', 'Maria Clara', 'Rua Projetada A1', 'Numero 233', 'Copacabana', 'Rio de janeiro', 'RJ', '20000000', '1975-03-21', 47, 'F', 20000, 30000.30, 'TRUE');
INSERT INTO [TABELA DE CLIENTES] 
VALUES 
    ('00384393666', 'Márcia Pereira', 'Rua Projetada A1', 'Numero 233', 'Copacabana', 'Rio de janeiro', 'RJ', '20000000', '1975-03-21', 47, 'F', 20000, 30000.30, 'FALSE');

INSERT INTO [TABELA DE FUNCIONARIOS]
([NOME], 
[MATRICULA],
[CIDADE],
[PERCENTUAL COMISSÃO],
[DATA INICIO],
[TEM DEPENDENTE])
VALUES
('Marcela Almeida','00240','Rio de Janeiro', 0.07,'2021-01-12','FALSE');

   INSERT INTO [TABELA DE PRODUTOS]
   VALUES
   ('1078680','Frescor do Verão - 470 ml - Manga'
   ,'Garrafa','470 ml'
   ,'Manga',7);

INSERT INTO [TABELA DE FUNCIONARIOS]
([NOME], 
[MATRICULA],
[CIDADE],
[PERCENTUAL COMISSÃO],
[DATA INICIO],
[TEM DEPENDENTE])
VALUES
('João da Silva','00241','São Paulo',0.06,'2022-12-01','TRUE'),
('Carolina Soares','00242','Rio de Janeiro',0.07,'2020-03-13','TRUE'),
('Juliana Marques','00243','São Paulo',0.09,'2018-11-14','FALSE'),
('Pedro Gomes','00244','São Paulo',0.08,'2019-01-20','FALSE'),
('Christina Rodrigues','00245','Rio de Janeiro',0.07,'2021-02-13','TRUE');
