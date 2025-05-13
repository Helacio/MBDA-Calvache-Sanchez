/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Consultas

-- Consultar precios de productos en la tienda
SELECT idProducto, descripcion, precioVenta
FROM PRODUCTOS;


-- Consultar los pedidos activos
SELECT idPedido, fecha, estado, idProveedor
FROM PEDIDOS
WHERE estado = 'P' OR estado = 'D';

-- Consultar mejor proveedor para cada producto
SELECT PRO.idProveedor, PRO.nombre, P.descripcion, MIN(PRE.precio) AS PrecioMinimo
FROM PROVEEDORES PRO
JOIN PRECIOS PRE ON PRO.idProveedor = PRE.idProveedor
JOIN PRODUCTOS P ON P.idProducto = PRE.idProducto
GROUP BY PRO.idProveedor, PRO.nombre, P.descripcion;

-- Consultar la lista de empleados
SELECT *
FROM EMPLEADOS;

-- Consultar las valoraciones de los clientes
SELECT idValoracion, calificacion, comentario, descripcion, fecha
FROM VALORACIONES V
JOIN PRODUCTOS PRO ON PRO.idProducto = V.idProducto
ORDER BY calificacion ASC;

