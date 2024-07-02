# Base de datos

### ** 1. Descripción de la Base de Datos **

Temática:
La base de datos se diseñará para gestionar las operaciones de un pequeño comercio de venta de autos. Incluye la gestión de vehículos, clientes, ventas, proveedores, y personal de la tienda.

### ** 2. Diagramas de Entidad-Relación (DER) **

El DER representará las entidades principales: Clientes, Vehículos, Ventas, Proveedores, Empleados, y las relaciones entre ellas.


### ** 3. Listado de Tablas **

** Tabla: Clientes**
- Descripción: Gestiona la información de los clientes.
	- Campos:
	- ClienteID (INT) PK: Identificador único del cliente.
	- Nombre (VARCHAR): Nombre del cliente.
	- Apellido (VARCHAR): Apellido del cliente.
	- Email (VARCHAR): Dirección de correo electrónico del cliente.
	- Telefono (VARCHAR): Número de teléfono del cliente.

Tabla: Vehículos
- Descripción: Almacena los datos de los vehículos en venta.
	- Campos:
	- VehiculoID (INT) PK: Identificador único del vehículo.
	- Marca (VARCHAR): Marca del vehículo.
	- Modelo (VARCHAR): Modelo del vehículo.
	- Año (INT): Año de fabricación del vehículo.
	- Precio (DECIMAL): Precio del vehículo.
	- ProveedorID (INT) FK: Identificador del proveedor (relación con la tabla Proveedores).

Tabla: Proveedores
- Descripción: Contiene información sobre los proveedores de los vehículos.
	- Campos:
	- ProveedorID (INT) PK: Identificador único del proveedor.
	- Nombre (VARCHAR): Nombre del proveedor.
	- Direccion (VARCHAR): Dirección del proveedor.
	- Telefono (VARCHAR): Número de teléfono del proveedor.

Tabla: Empleados
- Descripción: Registra la información de los empleados de la tienda.
	- Campos:
	- EmpleadoID (INT) PK: Identificador único del empleado.
	- Nombre (VARCHAR): Nombre del empleado.
	- Apellido (VARCHAR): Apellido del empleado.
	- Cargo (VARCHAR): Cargo o puesto del empleado.

Tabla: Ventas
- Descripción: Detalla las ventas realizadas en la tienda.
	- Campos:
	- VentaID (INT) PK: Identificador único de la venta.
	- Fecha (DATE): Fecha de la venta.
	- VehiculoID (INT) FK: Identificador del vehículo vendido (relación con la tabla Vehículos).
	- ClienteID (INT) FK: Identificador del cliente que realiza la compra (relación con la tabla Clientes).
	- EmpleadoID (INT) FK: Identificador del empleado que gestionó la venta (relación con la tabla Empleados).
	- PrecioVenta (DECIMAL): Precio final de venta del vehículo.


