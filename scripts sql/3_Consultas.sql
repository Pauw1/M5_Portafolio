SELECT fecha_atencion, diagnostico, tratamiento 
FROM Fichas_Medicas 
WHERE paciente_id = 1;

SELECT 
    p.nombre AS Paciente, 
    m.nombre AS Medico, 
    f.diagnostico, 
    f.fecha_atencion
FROM Fichas_Medicas f
JOIN Pacientes p ON f.paciente_id = p.paciente_id
JOIN Medicos m ON f.medico_id = m.medico_id;

SELECT 
    p.nombre,
    p.apellido,
    SUM(f.costo_atencion) AS Total_Cargos,
    IFNULL(SUM(pg.monto_pagado), 0) AS Total_Pagado,
    (SUM(f.costo_atencion) - IFNULL(SUM(pg.monto_pagado), 0)) AS Deuda_Pendiente
FROM Pacientes p
JOIN Fichas_Medicas f ON p.paciente_id = f.paciente_id
LEFT JOIN Pagos pg ON f.ficha_id = pg.ficha_id
GROUP BY p.paciente_id;