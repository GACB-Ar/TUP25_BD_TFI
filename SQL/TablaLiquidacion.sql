USE TFI
CREATE TABLE LIQUIDACION (
    nroLiquidacion INT PRIMARY KEY,
    montoTotal DECIMAL(10,2),
    fechaEmision DATE,
    IDAcuerdo INT,
    FOREIGN KEY (IDAcuerdo) REFERENCES ACUERDO(IDAcuerdo)
);
