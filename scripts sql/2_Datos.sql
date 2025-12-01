-- Insertar Pacientes
INSERT INTO Pacientes (rut, nombre, apellido, fecha_nacimiento, email) VALUES 
('11.111.111-1', 'Juan', 'Pérez', '1985-05-10', 'juan@email.com'),
('22.222.222-2', 'Maria', 'Gomez', '1990-08-20', 'maria@email.com');

-- Insertar Médicos
INSERT INTO Medicos (nombre, especialidad) VALUES 
('Dr. House', 'Diagnóstico'),
('Dra. Grey', 'Cirugía');

-- Insertar una Ficha (Juan se atiende con Dr. House, costo 50.000)
INSERT INTO Fichas_Medicas (paciente_id, medico_id, fecha_atencion, diagnostico, costo_atencion) VALUES 
(1, 1, '2023-10-01', 'Gripe severa', 50000);

-- Insertar un Pago (Juan paga solo 20.000 de los 50.000)
INSERT INTO Pagos (ficha_id, monto_pagado, metodo_pago) VALUES 
(1, 20000, 'Efectivo');