/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- XForaneas

ALTER TABLE DetalleDeVentas DROP CONSTRAINT FK_DetalleDeVentas_ventas;
ALTER TABLE DetalleDePedidos DROP CONSTRAINT FK_DetalleDePedidos_pedidos;
ALTER TABLE VALORACIONES DROP CONSTRAINT FK_valoraciones_clientes;
ALTER TABLE VENTAS DROP CONSTRAINT FK_ventas_facturas;
ALTER TABLE PEDIDOS DROP CONSTRAINT FK_pedidos_proveedores;


-- Tuplas

--Si el estado del envio = 'C' entonces empresaTransporte = null
ALTER TABLE ENVIOS
ADD CONSTRAINT CK_estado_transporte CHECK (NOT (estado = 'c' AND empresaTransporte IS NOT NULL));

-- Si el cliente tiene cedula entonces el numero debe empezar por '1'
ALTER TABLE CLIENTES
ADD CONSTRAINT CK_tipo_numero CHECK ((tipo <> 'CC') OR (numero LIKE '1%'));

-- Si el cliente es una empresa entonces la dirección no puede ser desconocida
ALTER TABLE CLIENTES
ADD CONSTRAINT CK_tipo_direccion CHECK (NOT (tipo = 'NIT' AND direccion IS NULL));


-- Acciones

-- Si eliminamos ventas, también se deben eliminar los detalles de ventas asociados

ALTER TABLE DetalleDeVentas
ADD CONSTRAINT FK_DetalleDeVentas_ventas FOREIGN KEY (idDetalleVenta) REFERENCES VENTAS(idVenta) ON DELETE CASCADE;

-- Si eliminamos un pedido, también se deben eliminar los detalles de pedido asociados

ALTER TABLE DetalleDePedidos
ADD CONSTRAINT FK_DetalleDePedidos_pedidos FOREIGN KEY (idPedido) REFERENCES PEDIDOS(idPedido) ON DELETE CASCADE;

-- Si eliminamos un cliente queremos que su valoracion asociada quede desconocida

ALTER TABLE VALORACIONES
ADD CONSTRAINT FK_valoraciones_clientes FOREIGN KEY (idCliente) REFERENCES CLIENTES(idCliente) ON DELETE SET NULL;

-- Cuando actualicemos los datos de una factura su venta asociada también se cambie

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura) ON UPDATE CASCADE;

-- Si eliminamos a un proveedor también se tienen que eliminar los pedidos asociados

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_pedidos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor) ON DELETE CASCADE;


-- Disparadores

-- XDisparadores


-- TuplasOK

INSERT INTO ENVIOS VALUES (2, TO_DATE('2024-02-24', 'YYYY-MM-DD'), NULL, 100000, 'C', 'Calle 1 #7-39');

INSERT INTO CLIENTES VALUES (2, 'CC', '1001080020', 'Carlos Garcia', NULL, '322778998', 'carlosgarcia@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));

INSERT INTO CLIENTES VALUES (3, 'NIT', '1001562920', 'Cristian Fajardo', 'calle 32 #7-14', '322778998', 'cristianfajardo@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));


-- TuplasNoOK

/* 1) Definimos que si el estado del envio = 'C', entonces la empresaTransporte debe ser NULL
    CK_estado_transporte    */
INSERT INTO ENVIOS VALUES (3, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 'Servientrega', 100000, 'C', 'Calle 1 #7-39');

/* 2) Definimos que si el cliente tiene cedula, entonces el numero debe empezar por '1'
    CK_tipo_numero  */
INSERT INTO CLIENTES VALUES (4, 'CC', '2001064920', 'Cesar Ramos', NULL, '322778998', 'cesarramos@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));

/* 3) Definimos que si el cliente es una empresa la dirección no puede ser NULA
    CK_tipo_direccion   */
INSERT INTO CLIENTES VALUES (5, 'NIT', '3001562920', 'Sara Gomez', NULL, '322778998', 'saragomez@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));


-- AccionesOK

-- 1)
SELECT *
FROM VENTAS

SELECT *
FROM DetalleDeVentas

DELETE FROM VENTAS WHERE idVenta = 1;

-- 2)
SELECT *
FROM PEDIDOS

SELECT *
FROM DetalleDePedidos

DELETE FROM PEDIDOS WHERE idPedido = 1;

-- 3)
SELECT *
FROM CLIENTES

SELECT *
FROM VALORACIONES

DELETE FROM CLIENTES WHERE idCliente = 1;

-- 4) 
SELECT *
FROM FACTURAS

SELECT *
FROM VENTAS

UPDATE FROM FACTURAS WHERE idFactura = 1;

-- 5)
SELECT *
FROM PROVEEDORES

SELECT *
FROM PEDIDOS

DELETE FROM PROVEEDORES WHERE idProveedor = 1;


-- DisparadoresOK


-- DisparadoresNoOK



