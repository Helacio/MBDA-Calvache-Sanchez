/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- XSeguridad

-- Administrador
REVOKE EXECUTE
ON PKG_ADMINISTRADOR
FROM Administrador;

-- Vendedor
REVOKE EXECUTE
ON PKG_VENDEDOR
FROM Vendedor;

-- Almacenista
REVOKE EXECUTE
ON PKG_ALMACENISTA
FROM Almacenista;

-- Cliente
REVOKE EXECUTE
ON PKG_CLIENTE
FROM Cliente;

-- Analista de Negocio
REVOKE EXECUTE
ON PKG_ANALISTA_NEGOCIOS
FROM Analista_de_negocios;
