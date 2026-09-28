# Transacciones - Guía de Implementación FHIR de Uruguay v0.1.0

## Transacciones

Las transacciones describen el contrato entre el prestador y Plataforma. Los códigos ITI identifican la referencia técnica IHE; los requisitos locales se encuentran en las páginas HCEN enlazadas aquí.

| | | | |
| :--- | :--- | :--- | :--- |
| [Registrar o actualizar pacientes](hcen-iti-104.md) | HCEN-TX-104 | PIXm ITI-104 | Patient y actualización condicional por identificador |
| [Publicar documentos](hcen-iti-65.md) | HCEN-TX-65 | MHD ITI-65 | Sobre con SubmissionSet, DocumentReference, Bundle documental y Binary |
| [Consultar metadatos](hcen-iti-67.md) | HCEN-TX-67 | MHD ITI-67 | Búsqueda de DocumentReference y Bundle searchset |
| [Recuperar documentos](hcen-iti-68.md) | HCEN-TX-68 | MHD ITI-68 | Solicitud de una representación y respuesta FHIR |

### Cómo interpretar las solicitudes

Las rutas que contienen `[base]`, `[url-fhir]` o `[url-cda]` son plantillas. Los dominios `example.org` de los ejemplos no son servicios HCEN. Las rutas concretas, los controles de acceso y las capacidades operativas deben acordarse con Salud Digital.

Las páginas separan requisitos del borrador, decisiones propuestas y pendientes. Un ejemplo de OperationOutcome no fija por sí mismo el estado HTTP ni un catálogo definitivo de errores. Las obligaciones de datos se consultan en los perfiles; las de comportamiento se verifican en cada transacción y en [Conformidad](hcen-conformidad.md).

