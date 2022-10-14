SELECT count(*) FROM productos;
SELECT * FROM productos ORDER BY fabricantes_codigo DESC;
SELECT fabricantes.nombre, MAX(productos.precio), MIN(productos.precio), AVG(productos.precio)
FROM fabricantes JOIN productos
ON productos.codigo = fabricantes.codigo
GROUP BY fabricantes.codigo;
SELECT fabricantes.nombre,
MAX(productos.precio), MIN(productos.precio),
AVG(productos.precio), COUNT(*)
FROM productos JOIN fabricantes
ON productos.codigo = fabricantes.codigo
GROUP BY fabricantes.codigo
HAVING AVG (productos.precio)>200;




