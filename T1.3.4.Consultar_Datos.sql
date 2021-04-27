/* esta consulta nos entrega todos los registros de la tabla */
SELECT * FROM cliente 


/* esta consulta nos entrega todos los registros de la tabla */
SELECT * FROM canal


/* esta consulta nos entrega todos los registros de la tabla */
SELECT * FROM producto


/* esta consulta nos entrega todos los registros de la tabla */
SELECT * FROM tipo_documento


/* esta consulta nos entrega todos los registros de la tabla */
SELECT * FROM almacen


/* esta consulta nos entrega todos los registros de la tabla */
SELECT * FROM venta


/* esta consulta nos cuenta el total de los registros de venta */

SELECT 
COUNT(*)
FROM venta 


/* esta consulta nos cuenta el total de los registros de producto*/

SELECT 
COUNT(*)
FROM venta 


/* esta consulta nos muestra la cantidad de registros por categoria en orden descendente*/

SELECT 
nombrecategoria,
COUNT(nombrecategoria) AS registros
FROM producto 
GROUP BY nombrecategoria
ORDER BY registros DESC;


/* esta consulta nos muestra la venta promedio, minima, maxima y total por gerencia */

SELECT 
t1.nombregen,
AVG(vlrventasconimpuestos) AS Prom_ventas,
MIN(vlrventasconimpuestos) AS Min_ventas,
MAX(vlrventasconimpuestos) AS Max_ventas,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2
WHERE t1.IdPLU = t2.idplu
GROUP BY t1.nombregen;




/* esta consulta nos muestra la venta promedio, minima, maxima y total de cada gerencia por canal */

SELECT 
t1.nombregen,
t2.cdcanal,
AVG(vlrventasconimpuestos) AS Prom_ventas,
MIN(vlrventasconimpuestos) AS Min_ventas,
MAX(vlrventasconimpuestos) AS Max_ventas,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2
WHERE t1.IdPLU = t2.idplu
GROUP BY t1.nombregen,
t2.cdcanal;



/* esta consulta nos muestra la venta promedio, minima, maxima y total de cada gerencia por canal */

SELECT 
t1.nombregen,
t2.cdcanal,
AVG(vlrventasconimpuestos) AS Prom_ventas,
MIN(vlrventasconimpuestos) AS Min_ventas,
MAX(vlrventasconimpuestos) AS Max_ventas,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2
WHERE t1.IdPLU = t2.idplu AND vlrventasconimpuestos > 0
GROUP BY t1.nombregen,
t2.cdcanal;





/* esta consulta nos muestra la venta promedio, minima, maxima y total por canal */

SELECT 
t3.canal,
AVG(vlrventasconimpuestos) AS Prom_ventas,
MIN(vlrventasconimpuestos) AS Min_ventas,
MAX(vlrventasconimpuestos) AS Max_ventas,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0
GROUP BY t3.canal;




/* esta consulta nos muestra la venta promedio, minima, maxima y total por canal-gerencia */

SELECT 
t3.canal,
t1.nombregen,
AVG(vlrventasconimpuestos) AS Prom_ventas,
MIN(vlrventasconimpuestos) AS Min_ventas,
MAX(vlrventasconimpuestos) AS Max_ventas,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0
GROUP BY t3.canal,
t1.nombregen;




/* esta consulta nos muestra la venta por canal-gerencia-categoria de mayor a menor */

SELECT 
t3.canal,
t1.nombregen,
t1.nombrecategoria,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0
GROUP BY t3.canal,
t1.nombregen,
t1.nombrecategoria
ORDER BY t3.canal, Ventas DESC;




/* esta consulta nos muestra las 5 categorìas que menos venden de TECNOLOGIA Y ELECTRO en FISICO */

SELECT 
t3.canal,
t1.nombregen,
t1.nombrecategoria,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0 AND t3.canal = 'Fisico' AND t1.nombregen = 'TECNOLOGIA Y ELECTRO'
GROUP BY t3.canal,
t1.nombregen,
t1.nombrecategoria
ORDER BY t3.canal, t1.nombregen, Ventas
LIMIT 5;



/* esta consulta nos muestra las 5 categorìas que menos venden de HOGAR Y VARIEDADES en FISICO */

SELECT 
t3.canal,
t1.nombregen,
t1.nombrecategoria,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0 AND t3.canal = 'Fisico' AND t1.nombregen = 'HOGAR Y VARIEDADES'
GROUP BY t3.canal,
t1.nombregen,
t1.nombrecategoria
ORDER BY t3.canal, t1.nombregen, Ventas
LIMIT 5;


/* esta consulta nos muestra las 5 categorìas que menos venden de FRUCAR en DOMICILIOS */

SELECT 
t3.canal,
t1.nombregen,
t1.nombrecategoria,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0 AND t3.canal = 'Domicilios' AND t1.nombregen = 'FRUCAR'
GROUP BY t3.canal,
t1.nombregen,
t1.nombrecategoria
ORDER BY t3.canal, t1.nombregen, Ventas
LIMIT 5;


/* esta consulta nos muestra las 5 categorìas que menos venden de TECNOLOGIA Y ELECTRO en ONLINE */

SELECT 
t3.canal,
t1.nombregen,
t1.nombrecategoria,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0 AND t3.canal = 'Online' AND t1.nombregen = 'TECNOLOGIA Y ELECTRO'
GROUP BY t3.canal,
t1.nombregen,
t1.nombrecategoria
ORDER BY t3.canal, t1.nombregen, Ventas
LIMIT 5;



/* esta consulta nos muestra las 5 categorìas que menos venden de HOGAR Y VARIEDADES en ONLINE */

SELECT 
t3.canal,
t1.nombregen,
t1.nombrecategoria,
SUM(vlrventasconimpuestos) AS Ventas
FROM producto t1, venta t2, canal t3
WHERE t1.IdPLU = t2.idplu AND t2.cdcanal = t3.cdcanal AND vlrventasconimpuestos > 0 AND t3.canal = 'Online' AND t1.nombregen = 'HOGAR Y VARIEDADES'
GROUP BY t3.canal,
t1.nombregen,
t1.nombrecategoria
ORDER BY t3.canal, t1.nombregen, Ventas
LIMIT 5;