-- Ejercicio 8 ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?

SELECT COUNT(*) AS total_ventas_cupon FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO'