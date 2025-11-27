USE TFI
CREATE TABLE PRODUCTO (
    codProducto INT PRIMARY KEY,
    nombre NVARCHAR(100),
    categoria NVARCHAR(50),
    precioVenta DECIMAL(10,2),
    fechaVencimiento DATE
);
