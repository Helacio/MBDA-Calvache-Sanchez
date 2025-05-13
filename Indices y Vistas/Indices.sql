/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


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