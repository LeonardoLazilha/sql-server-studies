-- DISTINCT: remove duplicidades

SELECT DISTINCT CIDADE, ESTADO FROM TABELA_DE_CLIENTES
WHERE ESTADO = 'sp'

--

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;


SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Maca';

SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS;

-- consulta para obter o número de sabores existente

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS;