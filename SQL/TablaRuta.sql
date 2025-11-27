USE TFI
CREATE TABLE RUTA (
    IDRuta INT PRIMARY KEY,
    fecha DATE,
    legajo INT,
    patente CHAR(10),
    FOREIGN KEY (legajo) REFERENCES REPOSITOR(legajo),
    FOREIGN KEY (patente) REFERENCES VEHICULO(patente)
);
