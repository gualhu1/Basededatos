SELECT count(*) FROM productos;
SELECT * FROM productos ORDER BY fabricantes_codigo DESC;
SELECT fabricantes.nombre, MAX(productos.precio), MIN(productos.precio),AVG(productos.precio)
FROM fabricantes INNER JOIN productos
ON productos.fabricantes_codigo = .fabricantes_codigo
GROUP BY fabricantes_codigo;
SELECT fabricantes.nombre,
MAX(productos.precio), MIN(productos.precio),
AVG(productos.precio), COUNT(*)
FROM productos INNER JOIN fabricantes
ON productos.fabricantes_codigo = fabricantes_codigo
GROUP BY fabricantes_codigo
HAVING AVG (productos.precio)>200;




