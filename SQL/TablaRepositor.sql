USE TFI
DROP TABLE IF EXISTS Repositor
CREATE TABLE Repositor (
	Legajo INT PRIMARY KEY,
	FOREIGN KEY (Legajo) REFERENCES Empleado(Legajo)
);