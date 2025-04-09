/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- TABLAS

CREATE TABLE PROVEEDORES (
    idProveedor INTEGER NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(50) NOT NULL
);

CREATE TABLE TipoProductos (
    idProveedor INTEGER NOT NULL,
    tipoProducto VARCHAR(30) NOT NULL
);

CREATE TABLE PRODUCTOS (
    idProducto VARCHAR(5) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE PRECIOS (
    idProveedor INTEGER NOT NULL,
    idProducto VARCHAR(5) NOT NULL,
    precio INTEGER NOT NULL
);

CREATE TABLE DetalleDePedidos (
    idDetalle INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    precio INTEGER NOT NULL,
    idPedido INTEGER NOT NULL,
    idProducto VARCHAR(5) NOT NULL
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
    idCliente INTEGER NOT NULL,
    idEmpleado INTEGER NOT NULL,
    idFactura INTEGER NOT NULL,
    idEnvio INTEGER
);

CREATE TABLE DetalleDeVentas (
    idDetalleVenta INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    precio INTEGER NOT NULL,
    idProducto VARCHAR(5) NOT NULL,
    idVenta INTEGER NOT NULL
);

CREATE TABLE PEDIDOS (
    idPedido INTEGER NOT NULL,
    fecha DATE NOT NULL,
    estado CHAR(1) NOT NULL,
    idProveedor INTEGER NOT NULL,
    idEmpleado INTEGER NOT NULL
);

CREATE TABLE CLIENTES (
    idCliente INTEGER NOT NULL,
    tipo VARCHAR(3) NOT NULL,
    numero INTEGER NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    direccion VARCHAR(50),
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    fechaNacimiento DATE NOT NULL
);

CREATE TABLE VALORACIONES (
    idValoracion INTEGER NOT NULL,
    calificacion INTEGER NOT NULL,
    comentario VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    idCliente INTEGER NOT NULL,
    idProducto VARCHAR(5) NOT NULL
);

CREATE TABLE EMPLEADOS (
    idEmpleado INTEGER NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    cargo VARCHAR(2) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    ciudad VARCHAR(10),
    idSede INTEGER NOT NULL
);

CREATE TABLE SEDES (
    idSede INTEGER NOT NULL,
    direccion VARCHAR(50) NOT NULL
);

CREATE TABLE FACTURAS (
    idFactura INTEGER NOT NULL,
    fecha DATE NOT NULL
);

CREATE TABLE FISICAS (
    telefono VARCHAR(10) NOT NULL,
    idFactura INTEGER NOT NULL
);

CREATE TABLE ELECTRONICAS (
    correo VARCHAR(50) NOT NULL,
    nombreEmpresa VARCHAR(20) NOT NULL,
    idFactura INTEGER NOT NULL
);


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
ADD CONSTRAINT CK_Tcorreo_proveedores CHECK (correo LIKE '%@%.%');

ALTER TABLE CLIENTES
ADD CONSTRAINT CK_Tcorreo_clientes CHECK (correo LIKE '%@%.%');

ALTER TABLE ELECTRONICAS
ADD CONSTRAINT CK_Tcorreo_electronicas CHECK (correo LIKE '%@%.%');

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

-- Tpositivo
ALTER TABLE DetalleDePedidos
ADD CONSTRAINT CK_Tpositivo_DetalleDePedidos CHECK (cantidad > 0);

ALTER TABLE CLIENTES
ADD CONSTRAINT CK_Tpositivo_clientes CHECK (numero > 0);

-- Ttransporte
ALTER TABLE ENVIOS
ADD CONSTRAINT CK_Ttransporte CHECK (empresaTransporte IN ('Envia', 'Deprisa', 'Servientrega'));


-- Primarias

ALTER TABLE TipoProductos
ADD CONSTRAINT PK_TipoProductos PRIMARY KEY (idProveedor, tipoProducto);

ALTER TABLE PROVEEDORES
ADD CONSTRAINT PK_proveedores PRIMARY KEY (idProveedor);

ALTER TABLE PRECIOS
ADD CONSTRAINT PK_precios PRIMARY KEY (idProveedor, idProducto);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT PK_productos PRIMARY KEY (idProducto);

ALTER TABLE DetalleDeVentas
ADD CONSTRAINT PK_DetalleDeVentas PRIMARY KEY (idDetalleVenta, idVenta);

ALTER TABLE DetalleDePedidos
ADD CONSTRAINT PK_DetalleDePedidos PRIMARY KEY (idDetalle, idPedido);

ALTER TABLE PEDIDOS
ADD CONSTRAINT PK_pedidos PRIMARY KEY (idPedido);

ALTER TABLE VALORACIONES
ADD CONSTRAINT PK_valoraciones PRIMARY KEY (idValoracion);

ALTER TABLE CLIENTES
ADD CONSTRAINT PK_clientes PRIMARY KEY (idCliente);

ALTER TABLE EMPLEADOS
ADD CONSTRAINT PK_empleados PRIMARY KEY (idEmpleado);

ALTER TABLE SEDES
ADD CONSTRAINT PK_sedes PRIMARY KEY (idSede);

ALTER TABLE ENVIOS
ADD CONSTRAINT PK_envios PRIMARY KEY (idEnvio);

ALTER TABLE VENTAS
ADD CONSTRAINT PK_ventas PRIMARY KEY (idVenta);

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
ADD CONSTRAINT UK_clientes UNIQUE (numero, correo);


-- Foraneas

ALTER TABLE TipoProductos
ADD CONSTRAINT FK_TipoProductos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor);

