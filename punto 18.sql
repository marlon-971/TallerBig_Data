--Ejercicio 18 Enlista todos los clientes mayores de 60 años que han hecho compras, mostrando nombre, edad aproximada y total gastado.

SELECT c.nombre,(CAST(strftime('%Y','now') AS INTEGER) - CAST(strftime('%Y', c.fecha_nacimiento) AS INTEGER)) AS edad_aproximada,SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING edad_aproximada > 60