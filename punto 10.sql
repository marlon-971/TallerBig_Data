-- Ejercicio 10 Muestra todos los clientes de género "F" (femenino) ordenados por fecha de nacimiento (más viejitas primero).

SELECT nombre,fecha_nacimiento FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC