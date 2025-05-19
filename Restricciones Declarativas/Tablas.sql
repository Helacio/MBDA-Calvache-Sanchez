/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Tablas

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
    descripcion VARCHAR(100) NOT NULL,
    precioCompra INTEGER NOT NULL,
    precioVenta INTEGER NOT NULL,
    detalle_xml XMLTYPE
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
    empresaTransporte VARCHAR(12),
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
    ciudad VARCHAR(20),
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

