/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- TABLAS

CREATE TABLE PROVEEDORES (
    idProveedor INTEGER NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono INTEGER NOT NULL,
    correo VARCHAR(50) NOT NULL
);

CREATE TABLE PRECIOS (
    idProveedor INTEGER NOT NULL,
    idProducto VARCHAR(5) NOT NULL,
    precio INTEGER NOT NULL
);

CREATE TABLE PRODUCTOS (
    idProducto VARCHAR(5) NOT NULL,
    idProveedor INTEGER,
    descripcion VARCHAR(100) NOT NULL,
    idDetallePedido INTEGER,
    idPedido INTEGER
);

CREATE TABLE TIPO_PRODUCTOS (
    idProveedor INTEGER NOT NULL,
    tipoProducto VARCHAR(30) NOT NULL
);

CREATE TABLE ENVIOS (
    idEnvio INTEGER NOT NULL,
    fechaEnvio DATE NOT NULL,
    empresaTransporte VARCHAR(12) NOT NULL,
    costoEnvio INTEGER NOT NULL,
    estado CHAR(1) NOT NULL,
    direccionEnvio VARCHAR(30) NOT NULL
);

CREATE TABLE VENTAS (
    idVenta INTEGER NOT NULL,
    fecha DATE NOT NULL,
    idEmpleado VARCHAR(12),
    idCliente INTEGER,
    idEnvio INTEGER,
    idFactura INTEGER
);

CREATE TABLE VALORACIONES (
    idValoracion INTEGER NOT NULL,
    calificacion INTEGER NOT NULL,
    comentario VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    idProducto VARCHAR(5),
    idCliente INTEGER
);

CREATE TABLE CLIENTES (
    idCliente INTEGER NOT NULL,
    tipo VARCHAR(3) NOT NULL,
    cedula VARCHAR(12) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    direccion VARCHAR(50),
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    fechaNacimiento DATE NOT NULL
);

CREATE TABLE DETALLE_DE_VENTAS (
    idDetalleVenta INTEGER NOT NULL,
    idVenta INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    precio INTEGER NOT NULL,
    idProducto VARCHAR(5)
);

CREATE TABLE PEDIDOS (
    idPedido INTEGER NOT NULL,
    fecha DATE NOT NULL,
    estado CHAR(1) NOT NULL,
    idProveedor INTEGER,
    idEmpleado VARCHAR(12)
   
);

CREATE TABLE DETALLE_DE_PEDIDOS (
    idDetalle INTEGER,
    cantidad INTEGER NOT NULL,
    precio INTEGER NOT NULL,
    idPedido INTEGER
);

CREATE TABLE EMPLEADOS (
    idEmpleado VARCHAR(12) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    cargo VARCHAR(2) NOT NULL,
    telefono INTEGER NOT NULL,
    correo VARCHAR(50) NOT NULL,
    ciudad VARCHAR(10)
);

CREATE TABLE FACTURAS (
    idFactura INTEGER NOT NULL,
    fecha DATE NOT NULL
);

CREATE TABLE FISICAS (
    idFactura INTEGER NOT NULL,
    telefono VARCHAR(10) NOT NULL
);

CREATE TABLE ELECTRONICAS (
    idFactura INTEGER NOT NULL,
    correo VARCHAR(50) NOT NULL,
    nombreEmpresa VARCHAR(20) NOT NULL
);


-- Atributos

ALTER TABLE PRODUCTOS
ADD CONSTRAINT CK_Tconsecutivo_Productos CHECK (idProveedor > 0);

ALTER TABLE EMPLEADOS
ADD CONSTRAINT CK_cargo CHECK (cargo IN ('A', 'C', 'D', 'L', 'V', 'AL'));


-- Primarias

ALTER TABLE PROVEEDORES
ADD CONSTRAINT PK_proveedores PRIMARY KEY (idProveedor);

ALTER TABLE PRECIOS
ADD CONSTRAINT PK_precios PRIMARY KEY (idProveedor, idProducto);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT PK_productos PRIMARY KEY (idProducto);

ALTER TABLE TIPO_PRODUCTOS
ADD CONSTRAINT PK_tipoProductos PRIMARY KEY (idProveedor, tipoProducto);

ALTER TABLE ENVIOS
ADD CONSTRAINT PK_envios PRIMARY KEY (idEnvio);

ALTER TABLE VENTAS
ADD CONSTRAINT PK_ventas PRIMARY KEY (idVenta);

ALTER TABLE VALORACIONES
ADD CONSTRAINT PK_valoraciones PRIMARY KEY (idValoracion);

ALTER TABLE CLIENTES
ADD CONSTRAINT PK_clientes PRIMARY KEY (idCliente);

ALTER TABLE DETALLE_DE_VENTAS
ADD CONSTRAINT PK_DetalleDeVentas PRIMARY KEY (idDetalleVenta, idVenta);

