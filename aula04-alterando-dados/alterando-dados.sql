-- Filtros com WHERE
SELECT [NOME] AS [NOME DO CLIENTE], [ESTADO] AS [UF], [PRIMEIRA COMPRA]
FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = 1



-- Filtro em vários tipos
SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] = 7.00

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] > 5.00

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] < 3.00

    -- ASC string
    SELECT * FROM [TABELA DE PRODUTOS]
    WHERE [EMBALAGEM] > 'Lata';

    -- Data
    SELECT [NOME], [DATA DE NASCIMENTO] 
    FROM [TABELA DE CLIENTES]
    WHERE YEAR ([DATA DE NASCIMENTO]) > '1980';


-- Filtros Compostos
SELECT [NOME], [BAIRRO] FROM [TABELA DE CLIENTES]
WHERE [BAIRRO] = 'Copacabana' OR [BAIRRO] = 'Tijuca';

SELECT [NOME], [BAIRRO], [ESTADO], [PRIMEIRA COMPRA] FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = 0 AND [ESTADO] = 'RJ';

-- Alterar todos os produtos que sao LATA e add promoção de 10% off
SELECT [NOME DO PRODUTO] AS [NOME], [EMBALAGEM], [PRECO DE LISTA] AS [PRECO]
FROM [TABELA DE PRODUTOS]
WHERE [EMBALAGEM] = 'Lata';

UPDATE [TABELA DE PRODUTOS]
SET [PRECO DE LISTA] = [PRECO DE LISTA] * 0.9
WHERE [EMBALAGEM] = 'Lata';


-- Alterando 2 colunas com 1 condição
UPDATE [TABELA DE PRODUTOS]
SET [EMBALAGEM] = 'Garrafa', [PRECO DE LISTA] = 7.00
WHERE [CODIGO DO PRODUTO] = '1088126';

-- Deletando
DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '5449310'


