USE TFI
CREATE TABLE ESTABLECIMIENTO (
    CUIT CHAR(11) PRIMARY KEY,
    nombreComercial NVARCHAR(100),
    tipoLugar NVARCHAR(50),
    calle NVARCHAR(100),
    altura NVARCHAR(10),
    codPostal NVARCHAR(10),
    descripcion NVARCHAR(100)
);