USE TFI
SELECT
    YEAR(fechaHora) AS Año,
    MONTH(fechaHora) AS Mes,
    SUM(precioTotal) AS Total
FROM VENTA
GROUP BY YEAR(fechaHora), MONTH(fechaHora)
ORDER BY Año, Mes;