ALTER TABLE PEDIDOS
ADD CONSTRAINT PK_pedidos PRIMARY KEY (idPedido);

ALTER TABLE DETALLE_DE_PEDIDOS
ADD CONSTRAINT PK_DetalleDePedidos PRIMARY KEY (idDetalle, idPedido);

ALTER TABLE EMPLEADOS
ADD CONSTRAINT PK_empleados PRIMARY KEY (idEmpleado);

ALTER TABLE FACTURAS
ADD CONSTRAINT PK_facturas PRIMARY KEY (idFactura);

ALTER TABLE FISICAS
ADD CONSTRAINT PK_fisicas PRIMARY KEY (idFactura);

ALTER TABLE ELECTRONICAS
ADD CONSTRAINT PK_electronicas PRIMARY KEY (idFactura);


-- Unicas

ALTER TABLE PROVEEDORES
ADD CONSTRAINT UK_proveedores UNIQUE (correo);

ALTER TABLE EMPLEADOS
ADD CONSTRAINT UK_empleados UNIQUE (correo);

ALTER TABLE ELECTRONICAS
ADD CONSTRAINT UK_electronicas UNIQUE (correo);

ALTER TABLE CLIENTES
ADD CONSTRAINT UK_clientes_correo UNIQUE (correo);

ALTER TABLE CLIENTES
ADD CONSTRAINT UK_clientes_cedula UNIQUE (cedula);

ALTER TABLE DETALLE_DE_PEDIDOS
ADD CONSTRAINT UK_detalleDePedidos_idDetalle UNIQUE (idDetalle);


-- Foraneas

ALTER TABLE TIPO_PRODUCTOS
ADD CONSTRAINT FK_tipoProductos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor);

ALTER TABLE PRECIOS
ADD CONSTRAINT FK_precios_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor);

ALTER TABLE PRECIOS
ADD CONSTRAINT FK_precios_productos FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT FK_productos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT FK_productos_detalleDePedidos FOREIGN KEY (idDetallePedido) REFERENCES DETALLE_DE_PEDIDOS(idDetalle);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT FK_productos_pedidos FOREIGN KEY (idPedido) REFERENCES PEDIDOS(idPedido);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_empleados FOREIGN KEY (idEmpleado) REFERENCES EMPLEADOS(idEmpleado);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_envios FOREIGN KEY (idEnvio) REFERENCES ENVIOS(idEnvio);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_clientes FOREIGN KEY (idCliente) REFERENCES CLIENTES(idCliente);

ALTER TABLE VALORACIONES
ADD CONSTRAINT FK_valoraciones_productos FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto);

ALTER TABLE VALORACIONES
ADD CONSTRAINT FK_valoraciones_clientes FOREIGN KEY (idCliente) REFERENCES CLIENTES(idCliente);

ALTER TABLE DETALLE_DE_VENTAS
ADD CONSTRAINT FK_detalleDeVentas_ventas FOREIGN KEY (idVenta) REFERENCES VENTAS(idVenta);

ALTER TABLE DETALLE_DE_VENTAS
ADD CONSTRAINT FK_detalleDeVentas_productos FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto);

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_pedidos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor);

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_pedidos_empleados FOREIGN KEY (idEmpleado) REFERENCES EMPLEADOS(idEmpleado);

ALTER TABLE DETALLE_DE_PEDIDOS
ADD CONSTRAINT FK_detalleDePedidos_pedidos FOREIGN KEY (idPedido) REFERENCES PEDIDOS(idPedido);

ALTER TABLE ELECTRONICAS
ADD CONSTRAINT FK_electronicas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura);

ALTER TABLE FISICAS
ADD CONSTRAINT FK_fisicas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura);


-- xTablas

DROP TABLE PROVEEDORES;
DROP TABLE PRECIOS;
DROP TABLE PRODUCTOS;
DROP TABLE TIPO_PRODUCTOS;
DROP TABLE ENVIOS;
DROP TABLE VENTAS;
DROP TABLE VALORACIONES;
DROP TABLE CLIENTES;
DROP TABLE DETALLE_DE_VENTAS;
DROP TABLE PEDIDOS;
DROP TABLE DETALLE_DE_PEDIDOS;
DROP TABLE EMPLEADOS;
DROP TABLE FACTURAS;
DROP TABLE FISICAS;
DROP TABLE ELECTRONICAS;


-- PoblarOK

-- FACTURAS
INSERT INTO FACTURAS (idFactura, fecha)
VALUES (1, TO_DATE('2024-03-01', 'YYYY-MM-DD'));

INSERT INTO FACTURAS (idFactura, fecha)
VALUES (2, TO_DATE('2024-03-02', 'YYYY-MM-DD'));

