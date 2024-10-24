-- Todos os dados
SELECT * FROM [TABELA DE CLIENTES];
SELECT * FROM [TABELA DE PRODUTOS];
SELECT * FROM [TABELA DE VENDEDORES];

-- Selecionar colunas específicas
SELECT [NOME], [ESTADO] FROM [TABELA DE CLIENTES];
SELECT [NOME DO PRODUTO], [PRECO DE LISTA] FROM [TABELA DE PRODUTOS];
SELECT * FROM [TABELA DE VENDEDORES];
SELECT [NOME] FROM [TABELA DE VENDEDORES];


-- Ordenar nomes ordem alfabética
SELECT [NOME] FROM [TABELA DE VENDEDORES]
ORDER BY [NOME] ASC;

-- Apelidando colunas 
SELECT [NOME] AS [NOME DO CLIENTE], [CPF] AS [CPF DO CLIENTE], [ESTADO]
FROM [TABELA DE CLIENTES];

SELECT [MATRICULA] AS [IDENTIFICADOR], [NOME] AS [NOME DO VENDEDORE]
FROM [TABELA DE VENDEDORES];

-- Seleção distinta - sabores de suco diferente, sem repetir

SELECT DISTINCT [SABOR] FROM [TABELA DE PRODUTOS];