ALTER TABLE PRECIOS
ADD CONSTRAINT FK_precios_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor);

ALTER TABLE PRECIOS
ADD CONSTRAINT FK_precios_productos FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto);

ALTER TABLE DetalleDeVentas
ADD CONSTRAINT FK_DetalleDeVentas_productos FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto);

ALTER TABLE DetalleDeVentas
ADD CONSTRAINT FK_DetalleDeVentas_ventas2 FOREIGN KEY (idVenta) REFERENCES VENTAS(idVenta);

ALTER TABLE DetalleDePedidos
ADD CONSTRAINT FK_DetalleDePedidos_pedidos FOREIGN KEY (idPedido) REFERENCES PEDIDOS(idPedido);

ALTER TABLE DetalleDePedidos
ADD CONSTRAINT FK_DetalleDePedidos_productos FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto);

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_pedidos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor);

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_pedidos_empleados FOREIGN KEY (idEmpleado) REFERENCES EMPLEADOS(idEmpleado);

ALTER TABLE VALORACIONES
ADD CONSTRAINT FK_valoraciones_clientes FOREIGN KEY (idCliente) REFERENCES CLIENTES(idCliente);

ALTER TABLE VALORACIONES
ADD CONSTRAINT FK_valoraciones_productos FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto);

ALTER TABLE EMPLEADOS
ADD CONSTRAINT FK_empleados_sedes FOREIGN KEY (idSede) REFERENCES SEDES(idSede);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_clientes FOREIGN KEY (idCliente) REFERENCES CLIENTES(idCliente);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_empleados FOREIGN KEY (idEmpleado) REFERENCES EMPLEADOS(idEmpleado);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura);

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_envios FOREIGN KEY (idEnvio) REFERENCES ENVIOS(idEnvio);

ALTER TABLE ELECTRONICAS
ADD CONSTRAINT FK_electronicas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura);

ALTER TABLE FISICAS
ADD CONSTRAINT FK_fisicas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura);


-- xTablas

DROP TABLE PRECIOS;
DROP TABLE VALORACIONES;
DROP TABLE FISICAS;
DROP TABLE ELECTRONICAS;
DROP TABLE DetalleDeVentas;
DROP TABLE DetalleDePedidos;
DROP TABLE PEDIDOS;
DROP TABLE TipoProductos;
DROP TABLE PROVEEDORES;
DROP TABLE VENTAS;
DROP TABLE PRODUCTOS;
DROP TABLE CLIENTES;
DROP TABLE EMPLEADOS;
DROP TABLE SEDES;
DROP TABLE ENVIOS;
DROP TABLE FACTURAS;


-- Consultas




