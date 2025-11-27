USE TFI
CREATE TABLE EMPLEADO (
    legajo INT PRIMARY KEY,
    nombre NVARCHAR(50),
    apellido NVARCHAR(50),
    dni VARCHAR(8),
    telefono NVARCHAR(20),
    correoElectronico NVARCHAR(100),
    puesto NVARCHAR(50),
    fechaIngreso DATE
);