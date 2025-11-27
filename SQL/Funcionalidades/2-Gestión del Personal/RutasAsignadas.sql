USE TFI
SELECT 
    'Ruta' AS Tipo,
    CAST(fecha AS DATETIME) AS Fecha,
    CAST(patente AS VARCHAR(20)) AS Info
FROM RUTA
WHERE legajo = 101

UNION ALL

SELECT
    'Visita',
    fechaHoraInicio,
    CAST(nroSerie AS VARCHAR(20))
FROM VISITA
WHERE LegajoRepositor = 101;
