USE TFI
CREATE TABLE VENTA (
    nroOperacion INT PRIMARY KEY,
    fechaHora DATETIME2,
    cantidad INT,
    precioTotal DECIMAL(10,2),
    montoRecibido DECIMAL(10,2),
    nroSerie INT,
    codProducto INT,
    FOREIGN KEY (nroSerie) REFERENCES MAQUINA(nroSerie),
    FOREIGN KEY (codProducto) REFERENCES PRODUCTO(codProducto)
);
