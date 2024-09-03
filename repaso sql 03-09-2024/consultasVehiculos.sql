SELECT * FROM `plantilla-sql`.vehiculos;

/* 1. Contar el numero total de vehiculos de una marca específica */ 

SELECT COUNT(*) AS totalMarca
FROM vehiculos
WHERE marcaVehiculo = 'Volvo';

/* 2. Seleccionar todos los vehiculos de un tipo especifico (p.ej. Bicicleta) */ 

SELECT * FROM vehiculos
WHERE tipoVehiculo = 'Bicicleta';

/* 3. Obtener vehiculos de una marca y modelo especificos */ 

SELECT * FROM vehiculos
WHERE marcaVehiculo LIKE 't%' AND modeloVehiculo LIKE '%e';

/* 4. Seleccionar vehiculos ordenados por años de fabricación */ 

SELECT * FROM vehiculos
ORDER BY anyoVehiculo ASC;

/* 5. Contar el numero de vehiculos por tipo */ 

SELECT COUNT(*) AS cantidadTipo
FROM vehiculos
WHERE tipoVehiculo LIKE '%ta';

/* 6. Seleccionar vehiculos cuyo modelo contiene 'turbo' (por ejemplo) */

SELECT * FROM vehiculos
WHERE modeloVehiculo LIKE '%m%';

/* 7. Seleccionar vehiculos de un rango de años */ 

SELECT * FROM vehiculos
WHERE anyoVehiculo BETWEEN 2022 AND 2023;

/* 8. Seleccionar todas las marcas distintas */ 

SELECT DISTINCT marcaVehiculo
FROM vehiculos;

/* 9. Seleccionar los vehiculos cuyo id sea mayor de 3 */ 

SELECT * FROM vehiculos
WHERE idvehiculos > 3;

/* 10. Seleccionar vehiculos de una marca específica y a partir de cierto año */ 

SELECT * FROM vehiculos
WHERE marcaVehiculo LIKE '%o' AND anyoVehiculo > 2020;