INSERT INTO FACTURAS (idFactura, fecha)
VALUES (3, TO_DATE('2024-03-03', 'YYYY-MM-DD'));

INSERT INTO EMPLEADOS (idEmpleado, nombre, cargo, telefono, correo, ciudad)
VALUES ('E001', 'Cristian Torres', 'V', 3200000001, 'cristian.torres@email.com', 'Bogotá');

INSERT INTO EMPLEADOS (idEmpleado, nombre, cargo, telefono, correo, ciudad)
VALUES ('E002', 'Santiago Perdomo', 'A', 3200000002, 'santiago.perdomo@email.com', 'Medellín');

INSERT INTO EMPLEADOS (idEmpleado, nombre, cargo, telefono, correo, ciudad)
VALUES ('E003', 'Juan Arismendi', 'C', 3200000003, 'juan.arismendi@email.com', 'Cali');

INSERT INTO CLIENTES (idCliente, tipo, cedula, nombre, direccion, telefono, correo, fechaNacimiento)
VALUES (1, 'CC', '123456789', 'Felipe Calvache', 'Calle 123 #15-20', '3212554879', 'felipe.calvache@email.com', TO_DATE('1990-05-15', 'YYYY-MM-DD'));

INSERT INTO CLIENTES (idCliente, tipo, cedula, nombre, direccion, telefono, correo, fechaNacimiento)
VALUES (2, 'CC', '987654321', 'Laura Herrera', 'Calle 81 #5-38', '3102544528', 'laura.herrera@email.com', TO_DATE('1992-08-20', 'YYYY-MM-DD'));

INSERT INTO CLIENTES (idCliente, tipo, cedula, nombre, direccion, telefono, correo, fechaNacimiento)
VALUES (3, 'CC', '555555555', 'Hernan Sanchez', 'Carrera 30 #45-3', '3013333391', 'hernan.sanchez@email.com', TO_DATE('1988-12-30', 'YYYY-MM-DD'));

