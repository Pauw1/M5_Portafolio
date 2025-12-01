-- Crear la base de datos
CREATE DATABASE GestionClinica;
USE GestionClinica;

-- 1. Tabla Pacientes
CREATE TABLE Pacientes (
    paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    rut VARCHAR(12) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- 2. Tabla Medicos
CREATE TABLE Medicos (
    medico_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50) NOT NULL
);

-- 3. Tabla Fichas Medicas (Registra la atención y el costo total)
CREATE TABLE Fichas_Medicas (
    ficha_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    medico_id INT,
    fecha_atencion DATE NOT NULL,
    diagnostico TEXT,
    tratamiento TEXT,
    costo_atencion DECIMAL(10, 2) NOT NULL, -- Cuánto costó la visita
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES Medicos(medico_id)
);

-- 4. Tabla Pagos (Registra abonos para calcular deuda)
CREATE TABLE Pagos (
    pago_id INT AUTO_INCREMENT PRIMARY KEY,
    ficha_id INT,
    fecha_pago DATE DEFAULT (CURRENT_DATE),
    monto_pagado DECIMAL(10, 2) NOT NULL,
    metodo_pago VARCHAR(20), -- Efectivo, Tarjeta, etc.
    FOREIGN KEY (ficha_id) REFERENCES Fichas_Medicas(ficha_id)
);