--Ejercicio 23 ¿Cuáles son los 5 productos con mayor ingresos acumulado?

SELECT p.nombre, SUM(d.cantidad * d.precio_unitario) AS ingreso_total FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
GROUP BY d.id_producto
ORDER BY ingreso_total DESC
LIMIT 5