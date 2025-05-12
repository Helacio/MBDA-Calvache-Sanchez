-- Indices y vistas

-- Indices

-- Indice en descripcion de PRODUCTOS
CREATE INDEX idx_producto_descripcion
    ON PRODUCTOS (descripcion);

-- Indice en nombre de CLIENTES
CREATE INDEX idx_cliente_nombre 
    ON CLIENTES (nombre);

-- Indice en estado de PEDIDOS
CREATE INDEX idx_pedidos_estado 
    ON PEDIDOS (estado);

-- Indice en fecha de VENTAS
CREATE INDEX idx_ventas_fecha 
    ON VENTAS (fecha);


-- Vistas

-- Vista que muestra los mejores precios que ofrecen los proveedores
CREATE VIEW MejorProveedor AS
    SELECT PRO.idProveedor, PRO.nombre, P.descripcion, MIN(PRE.precio) AS PrecioMinimo
    FROM PROVEEDORES PRO
    JOIN PRECIOS PRE ON PRO.idProveedor = PRE.idProveedor
    JOIN PRODUCTOS P ON P.idProducto = PRE.idProducto
    GROUP BY PRO.idProveedor, PRO.nombre, P.descripcion;

-- Vista que muestra los pedidos pendientes de los proveedores
CREATE VIEW pedidos_pendientes_proveedor AS
    SELECT pr.idProveedor, pr.nombre AS proveedor, pe.idPedido, pe.fecha, pe.estado
    FROM PEDIDOS pe
    JOIN PROVEEDORES pr ON pe.idProveedor = pr.idProveedor
    WHERE pe.estado = 'P';

-- Vista que muestra las valoraciones de los clientes
CREATE VIEW valoraciones_clientes AS
    SELECT idValoracion, calificacion, comentario, descripcion, fecha
    FROM VALORACIONES V
    JOIN PRODUCTOS PRO ON PRO.idProducto = V.idProducto
    ORDER BY calificacion ASC;

-- Vista que muestra los productos más vendidos
CREATE VIEW productos_mas_vendidos AS
    SELECT p.idProducto, p.descripcion, SUM(dv.cantidad) AS total_vendido
    FROM PRODUCTOS p
    JOIN DetalleDeVentas dv ON p.idProducto = dv.idProducto
    GROUP BY p.idProducto, p.descripcion
    ORDER BY total_vendido DESC;


-- XIndicesVistas

DROP INDEX idx_producto_descripcion;
DROP INDEX idx_cliente_nombre;
DROP INDEX idx_pedidos_estado;
DROP INDEX idx_ventas_fecha;
DROP VIEW MejorProveedor;
DROP VIEW pedidos_pendientes_proveedor;
DROP VIEW valoraciones_clientes;
DROP VIEW productos_mas_vendidos;


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
