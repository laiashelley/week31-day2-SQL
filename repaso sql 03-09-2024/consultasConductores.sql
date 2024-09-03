SELECT * FROM `plantilla-sql`.conductores;

/* 1. Contar el numero total de conductores */

SELECT COUNT(*) AS totalConductores
FROM conductores;

/* 2. Seleccionar conductores con un apellido específico (como por ejemplo, Martinez) */

SELECT * FROM conductores
WHERE apellidoConductor = 'Galvez';

/* 3. Seleccionar conductores ordenados por apellido (en este caso ascendiente, descendiente seria DESC) */

SELECT * FROM conductores
ORDER BY apellidoConductor ASC;

/* 4. Seleccionar conductores cuyo teléfono empieza con 65 */

SELECT * FROM conductores
WHERE telefonoConductor LIKE '65%';

/* 5. Seleccionar conductores cuyo apellido acaba en “ez” */

SELECT * FROM conductores
WHERE apellidoConductor LIKE '%ez';

/* 6. Contar el número de conductores que tienen un apellido específico */

SELECT COUNT(*) AS apellidoEZ
FROM conductores
WHERE apellidoConductor LIKE '%ez';

/* 7. Mostrar nombre, Apellido y localidad de todos los conductores */

SELECT nombreConductor, apellidoConductor, localidadConductor FROM conductores;

/* 8. Mostrar todos los datos de conductores de una localidad específica */

SELECT * FROM conductores
WHERE localidadConductor = 'Barcelona';

/* 9. Mostrar todos los conductores en un rango de dos IDs específicos */

SELECT * FROM conductores
WHERE idconductores BETWEEN 5 AND 10;

/* 10. Seleccionar todos los conductores con un apellido y localidad específicos */

SELECT * FROM conductores
WHERE apellidoConductor LIKE '%ez' AND localidadConductor LIKE 'Barcelona';