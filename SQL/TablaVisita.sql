USE TFI
CREATE TABLE VISITA (
    IDVisita INT PRIMARY KEY,
    fechaHoraInicio DATETIME2,
    fechaHoraFin DATETIME2,
    observaciones NVARCHAR(200),
    IDRuta INT,
    LegajoRepositor INT,
    nroSerie INT,
    FOREIGN KEY (IDRuta) REFERENCES RUTA(IDRuta),
    FOREIGN KEY (LegajoRepositor) REFERENCES REPOSITOR(legajo),
    FOREIGN KEY (nroSerie) REFERENCES MAQUINA(nroSerie)
);
