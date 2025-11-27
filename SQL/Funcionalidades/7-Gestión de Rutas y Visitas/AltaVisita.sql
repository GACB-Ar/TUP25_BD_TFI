USE TFI
INSERT INTO VISITA
(IDVisita, fechaHoraInicio, fechaHoraFin, observaciones, IDRuta, LegajoRepositor, nroSerie)
VALUES
(6001, GETDATE(), DATEADD(MINUTE, 15, GETDATE()), 'Sin novedades', 5001, 101, 5001);
