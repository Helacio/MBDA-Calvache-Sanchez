/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- Roles

CREATE ROLE Administrador;
CREATE ROLE Vendedor;
CREATE ROLE Almacenista;
CREATE ROLE cliente;
CREATE ROLE Analista_de_negocios;


-- Permisos

-- Administrador
GRANT EXECUTE
ON PKG_ADMINISTRADOR
TO Administrador;

-- Vendedor
GRANT EXECUTE
ON PKG_VENDEDOR
TO Vendedor;

-- Almacenista
GRANT EXECUTE
ON PKG_ALMACENISTA
TO Almacenista;

-- Cliente
GRANT EXECUTE
ON PKG_CLIENTE
TO Cliente;

-- Analista de Negocio
GRANT EXECUTE
ON PKG_ANALISTA_NEGOCIOS
TO Analista_de_negocios;