INSERT INTO ENVIOS (idEnvio, fechaEnvio, empresaTransporte, costoEnvio, estado, direccionEnvio)
VALUES (1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Servientrega', 15000, 'E', 'Calle 100 #10-10');

INSERT INTO ENVIOS (idEnvio, fechaEnvio, empresaTransporte, costoEnvio, estado, direccionEnvio)
VALUES (2, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'Deprisa', 20000, 'P', 'Cra 20 #50-15');

INSERT INTO ENVIOS (idEnvio, fechaEnvio, empresaTransporte, costoEnvio, estado, direccionEnvio)
VALUES (3, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Coordinadora', 18000, 'E', 'Av 68 #80-25');

INSERT INTO PROVEEDORES (idProveedor, nombre, direccion, telefono, correo)
VALUES (1, 'Bavaria', 'Zona Industrial Zona1', 601234567, 'contacto@bavaria.com');

INSERT INTO PROVEEDORES (idProveedor, nombre, direccion, telefono, correo)
VALUES (2, 'Interlicores', 'Carrera 50 #20-30', 601987654, 'ventas@interlicores.com');

INSERT INTO PROVEEDORES (idProveedor, nombre, direccion, telefono, correo)
VALUES (3, 'GlobalWine', 'Avenida El Dorado #10-12', 601555555, 'info@globalwine.com');

INSERT INTO PRODUCTOS (idProducto, idProveedor, descripcion, idDetallePedido, idPedido)
VALUES ('P001', 1, 'Whiskey Buchanans 12 años', NULL, NULL);

INSERT INTO PRODUCTOS (idProducto, idProveedor, descripcion, idDetallePedido, idPedido)
VALUES ('P002', 2, 'Vodka Smirnoff 750ml', NULL, NULL);

INSERT INTO PRODUCTOS (idProducto, idProveedor, descripcion, idDetallePedido, idPedido)
VALUES ('P003', 3, 'Tequila Don Julio Blanco', NULL, NULL);

INSERT INTO VENTAS (idVenta, fecha, idEmpleado, idCliente, idEnvio, idFactura)
VALUES (1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'E001', 1, 1, 1);

INSERT INTO VENTAS (idVenta, fecha, idEmpleado, idCliente, idEnvio, idFactura)
VALUES (2, TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'E002', 2, 2, 2);

INSERT INTO VENTAS (idVenta, fecha, idEmpleado, idCliente, idEnvio, idFactura)
VALUES (3, TO_DATE('2024-03-03', 'YYYY-MM-DD'), 'E003', 3, 3, 3);

INSERT INTO DETALLE_DE_VENTAS (idDetalleVenta, idVenta, cantidad, precio, idProducto)
VALUES (1, 1, 2, 120000, 'P001');

INSERT INTO DETALLE_DE_VENTAS (idDetalleVenta, idVenta, cantidad, precio, idProducto)
VALUES (2, 2, 1, 50000, 'P002');

INSERT INTO DETALLE_DE_VENTAS (idDetalleVenta, idVenta, cantidad, precio, idProducto)
VALUES (3, 3, 3, 75000, 'P003');

INSERT INTO VALORACIONES (idValoracion, calificacion, comentario, fecha, idProducto, idCliente)
VALUES (1, 5, 'Excelente producto', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'P001', 1);

INSERT INTO VALORACIONES (idValoracion, calificacion, comentario, fecha, idProducto, idCliente)
VALUES (2, 4, 'Muy bueno pero costoso', TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'P002', 2);

INSERT INTO VALORACIONES (idValoracion, calificacion, comentario, fecha, idProducto, idCliente)
VALUES (3, 3, 'Regular, esperaba más', TO_DATE('2024-03-03', 'YYYY-MM-DD'), 'P003', 3);

INSERT INTO PEDIDOS (idPedido, fecha, estado, idProveedor, idEmpleado)
VALUES (1, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 'P', 1, 'E001');

INSERT INTO PEDIDOS (idPedido, fecha, estado, idProveedor, idEmpleado)
VALUES (2, TO_DATE('2024-02-26', 'YYYY-MM-DD'), 'E', 2, 'E002');

INSERT INTO PEDIDOS (idPedido, fecha, estado, idProveedor, idEmpleado)
VALUES (3, TO_DATE('2024-02-27', 'YYYY-MM-DD'), 'P', 3, 'E003');

INSERT INTO DETALLE_DE_PEDIDOS (idDetalle, cantidad, precio, idPedido)
VALUES (1, 10, 1000000, 1);

INSERT INTO DETALLE_DE_PEDIDOS (idDetalle, cantidad, precio, idPedido)
VALUES (2, 5, 500000, 2);

INSERT INTO DETALLE_DE_PEDIDOS (idDetalle, cantidad, precio, idPedido)
VALUES (3, 15, 1500000, 3);

INSERT INTO FISICAS (idFactura, telefono)
VALUES (1, '3101111111');

INSERT INTO FISICAS (idFactura, telefono)
VALUES (2, '3102222222');

INSERT INTO FISICAS (idFactura, telefono)
VALUES (3, '3103333333');

INSERT INTO ELECTRONICAS (idFactura, correo, nombreEmpresa)
VALUES (1, 'factura1@cliente.com', 'Empresa Uno');

INSERT INTO ELECTRONICAS (idFactura, correo, nombreEmpresa)
VALUES (2, 'factura2@cliente.com', 'Empresa Dos');

INSERT INTO ELECTRONICAS (idFactura, correo, nombreEmpresa)
VALUES (3, 'factura3@cliente.com', 'Empresa Tres');

INSERT INTO PRECIOS (idProveedor, idProducto, precio)
VALUES (1, 'P001', 120000);

INSERT INTO PRECIOS (idProveedor, idProducto, precio)
VALUES (2, 'P002', 50000);

INSERT INTO PRECIOS (idProveedor, idProducto, precio)
VALUES (3, 'P003', 75000);

INSERT INTO TIPO_PRODUCTOS (idProveedor, tipoProducto)
VALUES (1, 'Whiskey');

INSERT INTO TIPO_PRODUCTOS (idProveedor, tipoProducto)
VALUES (2, 'Vodka');

INSERT INTO TIPO_PRODUCTOS (idProveedor, tipoProducto)
VALUES (3, 'Tequila');


-- PoblarNoOK

INSERT INTO EMPLEADOS (idEmpleado, nombre, cargo, telefono, correo, ciudad)
VALUES ('E004', 'Carlos Ruiz', 'X', 3200000004, 'carlos.ruiz@email.com', 'Barranquilla');

INSERT INTO DETALLE_DE_VENTAS (idDetalleVenta, idVenta, cantidad, precio, idProducto)
VALUES (4, 1, -5, 120000, 'P001');

INSERT INTO DETALLE_DE_VENTAS (idDetalleVenta, idVenta, cantidad, precio, idProducto)
VALUES (5, 2, 2, 0, 'P002');


-- xPoblar

DELETE FROM PROVEEDORES;
DELETE FROM PRECIOS;
DELETE FROM PRODUCTOS;
DELETE FROM TIPO_PRODUCTOS;
DELETE FROM ENVIOS;
DELETE FROM VENTAS;
DELETE FROM VALORACIONES;
DELETE FROM CLIENTES;
DELETE FROM DETALLE_DE_VENTAS;
DELETE FROM PEDIDOS;
DELETE FROM DETALLE_DE_PEDIDOS;
DELETE FROM EMPLEADOS;
DELETE FROM FACTURAS;
DELETE FROM FISICAS;
DELETE FROM ELECTRONICAS;




