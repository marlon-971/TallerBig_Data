--EEjercicio 21 ¿Cuáles son los clientes que han usado el cupón "ULTIMO_SUSPIRO" al menos 3 veces?

SELECT c.nombre, COUNT(*) AS veces_usado FROM ventas v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY v.id_cliente
HAVING COUNT(*) >= 3