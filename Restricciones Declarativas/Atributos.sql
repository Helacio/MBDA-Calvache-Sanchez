/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Atributos

-- cargo
ALTER TABLE EMPLEADOS
ADD CONSTRAINT CK_cargo CHECK (cargo IN ('A', 'C', 'D', 'L', 'V', 'AL'));

-- puntaje
ALTER TABLE VALORACIONES
ADD CONSTRAINT CK_puntaje CHECK (calificacion BETWEEN 1 AND 10);

-- Tcedula
ALTER TABLE CLIENTES
ADD CONSTRAINT CK_Tcedula CHECK (tipo IN ('CC', 'CE', 'NIT', 'P'));

-- Tconsecutivo
ALTER TABLE PROVEEDORES
ADD CONSTRAINT CK_Tconsecutivo_proveedores CHECK (idproveedor > 0);

ALTER TABLE PEDIDOS
ADD CONSTRAINT CK_Tconsecutivo_pedidos CHECK (idPedido > 0);

ALTER TABLE DetalleDePedidos
ADD CONSTRAINT CK_Tconsecutivo_DetalleDePedidos CHECK (idDetalle > 0);

ALTER TABLE DetalleDeVentas
ADD CONSTRAINT CK_Tconsecutivo_DetalleDeVentas CHECK (idDetalleVenta > 0);

ALTER TABLE VALORACIONES
ADD CONSTRAINT CK_Tconsecutivo_valoraciones CHECK (idvaloracion > 0);

ALTER TABLE CLIENTES
ADD CONSTRAINT CK_Tconsecutivo_clientes CHECK (idCliente > 0);

ALTER TABLE VENTAS
ADD CONSTRAINT CK_Tconsecutivo_ventas CHECK (idVenta > 0);

ALTER TABLE ENVIOS
ADD CONSTRAINT CK_Tconsecutivo_envios CHECK (idEnvio > 0);

ALTER TABLE FACTURAS 
ADD CONSTRAINT CK_Tconsecutivo_facturas CHECK (idFactura > 0);

ALTER TABLE SEDES
ADD CONSTRAINT CK_Tconsecutivo_sedes CHECK (idSede > 0);

-- Tcorreo
ALTER TABLE PROVEEDORES
ADD CONSTRAINT CK_Tcorreo_proveedores CHECK (REGEXP_LIKE(correo, '^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$'));

ALTER TABLE CLIENTES
ADD CONSTRAINT CK_Tcorreo_clientes CHECK (REGEXP_LIKE(correo, '^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$'));

ALTER TABLE ELECTRONICAS
ADD CONSTRAINT CK_Tcorreo_electronicas CHECK (REGEXP_LIKE(correo, '^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$'));

-- Templeado
ALTER TABLE EMPLEADOS
ADD CONSTRAINT CK_Templeado CHECK (idEmpleado BETWEEN 10000 AND 99999);

-- Testado
ALTER TABLE PEDIDOS
ADD CONSTRAINT CK_Testado_pedidos CHECK (estado IN ('P', 'D', 'E', 'C'));

ALTER TABLE ENVIOS
ADD CONSTRAINT CK_Testado_envios CHECK (estado IN ('P', 'D', 'E', 'C'));

-- Tmoneda
ALTER TABLE PRECIOS
ADD CONSTRAINT CK_Tmoneda_precios CHECK (precio > 0);

ALTER TABLE DetalleDePedidos
ADD CONSTRAINT CK_Tmoneda_DetalleDePedidos CHECK (precio > 0);

ALTER TABLE DetalleDeVentas
ADD CONSTRAINT CK_Tmoneda_DetalleDeVentas CHECK (precio > 0);

ALTER TABLE ENVIOS
ADD CONSTRAINT CK_Tmoneda_envios CHECK (costoEnvio > 0);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT CK_Tmoneda_productos CHECK (precioCompra > 0 AND precioVenta > 0);

-- Tpositivo
ALTER TABLE DetalleDePedidos
ADD CONSTRAINT CK_Tpositivo_DetalleDePedidos CHECK (cantidad > 0);

ALTER TABLE CLIENTES
ADD CONSTRAINT CK_Tpositivo_clientes CHECK (numero > 0);

-- Ttransporte
ALTER TABLE ENVIOS
ADD CONSTRAINT CK_Ttransporte CHECK (empresaTransporte IN ('Envia', 'Deprisa', 'Servientrega'));

