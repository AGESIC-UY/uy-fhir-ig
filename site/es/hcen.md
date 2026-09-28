# Introducción a HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Introducción a HCEN

Este bloque describe cómo un prestador registra pacientes, publica metadatos y comparte documentos clínicos mediante la **Historia Clínica Electrónica Nacional (HCEN)**. Reutiliza las representaciones de [Core Uruguay](introduccion.md) y agrega las obligaciones del intercambio.

### Alcance de esta versión

La primera versión HCEN abarca cuatro funciones obligatorias para el despliegue de un prestador: registrar y actualizar pacientes, publicar documentos, consultar metadatos y recuperar las representaciones FHIR y CDA. El alcance documental comprende altas; no incorpora reemplazo ni anulación como operaciones de esta etapa.

La guía continúa en borrador. Los perfiles expresan una primera propuesta computable; las transacciones distinguen las reglas adoptadas para este borrador de los contratos que deben cerrarse antes de una integración operativa. No se publican endpoints reales ni se acredita una implementación de Plataforma.

### Recorrido de implementación

1. Identificar las funciones del[prestador y de Plataforma](hcen-actores.md).
1. Seleccionar el[caso de uso](hcen-casos-de-uso.md)que se implementará.
1. Consultar su[transacción](hcen-transacciones.md), solicitud, respuesta y pendientes.
1. Completar los[perfiles HCEN](hcen-perfiles.md)con sus extensiones y terminología.
1. Revisar[conformidad y capacidades](hcen-conformidad.md)y los[ejemplos](hcen-ejemplos.md).

### Relación con IHE

Se toma como referencia **Mobile access to Health Documents (MHD), versión 4.2.3**, sobre FHIR R4, para publicación, consulta y recuperación; y **Patient Identifier Cross-referencing for mobile (PIXm), versión 3.1.0**, para alimentación de pacientes. IHE significa Integrating the Healthcare Enterprise.

HCEN define un contrato local. La reutilización de extensiones, identificadores y patrones de IHE no declara conformidad integral con sus perfiles. En particular, el sobre de publicación se basa en [UnContained Comprehensive Provide Document Bundle](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.html), pero incorpora recursos de contexto y exige simultáneamente ambas representaciones documentales. Las diferencias se explican en [Publicar documentos](hcen-iti-65.md).

