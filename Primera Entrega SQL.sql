
DROP DATABASE IF EXISTS proyecto_autos ;

CREATE DATABASE proyecto_autos;

USE proyecto_autos;


-- Tabla Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);

-- Tabla Proveedores
CREATE TABLE Proveedores (
    ProveedorID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Direccion VARCHAR(200),
    Telefono VARCHAR(20)
);

-- Tabla Vehículos
CREATE TABLE Vehiculos (
    VehiculoID INT PRIMARY KEY AUTO_INCREMENT,
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Anho INT,
    Precio DECIMAL(10, 2),
    ProveedorID INT,
    FOREIGN KEY (ProveedorID) REFERENCES Proveedores(ProveedorID)
);

-- Tabla Empleados
CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Cargo VARCHAR(50)
);

-- Tabla Ventas
CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE,
    VehiculoID INT,
    ClienteID INT,
    EmpleadoID INT,
    PrecioVenta DECIMAL(10, 2),
    FOREIGN KEY (VehiculoID) REFERENCES Vehiculos(VehiculoID),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
);
