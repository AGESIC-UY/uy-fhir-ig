# Introducción al Core - Guía de Implementación FHIR de Uruguay v0.1.0

## Introducción al Core

**Core Uruguay** es la base nacional de representación de información de salud dentro de esta guía. Sus definiciones deben ser reutilizables en contextos que no dependan exclusivamente de HCEN.

### Recorrido del Core

1. Consultar[identificadores y datos comunes](identificadores.md).
1. Seleccionar los[perfiles nacionales](perfiles.md)aplicables.
1. Revisar sus[extensiones](extensiones.md)y[terminología](terminologia.md).
1. Consultar los[ejemplos](ejemplos.md).

### Relación con HCEN

HCEN reutilizará directamente los perfiles nacionales cuando sean suficientes. Si un intercambio necesita restricciones adicionales o marcas Must Support, estas se definirán en un perfil HCEN derivado del Core.

Los perfiles Core no utilizarán Must Support. Esta decisión no elimina las cardinalidades ni las demás restricciones nacionales.

El [catálogo inicial de perfiles](perfiles.md) ya está disponible como borrador, junto con sus tipos comunes, extensiones, terminología y ejemplos.

