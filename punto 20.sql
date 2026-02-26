--Ejercicio 20 Para cada categoría de producto, calcula el ingreso total, cantidad de unidades vendidas y ticket promedio por venta.

SELECT 
    p.categoria,
    SUM(v.total_venta) AS ingreso_total,
    SUM(d.cantidad) AS total_unidades,
    AVG(v.total_venta) AS ticket_promedio
FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
JOIN ventas v 
    ON d.id_venta = v.id_venta
GROUP BY p.categoria