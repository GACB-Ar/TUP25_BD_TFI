USE TFI
CREATE TABLE ACUERDO (
    IDAcuerdo INT PRIMARY KEY,
    fechaInicio DATE,
    fechaFin DATE,
    tipoCondicion NVARCHAR(50),
    valorCondicion DECIMAL(10,2),
    condiciones NVARCHAR(200),
    CUIT CHAR(11),
    FOREIGN KEY (CUIT) REFERENCES ESTABLECIMIENTO(CUIT)
);
