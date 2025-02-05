/* 
    having

    filtrar resultados de funções agregadas (SUM(), COUNT(), AVG(), etc.), algo que o WHERE não consegue fazer

    diferença entre WHERE e HAVING
	WHERE filtra antes da agregação (em registros individuais)
	HAVING filtra depois da agregação (em grupos de registros)
*/

SELECT * FROM TABELA_DE_CLIENTES;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO) >= 900000;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM
HAVING MAX(PRECO_DE_LISTA) >= 20;  

/*
DESAFIO
1 - Vamos voltar aos itens das notas fiscais. Os dois exercícios anteriores olharam as vendas do produto '1101035' . 
    Mas nossa empresa vendeu mais produtos. Verifique as quantidades totais de vendas de cada produto e ordene do maior para o menor.

2- Vimos os produtos mais vendidos no exercício anterior. Agora, liste somente os produtos que venderam mais que 394000 unidades.

*/

SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS QUANTIDADE FROM ITENS_NOTAS_FISCAIS
GROUP BY CODIGO_DO_PRODUTO
ORDER BY SUM(QUANTIDADE) DESC;

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS QUANTIDADE FROM ITENS_NOTAS_FISCAIS
GROUP BY CODIGO_DO_PRODUTO 
HAVING SUM(QUANTIDADE) > 394000
ORDER BY SUM(QUANTIDADE) DESC;

