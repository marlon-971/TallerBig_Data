--Ejercicio 13 ¿Cuántos productos tenemos en la categoría "Paracaídas"?

SELECT COUNT(*) AS total_paracaidas FROM productos
WHERE categoria = 'Paracaídas'