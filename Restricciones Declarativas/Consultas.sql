/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Consultas

-- Consultar precios de productos en la tienda
SELECT idProducto, descripcion, precioVenta
FROM PRODUCTOS;

-- Consultar los pedidos pendientes de los proveedores
SELECT pr.idProveedor, pr.nombre AS proveedor, pe.idPedido, pe.fecha, pe.estado
FROM PEDIDOS pe
JOIN PROVEEDORES pr ON pe.idProveedor = pr.idProveedor
WHERE pe.estado = 'P';

-- Consultar mejor proveedor para cada producto
SELECT PRO.idProveedor, PRO.nombre, P.descripcion, MIN(PRE.precio) AS PrecioMinimo
FROM PROVEEDORES PRO
JOIN PRECIOS PRE ON PRO.idProveedor = PRE.idProveedor
JOIN PRODUCTOS P ON P.idProducto = PRE.idProducto
GROUP BY PRO.idProveedor, PRO.nombre, P.descripcion;

-- Consultar la lista de empleados
SELECT *
FROM EMPLEADOS;

-- Consultar las valoraciones mas bajas de los clientes
SELECT idValoracion, calificacion, comentario, descripcion, fecha
FROM VALORACIONES V
JOIN PRODUCTOS PRO ON PRO.idProducto = V.idProducto
ORDER BY calificacion ASC;

