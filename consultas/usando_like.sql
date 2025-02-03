/*
   like

    % é um coringa que substitui qualquer sequencia de caracteres

    •	LIKE 'M%': encontra valores que começam com “M”.
	•	LIKE '%ml': encontra valores que terminam com “ml”.
	•	LIKE '%ana%': encontra valores que tem “ana” em qualquer lugar.
*/

SELECT * FROM TABELA_DE_PRODUTOS
WHERE SABOR IN ('Lima/Limao', 'Morango/Limao');

SELECT * FROM TABELA_DE_PRODUTOS
WHERE SABOR LIKE '%Limao';

SELECT * FROM TABELA_DE_PRODUTOS
WHERE SABOR LIKE '%Maca%';

SELECT * FROM TABELA_DE_PRODUTOS
WHERE (SABOR LIKE '%Morango%') AND (EMBALAGEM = 'PET');

