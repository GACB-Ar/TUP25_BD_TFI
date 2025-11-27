USE TFI
CREATE TABLE MAQUINA (
    nroSerie INT PRIMARY KEY,
    descripcion NVARCHAR(100),
    estadoOperativo NVARCHAR(50),
    ubicacion NVARCHAR(100),
    marca NVARCHAR(50),
    modelo NVARCHAR(50),
    CUIT CHAR(11),
    FOREIGN KEY (CUIT) REFERENCES ESTABLECIMIENTO(CUIT)
);
