USE TFI
CREATE TABLE CONTIENE (
    nroSerie INT,
    codProducto INT,
    cantidadActual INT,
    cantidadRetirada INT,
    fechaUltimaReposicion DATE,
    PRIMARY KEY (nroSerie, codProducto),
    FOREIGN KEY (nroSerie) REFERENCES MAQUINA(nroSerie),
    FOREIGN KEY (codProducto) REFERENCES PRODUCTO(codProducto)
);
