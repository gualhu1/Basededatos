SELECT nombre, precio
FROM productos;
SELECT * FROM productos;
SELECT productos.nombre,precio, fabricantes.nombre
FROM productos INNER JOIN fabricantes
ON productos.fabricantes_codigo=fabricantes_codigo;
SELECT * FROM productos INNER JOIN fabricantes
ON productos.fabricantes_codigo=fabricantes_codigo
WHERE fabricantes.nombre = 'Lenovo';
SELECT * FROM productos
WHERE precio = ( SELECT MAX(precio)
FROM productos
WHERE productos.fabricantes_codigo = (
SELECT codigo
FROM fabricantes
WHERE nombre = 'Lenovo'));
SELECT productos.nombre
FROM fabricantes INNER JOIN productos
ON fabricantes.codigo = productos.fabricantes_codigo
WHERE fabricantes.nombre ='Lenovo' AND productos.precio=(SELECT MAX(precio)
FROM fabricantes INNER JOIN productos
ON fabricantes.codigo = productos.fabricantes_codigo
WHERE fabricantes.nombre = 'Lenovo');
SELECT * FROM productos;


