/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- XForaneas

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

-- Si el cliente es una empresa entonces la direcci�n no puede ser desconocida
ALTER TABLE CLIENTES
ADD CONSTRAINT CK_tipo_direccion CHECK (NOT (tipo = 'NIT' AND direccion IS NULL));


-- Acciones

-- Si eliminamos ventas, tambi�n se deben eliminar los detalles de ventas asociados

ALTER TABLE DetalleDeVentas
ADD CONSTRAINT FK_DetalleDeVentas_ventas FOREIGN KEY (idDetalleVenta) REFERENCES VENTAS(idVenta) ON DELETE CASCADE;

-- Si eliminamos un pedido, tambi�n se deben eliminar los detalles de pedido asociados

ALTER TABLE DetalleDePedidos
ADD CONSTRAINT FK_DetalleDePedidos_pedidos FOREIGN KEY (idPedido) REFERENCES PEDIDOS(idPedido) ON DELETE CASCADE;

-- Si eliminamos un cliente queremos que su valoracion asociada quede desconocida

ALTER TABLE VALORACIONES
ADD CONSTRAINT FK_valoraciones_clientes FOREIGN KEY (idCliente) REFERENCES CLIENTES(idCliente) ON DELETE SET NULL;

-- Cuando actualicemos los datos de una factura su venta asociada tambi�n se cambie

ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_facturas FOREIGN KEY (idFactura) REFERENCES FACTURAS(idFactura) ON UPDATE CASCADE;

-- Si eliminamos a un proveedor tambi�n se tienen que eliminar los pedidos asociados

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_pedidos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor) ON DELETE CASCADE;


-- Disparadores

-- Detalle de ventas
CREATE TRIGGER TG_DetalleDeVentas
    BEFORE INSERT OR UPDATE OR DELETE
    ON DetalleDeVentas
    FOR EACH ROW
    DECLARE
        v_max_id INTEGER;
        v_precio_venta INTEGER;
        v_id_producto VARCHAR(5);
    BEGIN
        IF INSERTING THEN
        -- Generar ID para nuevo DetalleDeVentas
            SELECT MAX(idDetalleVenta) INTO v_max_id
            FROM DetalleDeVentas;
            :NEW.idDetalleVenta := v_max_id + 1;
        END IF;
        
    -- Validar precio
        SELECT (MIN(PRE.precio) * 1.1) INTO v_precio_venta
        FROM PRODUCTOS PRO
        JOIN PRECIOS PRE ON PRO.idProducto = PRE.idProducto
        WHERE PRO.idProducto = :NEW.idProducto;
        
        IF INSERTING AND :NEW.precio < v_precio_venta AND v_precio_venta IS NOT NULL THEN
            RAISE_APPLICATION_ERROR(-20002, 'El precio a insertar debe ser igual al precio de venta');
         END IF;
         
    -- El producto a agregar debe existir en PRODUCTOS
        IF INSERTING AND v_id_producto IS NULL THEN
            RAISE_APPLICATION_ERROR(-20003, 'El producto a insertar debe estar ya registrado en la tabla de Productos');
        END IF;
        
    -- No se permite eliminar detalle de venta
        IF DELETING THEN
            RAISE_APPLICATION_ERROR(-20004, 'No se permiten eliminar los detalles de venta');
        END IF;
END;

-- Productos
CREATE TRIGGER TG_In_Productos
    BEFORE INSERT OR UPDATE
    ON PRODUCTOS
    FOR EACH ROW
DECLARE
    v_letras VARCHAR(3);
    v_numeros VARCHAR(2);
    v_precio_min_compra INTEGER;
BEGIN
    -- Generar ID para nuevas productos
    IF INSERTING THEN
        DBMS_RANDOM.INITIALIZE(TRUNC(DBMS_RANDOM.VALUE(1,100000)));
        v_letras := DBMS_RANDOM.STRING('U', 3);
        v_numeros := LPAD(TRUNC(DBMS_RANDOM.VALUE(0, 100)), 2, '0');
        :New.idProducto := v_letras || v_numeros;
        DBMS_RANDOM.TERMINATE;
    END IF;
END;

-- Ventas
CREATE TRIGGER TG_Ventas
    BEFORE INSERT OR UPDATE
    ON Ventas
    FOR EACH ROW
DECLARE
    edad_meses INTEGER;
    max_id_venta INTEGER;
BEGIN
    -- Validar edad
    SELECT MONTHS_BETWEEN(SYSDATE, fechaNacimiento) INTO edad_meses
    FROM CLIENTES
    WHERE :NEW.idCliente = idCliente;
    IF edad_meses < 18 * 12 THEN
        RAISE_APPLICATION_ERROR(-20005, 'No se permite ventas a menores de edad');
    END IF;
    
    -- Agregar ID automaticamente
    IF INSERTING THEN
        SELECT NVL(MAX(idVenta), 0) + 1 INTO max_id_venta FROM VENTAS;
        :NEW.idVenta := max_id_venta;
    END IF;
    
    -- No se permite actualizar una venta
    IF UPDATING THEN
        RAISE_APPLICATION_ERROR(-20006, 'No se permite modificar ventas realizadas');
    END IF;
END;


-- Pedidos
CREATE TRIGGER TG_Pedidos
    BEFORE INSERT OR UPDATE
    ON PEDIDOS
    FOR EACH ROW
DECLARE
    max_id_pedido INTEGER;
    dias_pasados INTEGER;
BEGIN
    IF INSERTING THEN
        -- Generar ID automáticamente
        SELECT NVL(MAX(idPedido), 0) + 1 INTO max_id_pedido FROM PEDIDOS;
        :NEW.idPedido := max_id_pedido;
        
        -- Estado inicial 'P'
        :NEW.estado := 'P';
    ELSIF UPDATING THEN
        -- Calcular días pasados desde la fecha original
        SELECT TRUNC(SYSDATE - :OLD.fecha) INTO dias_pasados FROM DUAL;
        IF dias_pasados >= 8 THEN
            :NEW.estado := 'C';
        END IF;
    END IF;
END;

-- Envio

CREATE TRIGGER TG_Envios
    BEFORE INSERT OR UPDATE
    ON ENVIOS
    FOR EACH ROW
    DECLARE
        costo INTEGER;
        max_id_envio INTEGER;
BEGIN
    -- Validar que haya dirección
    IF INSERTING THEN
        IF :NEW.direccionEnvio IS NULL THEN
            RAISE_APPLICATION_ERROR(-20010, 'La dirección es obligatoria para el envío.');
        END IF;
        
        -- Agregar ID automaticamente
        SELECT NVL(MAX(idEnvio), 0) + 1 INTO max_id_envio FROM ENVIOS;
        :NEW.idEnvio := max_id_envio;

        -- Generar costo aleatorio entre 5000 y 13000
        costo := ROUND(DBMS_RANDOM.VALUE(5000, 13000));
        :NEW.costoEnvio := costo;
    END IF;

    -- Validar estados permitidos al actualizar
    IF UPDATING THEN
        IF :NEW.estado NOT IN ('P', 'D', 'E', 'C') THEN
            RAISE_APPLICATION_ERROR(-20011, 'Estado de envío no válido. Solo se permite: P, D, E o C.');
        END IF;
    END IF;
END;


-- XDisparadores

DROP TRIGGER TG_In_Productos;

DROP TRIGGER TG_DetalleDeVentas;

DROP TRIGGER TG_Ventas;

DROP TRIGGER TG_Pedidos;

DROP TRIGGER TG_Envios;


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

/* 3) Definimos que si el cliente es una empresa la direcci�n no puede ser NULA
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

-- 1) Se genera el ID de PRODUCTOS de manera automática
INSERT INTO PRODUCTOS VALUES (6, 'Bacardi Toronja 250 ml', 60000);

-- 2) El precio de venta es mayor al precio de compra
INSERT INTO DetalleDeVentas VALUES (3, 1, 27500, 'UAC22', 1);

-- 3) Ventas a mayores de edad
INSERT INTO VENTAS VALUES (5, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 3, 10000, 1, NULL);

-- 4) Insertar pedido estado por defecto = 'p'
INSERT INTO PEDIDOS VALUES (1, TO_DATE('2025-03-15', 'YYYY-MM-DD'), NULL, 2, 10001);

-- 5) Insertar envio se genera un costo aleatorio
INSERT INTO ENVIOS VALUES (1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'Envia', 0, 'P', 'Calle 13 #12-23');


-- DisparadoresNoOK

-- 1) Envio sin dirección
INSERT INTO ENVIOS (fechaEnvio, empresaTransporte, estado) VALUES (TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'Envia', 'P');

-- 2) Precio de venta mas bajo que el precio del proveedor
INSERT INTO DetalleDeVentas VALUES (3, 1, 5000, 'UAC22', 1);

-- 3) El producto a insertar debe existir en PRODUCTOS
INSERT INTO DetalleDeVentas VALUES (3, 1, 40000, 'XLR03', 1);

-- 4) Eliminar un detalle de venta
DELETE DetalleDeVentas WHERE idDetalleVenta = 1;
