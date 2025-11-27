USE TFI
UPDATE MAQUINA
SET estadoOperativo = 'En mantenimiento',
    ubicacion = 'Depósito'
WHERE nroSerie = 5001;
