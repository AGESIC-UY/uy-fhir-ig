# Terminología del Core - Guía de Implementación FHIR de Uruguay v0.1.0

## Terminología del Core

El catálogo reúne los conjuntos de valores incorporados para datos geográficos, roles y especialidades. Los catálogos geográficos se basan en fuentes públicas de OSE y el Correo Uruguayo; los demás códigos y rótulos del material recibido quedan pendientes de validación terminológica.

### Catálogo inicial

| | |
| :--- | :--- |
| [Departamentos de Uruguay](ValueSet-vs-departamentos-uy.md) | Los 19 departamentos admitidos en Address.state. |
| [Localidades de Uruguay](ValueSet-vs-localidades-uy.md) | Localidades del catálogo público de OSE para Address.city. |
| [Barrios y localidades postales](ValueSet-vs-barrios-localidades-uy.md) | Valores publicados por el Correo Uruguayo para Address.district. |
| [Códigos postales de Uruguay](ValueSet-vs-codigos-postales-uy.md) | Códigos publicados por el Correo Uruguayo para Address.postalCode. |
| [Conjunto de Valores Especialidad Médica](ValueSet-vs-especialidad-medica.md) | Especialidades médicas válidas para PractitionerRole.specialty. |
| [Conjunto de Valores Rol del Profesional](ValueSet-vs-rol-profesional.md) | Referencias simples de roles y especialidades en salud (metadato fundacional) para PractitionerRole.code. |

Cada página presenta el propósito del artefacto y su definición técnica. Los artefactos se incorporan como base de trabajo en estado de borrador.

