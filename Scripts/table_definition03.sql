DROP TABLE IF EXISTS VendingNEA.Visita
CREATE TABLE VendingNEA.Visita(
	IDvisita INT PRIMARY KEY IDENTITY(1,1),
	FechaHoraInicio DATETIME2 NOT NULL,
	FechaHoraFin DATETIME2 NOT NULL,
	Observaciones NVARCHAR(300),
	Legajo INT,
	IDruta INT,
	NroSerie INT,
	FOREIGN KEY (Legajo) REFERENCES VendingNEA.Repositor(Legajo),
	FOREIGN KEY (IDruta) REFERENCES VendingNEA.Ruta(IDruta),
	FOREIGN KEY (NroSerie) REFERENCES VendingNEA.MaquinaExpendedora(NroSerie),
);

DROP TABLE IF EXISTS VendingNEA.Falla
CREATE TABLE VendingNEA.Falla(
	IDfalla INT PRIMARY KEY IDENTITY(1,1),
	Descripcion NVARCHAR(300),
	TipoFalla NVARCHAR(30) NOT NULL,
	FechaReporte DATETIME2 NOT NULL,
	Estado NVARCHAR(30),
	Legajo INT,
	NroSerie INT,
	FOREIGN KEY (Legajo) REFERENCES VendingNEA.Empleado(Legajo),
	FOREIGN KEY (NroSerie) REFERENCES VendingNEA.MaquinaExpendedora(NroSerie)
);

DROP TABLE IF EXISTS VendingNEA.Mantenimiento
CREATE TABLE VendingNEA.Mantenimiento(
	IDmantenimiento INT PRIMARY KEY IDENTITY(1,1),
	Tipo NVARCHAR(20) NOT NULL,
	Fecha DATETIME2 NOT NULL,
	Descripcion NVARCHAR(300),
	Costo FLOAT,
	Legajo INT,
	NroSerie INT,
	FOREIGN KEY (Legajo) REFERENCES VendingNEA.Tecnico(Legajo),
	FOREIGN KEY (NroSerie) REFERENCES VendingNEA.MaquinaExpendedora(NroSerie)
);

DROP TABLE IF EXISTS VendingNEA.Venta
CREATE TABLE VendingNEA.Venta(
	NroOperacion INT PRIMARY KEY IDENTITY(1,1),
	FechaHora DATETIME2 NOT NULL,
	Cantidad INT NOT NULL,
	PrecioTotal FLOAT NOT NULL,
	MontoRecibido FLOAT NOT NULL,
	NroSerie INT,
	CodProducto INT,
	FOREIGN KEY (NroSerie) REFERENCES VendingNEA.MaquinaExpendedora(NroSerie),
	FOREIGN KEY (CodProducto) REFERENCES VendingNEA.Producto(CodProducto)
);

DROP TABLE IF EXISTS VendingNEA.Liquidacion
CREATE TABLE VendingNEA.Liquidacion(
	NroLiquidacion INT PRIMARY KEY IDENTITY(1,1),
	MontoTotal FLOAT NOT NULL,
	FechaEmision DATETIME2 NOT NULL,
	IDacuerdo INT,
	FOREIGN KEY (IDacuerdo) REFERENCES VendingNEA.Acuerdo(IDacuerdo)
);

DROP TABLE IF EXISTS VendingNEA.Pago
CREATE TABLE VendingNEA.Pago(
	IDpago INT PRIMARY KEY IDENTITY(1,1),
	FechaPago DATETIME2 NOT NULL,
	FormaPago NVARCHAR(20) NOT NULL,
	MontoAbonado FLOAT NOT NULL,
	NroLiquidacion INT,
	FOREIGN KEY (NroLiquidacion) REFERENCES VendingNEA.Liquidacion(NroLiquidacion)
);