-- PoblarOK

-- FACTURAS
INSERT INTO FACTURAS VALUES (1, TO_DATE('2024-03-01', 'YYYY-MM-DD'));

-- ENVIOS
INSERT INTO ENVIOS VALUES (1, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 'Deprisa', 100000, 'P', 'Calle 1 #7-39');

-- SEDES
INSERT INTO SEDES VALUES (1, 'Calle 142 #9-19');

-- EMPLEADOS
INSERT INTO EMPLEADOS VALUES (10000, 'Felipe Calvache', 'A', '3233919833', 'felipecalvache@gmail.com', 'Bogot�', 1);

-- CLIENTES
INSERT INTO CLIENTES VALUES (1, 'CE', '1001064920', 'Hernan Sanchez', NULL, '322778998', 'hernansanchez@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));

-- PRODUCTOS
INSERT INTO PRODUCTOS VALUES ('UAC22', 'Aguardiente Antioque�o en botella');

-- VENTAS
INSERT INTO VENTAS VALUES (1, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 1, 10000, 1, 1);

-- PROVEEDORES
INSERT INTO PROVEEDORES VALUES (1, 'Industria de Licores', 'calle 100 #56-32', '52670152', 'industriaslicores@gmail.com');

-- TipoProductos
INSERT INTO TipoProductos VALUES (1, 'UAC22');

-- PEDIDOS
INSERT INTO PEDIDOS VALUES (1, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'E', 1, 10000);

-- DetalleDePedidos
INSERT INTO DetalleDePedidos VALUES (1, 50, 124000, 1, 'UAC22');

-- DetalleDeVentas
INSERT INTO DetalleDeVentas VALUES (1, 22, 88000, 'UAC22', 1);

-- ELECTRONICAS
INSERT INTO ELECTRONICAS VALUES ('asic@gmail.com', 'ASIC Limitada', 1);

-- FISICAS
INSERT INTO FISICAS VALUES ('3145559837', 1);

-- VALORACIONES
INSERT INTO VALORACIONES VALUES (1, 7, 'Muy bueno todo pero podr�a mejorar', TO_DATE('2024-01-02', 'YYYY-MM-DD'), 1, 'UAC22');

-- PRECIOS
INSERT INTO PRECIOS VALUES (1, 'UAC22', 90000);


-- PoblarNoOK

/*  Al intentar insertar al mismo cliente no nos deja porque ya existe
    PK_clientes */
INSERT INTO CLIENTES VALUES (1, 'CE', '1001064920', 'Hernan Sanchez', NULL, '322778998', 'hernansanchez@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));

/*  Al intentar ingresar un empleado sin un nombre no no lo permitir�
    NULIDAD */
INSERT INTO EMPLEADOS VALUES (10000, NULL, 'A', '3233919833', 'felipecalvache@gmail.com', 'Bogot�', 1);

/*  Al ingresar un precio negativo no lo permite
    CK_Tmoneda_precios  */
INSERT INTO PRECIOS VALUES (1, 'UAC22', -800);

/*  Al ingresar un estado no definido nos lanza un error
    CK_Testado_pedidos */
INSERT INTO PEDIDOS VALUES (1, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'H', 1, 10000);

/* Un cliente no puede dar una calificacion mayor a 10
    CK_puntaje  */
INSERT INTO VALORACIONES VALUES (1, 100, 'EXCELENTEEE', TO_DATE('2024-01-02', 'YYYY-MM-DD'), 1, 'UAC22');


-- xPoblar

DELETE FROM PRECIOS;
DELETE FROM VALORACIONES;
DELETE FROM FISICAS;
DELETE FROM ELECTRONICAS;
DELETE FROM DetalleDeVentas;
DELETE FROM DetalleDePedidos;
DELETE FROM PEDIDOS;
DELETE FROM TipoProductos;
DELETE FROM PROVEEDORES;
DELETE FROM VENTAS;
DELETE FROM PRODUCTOS;
DELETE FROM CLIENTES;
DELETE FROM EMPLEADOS;
DELETE FROM SEDES;
DELETE FROM ENVIOS;
DELETE FROM FACTURAS;




