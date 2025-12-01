# 🏥 Sistema de Gestión de Pacientes y Finanzas Clínicas

## 📄 Descripción del Proyecto
Este repositorio contiene el desarrollo de una solución de base de datos relacional diseñada para optimizar la gestión de una clínica médica. El proyecto se centra en la integridad de los datos de los pacientes, el historial de atenciones médicas y, como funcionalidad clave, el **control financiero y cálculo de deudas**.

El sistema permite rastrear no solo el diagnóstico y tratamiento, sino también el estado de cuenta de cada paciente, identificando saldos pendientes mediante lógica SQL.

## 🎯 Objetivos y Funcionalidades
El modelo de datos resuelve las siguientes necesidades de negocio:
- **Gestión de Fichas Clínicas:** Registro centralizado de atenciones, médicos tratantes y diagnósticos.
- **Historial Financiero:** Registro de costos por atención y pagos parciales o totales realizados por los pacientes.
- **Cálculo de Morosidad:** Algoritmos en SQL para determinar la deuda actual de un paciente (Costo Total - Pagos Realizados).
- **Integridad de Datos:** Uso de claves foráneas y restricciones para evitar inconsistencias.

## 🛠️ Tecnologías Utilizadas
- **Motor de Base de Datos:** MySQL 8.0
- **Modelado y Gestión:** MySQL Workbench
- **Lenguaje:** SQL (DDL para estructura, DML para manipulación).

## 📊 Modelo de Datos (Diagrama ER)
El diseño sigue las normas de normalización para bases de datos relacionales, estableciendo relaciones 1:N entre Pacientes, Fichas y Pagos.

![Diagrama Entidad Relación]
*(Nota: El diagrama completo se encuentra en la carpeta `modelado`)*

## 🚀 Instrucciones de Despliegue
Para replicar este proyecto en un entorno local:
1. Clone este repositorio.
2. Abra **MySQL Workbench**.
3. Ejecute los scripts ubicados en la carpeta `scripts_sql` en orden secuencial (del 01 al 03).

---
**Autor:** Paulina Rojas
**Curso:** Gestión de Bases de Datos Relacionales