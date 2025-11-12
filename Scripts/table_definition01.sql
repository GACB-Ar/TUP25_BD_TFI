-- Creacion de tabla supertipo de Empleados
DROP TABLE IF EXISTS VendingNEA.Empleado
CREATE TABLE VendingNEA.Empleado (
	Legajo INT PRIMARY KEY IDENTITY(1,1),
	Nombre NVARCHAR(50) NOT NULL,
	Apellido NVARCHAR(50) NOT NULL,
	DNI VARCHAR(10) NOT NULL UNIQUE,
	Telefono NVARCHAR(20),
	CorreoElectronico NVARCHAR(100),
	Puesto NVARCHAR(50),
	FechaIngreso DATETIME2
);

-- Creacion de tabla subtipo Tecnico
DROP TABLE IF EXISTS VendingNEA.Tecnico
CREATE TABLE VendingNEA.Tecnico (
	Legajo INT PRIMARY KEY,
	FOREIGN KEY (Legajo) REFERENCES VendingNEA.Empleado(Legajo)
);

-- Creacion de tabla subtipo Repositor
DROP TABLE IF EXISTS VendingNEA.Repositor
CREATE TABLE VendingNEA.Repositor (
	Legajo INT PRIMARY KEY,
	FOREIGN KEY (Legajo) REFERENCES VendingNEA.Empleado(Legajo)
);

DROP TABLE IF EXISTS VendingNEA.Vehiculo
CREATE TABLE VendingNEA.Vehiculo (
	Patente CHAR(50) PRIMARY KEY,
	Modelo NVARCHAR(50) NOT NULL,
	Capacidad CHAR(20) NOT NULL,
	Estado VARCHAR(10) NOT NULL,
	FechaUltimoMantenimiento DATETIME2
);

DROP TABLE IF EXISTS VendingNEA.Proveedor
CREATE TABLE VendingNEA.Proveedor (
	CUIT INT PRIMARY KEY,
	Nombre NVARCHAR(50) NOT NULL,
	Apellido NVARCHAR(50) NOT NULL,
	Telefono NVARCHAR(20),
	CorreoElectronico NVARCHAR(100),
	Calle NVARCHAR(50),
	Altura INT,
	CodPostal INT
);

DROP TABLE IF EXISTS VendingNEA.Producto
CREATE TABLE VendingNEA.Producto (
	CodProducto INT PRIMARY KEY,
	Nombre NVARCHAR(50) NOT NULL,
	Categoria NVARCHAR(30),
	PrecioVenta FLOAT,
	FechaVencimiento DATETIME2
); 

DROP TABLE IF EXISTS VendingNEA.Establecimiento
CREATE TABLE VendingNEA.Establecimiento (
	CUIT INT PRIMARY KEY,
	NombreComercial NVARCHAR(50) NOT NULL,
	TipoLugar NVARCHAR(30),
	Calle NVARCHAR(50),
	Altura INT,
	CodPostal INT,
	Descripcion NVARCHAR(400)
); 