USE TFI
CREATE TABLE PAGO (
    IDPago INT PRIMARY KEY,
    fechaPago DATE,
    formaPago NVARCHAR(50),
    montoAbonado DECIMAL(10,2),
    nroLiquidacion INT,
    FOREIGN KEY (nroLiquidacion) REFERENCES LIQUIDACION(nroLiquidacion)
);
