# CODEBAR — Proyecto de Bases de Datos

Proyecto académico del curso MBDA (Manejo de Bases de Datos Avanzado). Implementa en **Oracle Database** el modelo relacional completo de una licorería: ventas, pedidos a proveedores, envíos, valoraciones, facturación física/electrónica, con restricciones declarativas y procedimentales, componentes PL/SQL, índices, vistas, DTD/XML y seguridad por roles.

**Autores:** Felipe Calvache — Hernán Sánchez

## Contenido

| Carpeta / Archivo | Descripción |
|---|---|
| `Definición Proyecto.docx` | Documento de definición del proyecto |
| `CODEBAR.asta`, `Codebar logico.png`, `CodebarEdit.draw` | Modelo entidad-relación (Astah) |
| `Restricciones Declarativas/` | Tablas, PKs, FKs, UNIQUE, CHECKs de atributo, datos de prueba y consultas |
| `Restricciones Procedimentales/` | CHECKs de tupla, disparadores (triggers), acciones referenciales (ON DELETE) y sus pruebas OK/NoOK |
| `Componentes/` | Paquetes PL/SQL CRUD (especificación `CRUDE.sql`, implementación `CRUDI.sql`) y sus pruebas |
| `Indices y Vistas/` | Índices, vistas y consultas de validación |
| `Seguridad/` | Paquetes por rol/actor, roles y concesión de permisos |
| `DTD/` | DTD y XML de ejemplo para el detalle de productos |

Los scripts con prefijo `x` (ej. `xTablas.sql`, `XCRUD.sql`, `XSeguridad.sql`) eliminan los objetos creados, para poder reiniciar el entorno.

## Requisitos

- Oracle Database 11g o superior (usa `XMLTYPE`, `REGEXP_LIKE`, `DBMS_RANDOM`, `SYS_REFCURSOR`).
- SQL*Plus o SQL Developer.
- Un usuario/schema con privilegios para: `CREATE TABLE`, `TRIGGER`, `VIEW`, `PACKAGE`, `ROLE`, `GRANT` y `DROP`.

## Orden de ejecución

Ejecutar todos los scripts **en el mismo usuario/schema** y en este orden. En SQL Developer: abrir el script y ejecutarlo como script (F5). En SQL*Plus: `SQL> @ruta\Tablas.sql`.

### 1. Esquema y restricciones declarativas
1. `Restricciones Declarativas\xTablas.sql` *(opcional, solo si se van a recrear las tablas)*
2. `Tablas.sql`
3. `Atributos.sql` — CHECKs de atributo
4. `Primarias.sql` — llaves primarias
5. `Foraneas.sql` — llaves foráneas
6. `Unicas.sql` — llaves únicas

### 2. Restricciones procedimentales
7. `Restricciones Procedimentales\Tuplas.sql` — CHECKs de tupla
8. `Disparadores.sql` — triggers (IDs automáticos, validaciones, facturas físicas/electrónicas disjuntas)

> Los triggers generan automáticamente los IDs solo cuando no se especifican, por lo que los scripts de datos y pruebas pueden ejecutarse después de ellos sin conflicto.

### 3. Datos de prueba
9. `Restricciones Declarativas\PoblarOK.sql` — carga 30 registros por tabla
10. `PoblarNoOK.sql` — **debe fallar**; demuestra el rechazo de datos inválidos (reporta un error por cada INSERT)

### 4. Pruebas de restricciones y triggers
11. `Restricciones Procedimentales\TuplasOK.sql` / `TuplasNoOK.sql` (el NoOK debe fallar)
12. `DisparadoresOK.sql` / `DisparadoresNoOK.sql` (el NoOK debe fallar)
13. `Acciones.sql` — reemplaza 4 FKs para probar `ON DELETE CASCADE`; luego `AccionesOK.sql`

> Los scripts **NoOK están diseñados para lanzar errores**: esa es la evidencia de que la restricción o el trigger funciona.

### 5. Consultas
14. `Restricciones Declarativas\Consultas.sql`

### 6. Índices y vistas
15. `Indices y Vistas\Indices.sql`
16. `Vistas.sql`
17. `IndicesVistasOK.sql`

### 7. Componentes (paquetes PL/SQL)
18. `Componentes\CRUDE.sql` — especificaciones de los paquetes
19. `CRUDI.sql` — implementaciones
20. `CRUD OK.sql` — pruebas de los procedimientos/funciones

### 8. Seguridad
21. `Seguridad\ActoresE.sql` — paquetes por actor (especificaciones)
22. `ActoresI.sql` — implementaciones
23. `Seguridad.sql` — roles y `GRANT EXECUTE`

### 9. Reinicio / limpieza
Ejecutar en orden: `XSeguridad.sql` → `XCRUD.sql` → `xIndicesVistas.sql` → `xPoblar.sql` → `xTablas.sql`.

## DTD / XML

`DTD\detalleProductos.xml` referencia `DTD\detalleProductos.dtd` y valida contra él (los elementos `marca` y `tipo` son opcionales). Los valores `XMLTYPE` de `PRODUCTOS.detalle_xml` en `PoblarOK.sql` siguen la misma estructura.

## Notas

- Las facturas son disjuntas: cada factura está en `FISICAS` **o** en `ELECTRONICAS`, nunca en ambas (los triggers `TG_FISICAS`/`TG_ELECTRONICAS` lo garantizan).
- No se pueden eliminar productos ni proveedores (triggers), ni modificar una venta ya registrada.
- Las pruebas OK asumen que los datos de `PoblarOK.sql` están cargados.
