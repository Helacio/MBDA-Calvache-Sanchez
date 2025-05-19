/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Indices

-- Indice en descripcion de PRODUCTOS, ya que descripcion es el nombre del producto
CREATE INDEX idx_producto_descripcion
    ON PRODUCTOS (descripcion);

-- Indice en la calificacion de las valoraciones, para buscar por calificacion
CREATE INDEX idx_valoracion_calificacion
    ON VALORACIONES (calificacion);

-- Indice en estado de PEDIDOS
CREATE INDEX idx_pedidos_estado 
    ON PEDIDOS (estado);

-- Indice en fecha de VENTAS, para poder consultar las ventas totales por mes (Consulta Gerencial)
CREATE INDEX idx_ventas_fecha 
    ON VENTAS (fecha);

