/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


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

