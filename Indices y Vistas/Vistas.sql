/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Vistas

-- Vista que muestra el mejor proveedor para cada producto
CREATE VIEW MejorProveedor AS
    SELECT PRO.idProveedor, PRO.nombre, P.descripcion, PRE.precio AS PrecioMinimo
    FROM PROVEEDORES PRO
    JOIN PRECIOS PRE ON PRO.idProveedor = PRE.idProveedor
    JOIN PRODUCTOS P ON P.idProducto = PRE.idProducto
    WHERE PRE.precio = (SELECT MIN(PRE2.precio)
                        FROM PRECIOS PRE2
                        WHERE PRE2.idProducto = P.idProducto);

-- Vista que muestra la lista de empleados
CREATE VIEW list_empleados AS 
    SELECT *
    FROM EMPLEADOS;

-- Vista que muestra las valoraciones mas bajas de los clientes
CREATE VIEW valoraciones_clientes AS
    SELECT idValoracion, calificacion, comentario, descripcion, fecha
    FROM VALORACIONES V
    JOIN PRODUCTOS PRO ON PRO.idProducto = V.idProducto
    ORDER BY calificacion ASC;

-- Vista que muestra los precios de productos en la tienda
CREATE VIEW preciosXproducto AS
    SELECT idProducto, descripcion, precioVenta
    FROM PRODUCTOS;

-- Vista que muestra los pedidos pendientes de los proveedores
CREATE VIEW pedidos_pendientes_proveedor AS
    SELECT pr.idProveedor, pr.nombre AS proveedor, pe.idPedido, pe.fecha, pe.estado
    FROM PEDIDOS pe
    JOIN PROVEEDORES pr ON pe.idProveedor = pr.idProveedor
    WHERE pe.estado = 'P';

-- Vista que muestra los productos más vendidos (Consulta gerencial)
CREATE VIEW productos_mas_vendidos AS
    SELECT p.idProducto, p.descripcion, SUM(dv.cantidad) AS total_vendido
    FROM PRODUCTOS p
    JOIN DetalleDeVentas dv ON p.idProducto = dv.idProducto
    GROUP BY p.idProducto, p.descripcion
    ORDER BY total_vendido DESC;

-- Vista que muestra los productos proximos a vencer (Menos de un mes)
CREATE VIEW productos_proximos_a_vencer AS
    SELECT idProducto, descripcion, fechaVencimiento
    FROM PRODUCTOS
    WHERE fechaVencimiento BETWEEN SYSDATE AND SYSDATE + 30;

