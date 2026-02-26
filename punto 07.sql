-- Ejercicio 7 Enlista todos los productos de "Accesorios" con precio menor a $500.

SELECT nombre,precio FROM productos
WHERE categoria = 'Accesorios'
  AND precio < 500