-EXPLORACION BASICA 
SELECT * FROM categorias

- CONTEOS TOTALES 
SELECT COUNT (*) FROM ciudad 

- CONTEO POR CATEGORIA 
SELECT * FROM categoria
WHERE product_category_name like 'b%'

-VALOR MAXIMO
SELECT Max (review_score) AS maximo_valor FROM encuestas

-VALOR MINIMO
SELECT Min (product_weight_g) AS minimo_peso FROM producto

-VALOR PROMEDIO
SELECT AVG(product_weight_g) AS peso_promedio FROM producto