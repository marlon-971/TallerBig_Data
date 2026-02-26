 Ejercicio 3 ¿Cuál es el paracaídas más caro que tenemos? 

 SELECT nombre, precio FROM productos
WHERE categoria = 'Paracaídas'
AND precio = (
    SELECT MAX(precio)
    FROM productos
    WHERE categoria = 'Paracaídas') 