--Ejercicio 16 Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.

SELECT c.nombre, SUM(v.total_venta) AS total_gastado FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY SUM(v.total_venta) DESC
LIMIT 1