# Propósito y alcance - Guía de Implementación FHIR de Uruguay v0.1.0

## Propósito y alcance

Esta sección explica qué cubre la guía y cómo encontrar la información necesaria para una implementación. Está dirigida tanto a quienes comienzan con FHIR como a quienes necesitan localizar una regla técnica concreta.

**Acceso directo:** [perfiles del Core](perfiles.md) · [transacciones HCEN](hcen-transacciones.md) · [índice de artefactos](artifacts.md).

### Qué cubre cada bloque

| | | |
| :--- | :--- | :--- |
| [Core Uruguay](introduccion.md) | ¿Cómo se representan datos de uso nacional? | Identificadores, datos comunes, perfiles, extensiones, terminología y ejemplos. |
| [HCEN](hcen.md) | ¿Cómo se utilizan esos datos en un intercambio con la plataforma? | Actores, casos de uso, transacciones, perfiles adicionales y capacidades de los sistemas. |

No es necesario empezar por el Core para interoperar con HCEN. Se puede saltar directamente a la Guía HCEN, y al

### Recorrido sugerido

1. Para conocer el vocabulario, comenzar por los[conceptos básicos de FHIR](conceptos-fhir.md).
1. Para interpretar una definición técnica, seguir[cómo leer los perfiles](como-leer.md)y las[convenciones de conformidad](conformidad.md).
1. Para representar información, identificar el[perfil nacional](perfiles.md)y consultar los[datos comunes](identificadores.md)que utiliza.
1. Para implementar un intercambio, continuar con el[caso de uso](hcen-casos-de-uso.md), la[transacción](hcen-transacciones.md)y las obligaciones HCEN correspondientes.

### Límites de esta versión

La guía utiliza **FHIR R4 (4.0.1)** y se publica como borrador. El Core contiene una primera base reutilizable. HCEN incluye perfiles y cuatro transacciones para pacientes y documentos, con contratos operativos, seguridad y criterios de acreditación aún por cerrar. Los materiales históricos son referencias de trabajo; solo forman parte de esta guía las decisiones incorporadas expresamente en sus páginas y artefactos.

