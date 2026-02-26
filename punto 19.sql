--Ejercicio 19 ¿Cuál es el producto más vendido en cantidad (en términos de unidades, no dinero)?

SELECT p.nombre, SUM(d.cantidad) AS total_unidades FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
GROUP BY d.id_producto
ORDER BY total_unidades DESC
LIMIT 1