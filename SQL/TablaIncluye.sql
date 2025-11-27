USE TFI
CREATE TABLE INCLUYE (
    codProducto INT,
    IDCompra INT,
    cantidad INT,
    precioUnitario DECIMAL(10,2),
    PRIMARY KEY (codProducto, IDCompra),
    FOREIGN KEY (codProducto) REFERENCES PRODUCTO(codProducto),
    FOREIGN KEY (IDCompra) REFERENCES COMPRA(IDCompra)
);