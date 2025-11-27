USE TFI
CREATE TABLE PROVEEDOR (
    CUIT CHAR(11) PRIMARY KEY,
    nombre NVARCHAR(100),
    telefono NVARCHAR(20),
    correoElectronico NVARCHAR(100),
    calle NVARCHAR(100),
    altura NVARCHAR(10),
    codPostal NVARCHAR(10)
);
