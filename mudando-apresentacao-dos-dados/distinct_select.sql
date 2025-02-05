/* 
    distinct

    remove duplicatas em uma consulta, retorna apenas valores unicos
    
*/

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Maca';

SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS



/* 
    Desafio:
    Tendo em conta nossa tabela de produtos, execute uma consulta para obter o número de sabores existentes. 
    Especifique o SQL que você executou para obter o resultado e a resposta propriamente dita.  
*/

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS;





