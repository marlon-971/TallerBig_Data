--Ejercicio 22 Crea una clasificación de clientes por nivel de gasto:

SELECT c.nombre, SUM(v.total_venta) AS total_gastado, CASE 
        WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
        WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
        ELSE 'Bajo Valor'
    END AS nivel_cliente
FROM ventas v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente