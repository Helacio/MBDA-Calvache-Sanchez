/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Disparadores

-- Ventas
CREATE TRIGGER TG_Ventas
    BEFORE INSERT OR UPDATE
    ON VENTAS
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
/


-- Detalle de ventas
CREATE OR REPLACE TRIGGER TG_DetalleDeVentas
    BEFORE INSERT OR UPDATE
    ON DetalleDeVentas
    FOR EACH ROW
    DECLARE
        v_max_id INTEGER;
        v_precio_venta NUMBER;
        v_id_producto VARCHAR(5);
    BEGIN
        IF INSERTING THEN
            -- Generar ID para nuevo DetalleDeVentas
            SELECT NVL(MAX(idDetalleVenta), 0) INTO v_max_id
            FROM DetalleDeVentas;
            :NEW.idDetalleVenta := v_max_id + 1;

            -- Validar que el producto exista en PRODUCTOS
            BEGIN
                SELECT idProducto INTO v_id_producto
                FROM PRODUCTOS
                WHERE idProducto = :NEW.idProducto;
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    RAISE_APPLICATION_ERROR(-20003, 'El producto a insertar debe estar registrado en la tabla de Productos');
            END;
        END IF;

        -- Validar precio de venta
        IF INSERTING OR UPDATING THEN
            SELECT precioVenta INTO v_precio_venta
            FROM PRODUCTOS
            WHERE idProducto = :NEW.idProducto;
            IF :NEW.precio IS NULL OR :NEW.precio <> v_precio_venta THEN
                RAISE_APPLICATION_ERROR(-20002, 'El precio a insertar debe ser igual al precio de venta del producto');
            END IF;
        END IF;
END;
/


-- Productos
CREATE TRIGGER TG_In_Productos
    BEFORE INSERT OR DELETE
    ON PRODUCTOS
    FOR EACH ROW
DECLARE
    v_letras VARCHAR(3);
    v_numeros VARCHAR(2);
    v_precio_min_compra INTEGER;
BEGIN
    -- Generar ID para nuevas productos
    IF INSERTING THEN
        v_letras := DBMS_RANDOM.STRING('U', 3);
        v_numeros := LPAD(TRUNC(DBMS_RANDOM.VALUE(0, 100)), 2, '0');
        :New.idProducto := v_letras || v_numeros;
    END IF;

    -- Valida que al actualizar el nuevo precio de Venta sea mayor a su costo  
    IF UPDATING THEN
        IF :NEW.precioVenta < :OLD.precioCompra THEN
            RAISE_APPLICATION_ERROR(-20001, 'El precio de venta no puede ser menor al precio de compra');
        END IF;
    END IF;

    -- No se pueden eliminar los productos
    IF DELETING THEN
        RAISE_APPLICATION_ERROR(-200010, 'No se permiten eliminar productos');
    END IF;
END;
/


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
/


-- Envios
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
        RAISE_APPLICATION_ERROR(-20011, 'No se puede modificar un envío por seguridad');
    END IF;
END;
/


-- Clientes
CREATE TRIGGER TG_Clientes
    BEFORE INSERT OR UPDATE
    ON CLIENTES
    FOR EACH ROW
DECLARE
    max_id_clientes INTEGER;
    v_numero_cliente INTEGER;
BEGIN
    IF INSERTING THEN
        -- Generar ID automáticamente
        SELECT NVL(MAX(idCliente), 0) + 1 INTO max_id_clientes FROM CLIENTES;
        :NEW.idCliente := max_id_clientes;
    END IF;

    IF UPDATING THEN
        -- No permite cambiar numero de cedula
        SELECT numero INTO v_numero_cliente FROM CLIENTES WHERE numero = :NEW.numero;
        IF :NEW.numero <> :OLD.numero THEN
            RAISE_APPLICATION_ERROR(-20087, 'No se puede modificar cedula del cliente');
        END IF;
    END IF;
END;
/


-- Proveedores
CREATE TRIGGER TG_Proveedores
    BEFORE INSERT OR DELETE
    ON PROVEEDORES
    FOR EACH ROW
DECLARE
    max_id_proveedores INTEGER;
BEGIN
    IF INSERTING THEN
        -- Generar ID automáticamente
        SELECT NVL(MAX(idProveedor), 0) + 1 INTO max_id_proveedores FROM PROVEEDORES;
        :NEW.idProveedor := max_id_proveedores;
    END IF;

    IF DELETING THEN
        -- No se pueden eliminar los proveedores
        RAISE_APPLICATION_ERROR(-200010, 'No se permite eliminar los proveedores antiguos');
    END IF;
END;
/


-- Facturas
CREATE TRIGGER TG_Facturas
    BEFORE INSERT
    ON FACTURAS
    FOR EACH ROW
DECLARE
    max_id_facturas INTEGER;
BEGIN
    IF INSERTING THEN
        -- Generar ID automáticamente
        SELECT NVL(MAX(idFactura), 0) + 1 INTO max_id_facturas FROM FACTURAS;
        :NEW.idFactura := max_id_facturas;
    END IF;
END;

