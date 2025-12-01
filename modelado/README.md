# 📂 Modelado de Datos (Diagrama ER)

Este directorio contiene la representación visual de la arquitectura de la base de datos `GestionClinica`. El diagrama ilustra cómo se relacionan las entidades para permitir el control de pacientes y la gestión financiera.

## 📐 Diagrama Entidad-Relación (EER)

Archivo DiagramaClinicaMedica.png

---
## 🧠 Lógica del Diseño

El modelo fue construido utilizando **Ingeniería Inversa** en MySQL Workbench y sigue los principios de normalización (3NF). A continuación se explican las decisiones de cardinalidad más importantes:

### 1. Relación Pacientes - Fichas Médicas (1:N)
* **Lógica:** Un paciente puede asistir a la clínica múltiples veces a lo largo del tiempo.
* **Implementación:** La tabla `Fichas_Medicas` contiene la Foreign Key (`paciente_id`) que referencia a un único paciente.

### 2. Relación Médicos - Fichas Médicas (1:N)
* **Lógica:** Un médico atiende muchas citas, pero cada cita específica (ficha) es atendida por un solo médico principal.
* **Implementación:** La FK `medico_id` reside en la tabla de hechos `Fichas_Medicas`.

### 3. Relación Fichas Médicas - Pagos (1:N) ⭐ *Punto Clave*
* **Lógica:** Se decidió **separar** la entidad de cobro (Ficha) de la entidad de pago (Pagos).
* **¿Por qué?**: Esto permite que una consulta costosa (ej: $50,000) pueda ser pagada en múltiples abonos (ej: dos pagos de $25,000) en diferentes fechas.
* **Beneficio:** Permite calcular la deuda real comparando el `costo_atencion` vs la suma de `monto_pagado`.

---

## 🛠️ Herramienta
Generado automáticamente mediante el motor de **Reverse Engineer** de MySQL Workbench 8.0.