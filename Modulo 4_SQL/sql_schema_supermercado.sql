
-- CONSULTAS SQL


-- 1.- CONSULTA
SELECT o.id_orden, o.fecha_orden, c.first_name, c.last_name, e.nombre_empleado, o.metodo_pago
FROM ordenes o 
JOIN clientes c ON c.id_cliente = o.id_cliente 
JOIN empleados e ON e.id_empleado = o.id_empleado
ORDER BY o.id_orden;

-- 2.- CONSULTA
SELECT p.nombre_producto, c.nombre_categoria, p.stock 
FROM productos p 
JOIN categorias c ON p.id_categoria = c.id_categoria 
WHERE p.stock < 10;

-- 3.- CONSULTA
SELECT c.nombre_categoria as categoria, sum((d.precio_unitario * ( 1 - d.descuento)) * d.cantidad) as ventas
 FROM categorias c 
 JOIN productos p ON p.id_categoria = c.id_categoria 
 JOIN detalle_orden d ON d.id_producto = p.id_producto 
 GROUP BY c.id_categoria;

-- 4.- CONSULTA
SELECT c.first_name as nombre, c.last_name as apellido, sum((d.precio_unitario * ( 1 - d.descuento)) * d.cantidad) as compras
FROM clientes c 
JOIN ordenes o ON c.id_cliente = o.id_cliente
JOIN detalle_orden d ON d.id_orden = o.id_orden 
GROUP BY c.id_cliente
ORDER BY sum((d.precio_unitario * ( 1 - d.descuento)) * d.cantidad) DESC;

-- 5.- CONSULTA




