# 📂 Documentación Técnica de Scripts SQL

Esta carpeta contiene el código fuente necesario para construir, poblar y consultar la base de datos `GestionClinica`. Los scripts están numerados para asegurar una ejecución ordenada y libre de errores.

## 📝 Detalle de Archivos

### `1_CrearTablas.sql` (DDL)
**Propósito:** Define la estructura de la base de datos.
- Crea la base de datos `GestionClinica`.
- Define las tablas `Pacientes`, `Medicos`, `Fichas_Medicas` y `Pagos`.
- Establece las **Primary Keys (PK)** y **Foreign Keys (FK)** para asegurar la integridad referencial.

### `2_Datos.sql` (DML)
**Propósito:** Inserta datos de prueba ("dummy data") para validar el funcionamiento.
- Registra pacientes y médicos ficticios.
- Genera atenciones médicas con costos asociados.
- Simula pagos parciales para probar el cálculo de deudas.
- Incluye ejemplos de `UPDATE` (actualización de datos de contacto) y `DELETE` (corrección de errores).

### `3_Consultas.sql` (Consultas Estratégicas)
**Propósito:** Extraer información de valor para la toma de decisiones.
Incluye las siguientes operaciones:
1. **Historial Médico:** Uso de `JOIN` para ver paciente, médico y diagnóstico en una sola vista.
2. **Reporte de Deudas (Funcionalidad Core):** Consulta que agrupa por paciente y calcula el saldo pendiente.

#### 💡 Lógica del Cálculo de Deuda
El sistema utiliza la siguiente lógica en SQL para determinar si un paciente debe dinero:
```sql
(SUM(f.costo_atencion) - IFNULL(SUM(pg.monto_pagado), 0)) AS Deuda_Pendiente