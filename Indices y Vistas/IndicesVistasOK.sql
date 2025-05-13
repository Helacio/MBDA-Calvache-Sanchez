/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- IndicesVistasOk

-- Indices

-- 1) Productos que empiezan con 'Bacardi'
SELECT idProducto, descripcion, precioVenta
FROM PRODUCTOS
WHERE descripcion LIKE 'Bacardi%';

-- 2) Clientes que empiezan con 'Cristhian'
SELECT idCliente, nombre, telefono
FROM CLIENTES
WHERE nombre LIKE 'Cristhian%';

-- 3) Pedidos pendientes
SELECT idPedido, fecha, estado
FROM PEDIDOS
WHERE estado = 'P';

-- 4) Ventas realizadas en el mes de enero
SELECT idVenta, fecha, idCliente
FROM VENTAS
WHERE EXTRACT(MONTH FROM fecha) = 4;


-- Vistas

-- 1) Proveedores con precios menores a 100000
SELECT * FROM MejorProveedor
WHERE PrecioMinimo < 100000;

--2) Pedidos pendientes de proveedor
SELECT * FROM pedidos_pendientes_proveedor
WHERE estado = 'P';

-- 3) Valoraciones de productos
SELECT * FROM valoraciones_clientes
WHERE calificacion >= 4;

-- 4) Productos más vendidos
SELECT * FROM productos_mas_vendidos
WHERE total_vendido > 10;

