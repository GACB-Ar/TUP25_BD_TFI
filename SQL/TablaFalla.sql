USE TFI
CREATE TABLE FALLA (
    IDFalla INT PRIMARY KEY,
    descripcion NVARCHAR(200),
    tipoFalla NVARCHAR(50),
    fechaReporte DATE,
    estado NVARCHAR(50),
    legajo INT,
    nroSerie INT,
    FOREIGN KEY (legajo) REFERENCES EMPLEADO(legajo),
    FOREIGN KEY (nroSerie) REFERENCES MAQUINA(nroSerie)
);