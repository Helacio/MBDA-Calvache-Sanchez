/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Tuplas

--Si el estado del envio = 'C' entonces empresaTransporte = null
ALTER TABLE ENVIOS
ADD CONSTRAINT CK_estado_transporte CHECK (NOT (estado = 'C' AND empresaTransporte IS NOT NULL));

-- Si el cliente tiene cedula entonces el numero debe empezar por '1'
ALTER TABLE CLIENTES
ADD CONSTRAINT CK_tipo_numero CHECK ((tipo <> 'CC') OR (numero LIKE '1%'));

-- Si el cliente es una empresa entonces la direcciOn no puede ser desconocida
ALTER TABLE CLIENTES
ADD CONSTRAINT CK_tipo_direccion CHECK (NOT (tipo = 'NIT' AND direccion IS NULL));