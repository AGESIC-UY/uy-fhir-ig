# Transacciones - Guía de Implementación FHIR de Uruguay v0.1.0

## Transacciones

Las transacciones describen las reglas del intercambio entre el prestador y Plataforma. Los códigos ITI identifican la referencia técnica IHE; los requisitos locales y las capacidades pendientes se encuentran en las páginas HCEN enlazadas aquí.

| | | |
| :--- | :--- | :--- |
| [Registrar o actualizar pacientes](hcen-iti-104.md) | PIXm ITI-104 | Patient y actualización condicional por identificador |
| [Publicar documentos](hcen-iti-65.md) | MHD ITI-65 | Bundle de publicación con SubmissionSet, DocumentReference, Bundle documental y contexto |
| [Consultar metadatos](hcen-iti-67.md) | MHD ITI-67 | Búsqueda de DocumentReference y Bundle searchset |
| [Recuperar documentos](hcen-iti-68.md) | MHD ITI-68 | Solicitud de una representación y respuesta FHIR |

### Cómo se nombran las transacciones

Cada transacción se identifica por su nombre funcional y, cuando corresponde, por la referencia IHE. «Publicar documentos» utiliza MHD ITI-65 como referencia de diseño; esa referencia no declara conformidad integral con IHE. Las siglas se explican en el [Glosario HCEN](hcen-glosario.md).

### Cómo interpretar las solicitudes

Las rutas que contienen `[base]`, `[url-fhir]` o `[url-cda]` son plantillas. Los dominios `example.org` no son servicios HCEN. Las rutas concretas, los controles de acceso y las capacidades operativas deben acordarse con Salud Digital.

Las páginas separan requisitos del borrador, decisiones propuestas y pendientes. No acreditan que los servicios estén implementados o disponibles. Las obligaciones de datos se consultan en los perfiles; las de comportamiento se verifican en cada transacción y en [Conformidad](hcen-conformidad.md).

