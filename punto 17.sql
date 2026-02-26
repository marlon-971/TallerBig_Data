--Ejercicio 17 ¿Cuánto dinero hemos dejado de ingresar por el cupón "ULTIMO_SUSPIRO"?

SELECT SUM((total_venta / 0.70) - total_venta) AS dinero_perdido FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO'