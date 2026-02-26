--Ejercicio 15 ¿Cuál es el accesorio más barato disponible?


SELECT nombre, precio FROM productos
WHERE categoria = 'Accesorios'
ORDER BY precio ASC
LIMIT 1