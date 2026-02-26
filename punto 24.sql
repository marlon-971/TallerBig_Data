--Ejercicio 24 Para cada mes en 2025, calcula: total de ventas, número de transacciones, y ticket promedio.

SELECT 
    strftime('%m', fecha_venta) AS mes,
    SUM(total_venta) AS ingreso_total,
    COUNT(id_venta) AS numero_transacciones,
    AVG(total_venta) AS ticket_promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY mes
ORDER BY mes