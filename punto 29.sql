--Ejercicio 29 ¿Cuál es el porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO"?

SELECT (SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) 
     / SUM(total_venta)) * 100 AS porcentaje_cupon
FROM ventas