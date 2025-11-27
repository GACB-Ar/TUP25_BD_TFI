USE TFI
CREATE TABLE VEHICULO (
    patente CHAR(10) PRIMARY KEY,
    modelo NVARCHAR(50),
    capacidad INT,
    estado NVARCHAR(30),
    fechaUltimoMantenimiento DATE
);
