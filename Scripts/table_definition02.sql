DROP TABLE IF EXISTS VendingNEA.Ruta
CREATE TABLE VendingNEA.Ruta(
	IDruta INT PRIMARY KEY IDENTITY(1,1),
	Fecha DATETIME2,
	Legajo INT,
	Patente CHAR(50),
	FOREIGN KEY (Legajo) REFERENCES VendingNEA.Repositor(Legajo),
	FOREIGN KEY (Patente) REFERENCES VendingNEA.Vehiculo(Patente)
);

DROP TABLE IF EXISTS VendingNEA.MaquinaExpendedora
CREATE TABLE VendingNEA.MaquinaExpendedora(
	NroSerie INT PRIMARY KEY IDENTITY(1,1),
	Descripcion NVARCHAR(300),
	EstadoOperativo NVARCHAR(20),
	Ubicacion NVARCHAR(50),
	Marca NVARCHAR(30) NOT NULL,
	Modelo NVARCHAR(30) NOT NULL,
	CUIT INT,
	FOREIGN KEY (CUIT) REFERENCES VendingNEA.Establecimiento(CUIT)
);

DROP TABLE IF EXISTS VendingNEA.Compra
CREATE TABLE VendingNEA.Compra(
	IDcompra INT PRIMARY KEY IDENTITY(1,1),
	fecha DATETIME2,
	montoTotal FLOAT,
	CUIT INT,
	FOREIGN KEY (CUIT) REFERENCES VendingNEA.Proveedor(CUIT)
);

DROP TABLE IF EXISTS VendingNEA.Acuerdo
CREATE TABLE VendingNEA.Acuerdo( 
	IDacuerdo INT PRIMARY KEY IDENTITY(1,1),
	FechaInicio DATETIME2,
	FechaFin DATETIME2,
	TipoCondicion NVARCHAR(30),
	ValorCondicion FLOAT,
	CUIT INT,
	FOREIGN KEY (CUIT) REFERENCES VendingNEA.Establecimiento(CUIT)
);

DROP TABLE IF EXISTS VendingNEA.Responsable
CREATE TABLE VendingNEA.Responsable(
	IDresponsable INT PRIMARY KEY IDENTITY(1,1),
	Nombre NVARCHAR(50) NOT NULL,
	Apellido NVARCHAR(50) NOT NULL,
	Telefono NVARCHAR(20),
	CorreoElectronico NVARCHAR(100),
	CUIT INT,
	FOREIGN KEY (CUIT) REFERENCES VendingNEA.Establecimiento(CUIT)
);
