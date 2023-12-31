SELECT * FROM [TABELA DE PRODUTOS];
SELECT * FROM [TABELA DE CLIENTES];
SELECT * FROM [TABELA DE VENDEDORES];

ALTER TABLE [TABELA DE PRODUTOS] ADD CONSTRAINT PK_TABELA_DE_PRODUTOS
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO]);

ALTER TABLE [TABELA DE VENDEDORES] ADD CONSTRAINT PK_TABELA_DE_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA]);

ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_DE_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])


---Resolvendo o problema de nulos e criando a PK;
ALTER TABLE [TABELA DE PRODUTOS] ALTER COLUMN [CODIGO DO PRODUTO] VARCHAR(20) NOT NULL;
ALTER TABLE [TABELA DE VENDEDORES] ALTER COLUMN [MATRICULA] varchar(5) NOT NULL;
ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] CHAR(11) NOT NULL; 



