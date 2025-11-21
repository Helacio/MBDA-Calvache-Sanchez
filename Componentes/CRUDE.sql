/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- CRUDE

-- Paquete de Productos
CREATE OR REPLACE PACKAGE PKG_Productos IS
    PROCEDURE adicionarProducto(descripcion VARCHAR, precioCompra INTEGER, precioVenta INTEGER);
    PROCEDURE modificarProducto(XidProducto VARCHAR, XprecioCompra INTEGER , XprecioVenta INTEGER);
    FUNCTION consultarProductos RETURN SYS_REFCURSOR;
    FUNCTION consultarProductosMasVendidos RETURN SYS_REFCURSOR;
END PKG_Productos;
/

-- Paquete de ventas
CREATE OR REPLACE PACKAGE PKG_Ventas IS
    PROCEDURE adicionarVenta(fecha DATE, idCliente INTEGER, idEmpleado INTEGER, idFactura INTEGER, idEnvio INTEGER);
    PROCEDURE adicionarDetalleVenta(idProducto VARCHAR, cantidad INTEGER,precio INTEGER, idVenta INTEGER);
    PROCEDURE adicionarFactura(fecha DATE);
    PROCEDURE adicionarFacturaElectronica(correo VARCHAR, nombreEmpresa VARCHAR, idFactura INTEGER);
    PROCEDURE adicionarFacturaFisica(telefono VARCHAR, idFactura INTEGER);
    PROCEDURE adicionarEnvio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR);
    PROCEDURE modificarDetalleVenta(XidDetalle INTEGER, XidProducto VARCHAR, Xcantidad INTEGER, Xprecio INTEGER, XidVenta INTEGER);
    PROCEDURE modificarEnvio(XidEnvio INTEGER,xEstado CHAR);
    PROCEDURE eliminarDetalleVenta(XidDetalle INTEGER);
    PROCEDURE eliminarEnvio(XidEnvio INTEGER);
    FUNCTION consultarVenta(XidVenta INTEGER) RETURN SYS_REFCURSOR;
    FUNCTION consultarDetalleVenta(XidDetalle INTEGER) RETURN SYS_REFCURSOR;
    FUNCTION consultarFactura(XidFactura INTEGER)RETURN SYS_REFCURSOR;
    FUNCTION consultarVentasMes RETURN SYS_REFCURSOR;
    FUNCTION consultarEnvio(XidEnvio INTEGER) RETURN SYS_REFCURSOR;
END PKG_Ventas;
/

--Paquete de Pedidos
CREATE OR REPLACE PACKAGE PKG_Pedidos IS
    PROCEDURE adicionarPedido(fecha DATE, idProveedor INTEGER, idEmpleado INTEGER);
    PROCEDURE adicionarDetallePedido(cantidad INTEGER, precio INTEGER, idPedido INTEGER, idProducto VARCHAR);
    PROCEDURE modificarPedido(XidPedido INTEGER, estado CHAR);
    PROCEDURE modificarDetallePedido(xidDetalle INTEGER, XidProducto VARCHAR, Xcantidad INTEGER, Xprecio INTEGER);
    FUNCTION consultarPedido(XidPedido INTEGER) RETURN SYS_REFCURSOR;
    FUNCTION consultarDetallesPedidos(xidPedido INTEGER) RETURN SYS_REFCURSOR;
    FUNCTION consultarPedidosPendientesProveedor RETURN SYS_REFCURSOR;
END PKG_Pedidos;
/

-- Paquete de Proveedores
CREATE OR REPLACE PACKAGE PKG_Proveedores IS
    PROCEDURE adicionarProveedor(nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR);
    PROCEDURE adicionarPrecios(idProveedor INTEGER, idProducto VARCHAR, precio INTEGER);
    PROCEDURE modificarProveedor(XidProveedor INTEGER, Xnombre VARCHAR, Xdireccion VARCHAR, Xtelefono VARCHAR, Xcorreo VARCHAR);
    PROCEDURE modificarPrecios(XidProveedor INTEGER, XidProducto VARCHAR, Xprecio INTEGER);
    FUNCTION consultarPrecioProducto(XidProducto VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION consultarProveedores RETURN SYS_REFCURSOR;
    FUNCTION consultarMejorProveedorProducto(XidProducto VARCHAR) RETURN SYS_REFCURSOR;
END PKG_Proveedores;
/


-- Paquete de Clientes
CREATE OR REPLACE PACKAGE PKG_Clientes IS
    PROCEDURE adicionarCliente(tipo VARCHAR, numero INTEGER, nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR,fechaNacimiento DATE);
    PROCEDURE adicionarValoracion(calificacion INTEGER, comentario VARCHAR, fecha DATE, idCliente INTEGER, idProducto VARCHAR);
    PROCEDURE modificarCliente(Xcedula INTEGER, Xtipo VARCHAR, Xtelefono VARCHAR, Xdireccion VARCHAR, Xcorreo VARCHAR);
    FUNCTION ConsultarValoracionesBajas RETURN SYS_REFCURSOR;
    FUNCTION consultarCliente(Xnumero INTEGER) RETURN SYS_REFCURSOR;
END PKG_Clientes;
/

-- Paquete de Empleados
CREATE OR REPLACE PACKAGE PKG_Empleados IS
    PROCEDURE adicionarEmpleado(idEmpleado INTEGER, nombre VARCHAR, cargo VARCHAR, telefono VARCHAR, correo VARCHAR, ciudad VARCHAR, idSede INTEGER);
    PROCEDURE adicionarSede(direccion VARCHAR);
    PROCEDURE modificarEmpleado(XidEmpleado INTEGER, Xcargo VARCHAR, Xtelefono VARCHAR, Xcorreo VARCHAR, Xciudad VARCHAR, XidSede INTEGER);
    PROCEDURE modificarSede(XidSede INTEGER, Xdireccion VARCHAR);
    PROCEDURE eliminarEmpleado(XidEmpleado INTEGER);
    PROCEDURE eliminarSede(XidSede INTEGER);
    FUNCTION consultarEmpleados(XidSede VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION consultarSedes(XidSede INTEGER) RETURN SYS_REFCURSOR;
END PKG_Empleados;
/