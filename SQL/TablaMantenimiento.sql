USE TFI
CREATE TABLE MANTENIMIENTO (
    IDMantenimiento INT PRIMARY KEY,
    tipo NVARCHAR(50),
    fecha DATE,
    descripcion NVARCHAR(200),
    costo DECIMAL(10,2),
    legajo INT,
    nroSerie INT,
    FOREIGN KEY (legajo) REFERENCES TECNICO(legajo),
    FOREIGN KEY (nroSerie) REFERENCES MAQUINA(nroSerie)
);
