/* 
    group by

    agrupa por uma coluna e aplica uma função agregada (SUM, COUNT, AVG, etc.) 
*/

SELECT * FROM TABELA_DE_CLIENTES;

SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES
ORDER BY CIDADE, IDADE;
 
SELECT CIDADE, AVG(IDADE) AS [MEDIA IDADES], SUM(LIMITE_DE_CREDITO) [SOMA CREDITO] FROM TABELA_DE_CLIENTES
GROUP BY CIDADE;

SELECT CIDADE, COUNT(*) AS [PESSOAS POR CIDADE] FROM TABELA_DE_CLIENTES
GROUP BY CIDADE;

SELECT EMBALAGEM, COUNT(*) FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Laranja'
GROUP BY EMBALAGEM;


/*
DESAFIO:
Cada item da nota fiscal representa 1 venda de um determinado produto. Vimos no exercício anterior que temos várias vendas com quantidade igual a 99 litros para o produto '1101035'.
Pergunto: Quantas vendas foram feitas com quantidade igual a 99 litros para o produto '1101035'? 
*/

SELECT TOP 1 * FROM ITENS_NOTAS_FISCAIS

SELECT COUNT(*) FROM ITENS_NOTAS_FISCAIS
WHERE CODIGO_DO_PRODUTO = '1101035' AND QUANTIDADE = 99;