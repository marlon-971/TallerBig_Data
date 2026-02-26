--Ejercicio 25 ¿Cuál es el cliente que compró la mayor variedad de productos diferentes (no cantidad, sino tipos distintos)?

SELECT c.nombre,COUNT(DISTINCT d.id_producto) AS variedad_productos FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
JOIN detalle_ventas d 
    ON v.id_venta = d.id_venta
GROUP BY c.id_cliente, c.nombre
ORDER BY variedad_productos DESC
LIMIT 1