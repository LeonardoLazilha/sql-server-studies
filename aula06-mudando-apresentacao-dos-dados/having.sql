SELECT * FROM TABELA_DE_CLIENTES;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO) > 900000;

SELECT EMBALAGEM, MIN(PRECO_DE_LISTA) AS [MENOR VALOR], MAX(PRECO_DE_LISTA) AS [MAIOR VALOR]
FROM TABELA_DE_PRODUTOS
WHERE PRECO_DE_LISTA >= 10
GROUP BY EMBALAGEM
HAVING MAX(PRECO_DE_LISTA) >= 20;

-- Desafio
SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS QUANTIDADE 
FROM ITENS_NOTAS_FISCAIS 
GROUP BY CODIGO_DO_PRODUTO 
HAVING SUM(QUANTIDADE) > 394000
ORDER BY SUM(QUANTIDADE) DESC;
