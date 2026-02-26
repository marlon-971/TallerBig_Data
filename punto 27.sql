--Ejercicio 27 ¿Cuál es la diferencia en ingresos entre el mes con mayor venta y el mes con menor venta en 2025?

WITH ingresos_mensuales AS (
    SELECT 
        strftime('%m', fecha_venta) AS mes,
        SUM(total_venta) AS ingreso_total
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)

SELECT MAX(ingreso_total) - MIN(ingreso_total) AS diferencia_ingresos FROM ingresos_mensuales
