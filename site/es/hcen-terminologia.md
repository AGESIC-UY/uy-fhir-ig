# Terminología HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Terminología HCEN

La terminología HCEN clasifica documentos, instituciones y formatos de intercambio. Estos conjuntos responden a requisitos específicos de HCEN.

### Clasificación de documentos

| | | |
| :--- | :--- | :--- |
| [Tipo genérico](ValueSet-vs-class-code.md) | `HCENDocumentReference.category` | Vinculación`extensible`; catálogo pendiente de revisión terminológica. |
| [Tipo detallado](ValueSet-vs-type-code.md) | `HCENDocumentReference.type` | Vinculación`extensible`; catálogo pendiente de revisión terminológica. |
| [Servicio médico](ValueSet-vs-practice-setting.md) | `HCENDocumentReference.context.practiceSetting` | Vinculación`extensible`; catálogo pendiente de revisión terminológica. |

Si el conjunto ofrece un concepto adecuado, debe utilizarse. Un código externo se admite cuando no existe un concepto adecuado; `extensible` no significa elegir libremente un código externo equivalente. Los contenidos definitivos y las versiones de estos catálogos siguen pendientes de revisión terminológica.

### Formato e identificación

| | | |
| :--- | :--- | :--- |
| [FormatCode](ValueSet-vs-format-code.md) | `DocumentReference.content.format` | Selección inicial IHE;`preferred`. El MIME es suficiente y no clasifica el CDA asociado. |
| [Serializaciones FHIR](ValueSet-hcen-fhir-serialization.md) | `content.attachment.contentType` | JSON y XML FHIR. |
| [OIDs de instituciones HCEN](ValueSet-vs-prestador-oid-mrn.md) | `HCENAAIdentifier.value` | Catálogo de OID institucionales; se valida la forma del valor. |

El rol y la especialidad profesional reutilizan [RolProfesional](ValueSet-vs-rol-profesional.md) y [EspecialidadMedica](ValueSet-vs-especialidad-medica.md). Las etiquetas de seguridad y los tipos de centro conservan las vinculaciones del perfil HCEN; esas etiquetas no definen por sí solas la política de autorización.

Las extensiones IHE `designationType`, `sourceId` e `intendedRecipient` se reutilizan desde MHD 4.2.3. No se introduce un CodeSystem local para códigos externos. Consultar [Extensiones HCEN](hcen-extensiones.md) e [Identificadores](hcen-identificadores.md).

### Terminología clínica de CNU

La Hoja de Consulta No Urgente utiliza los siguientes conjuntos específicos:

| | | |
| :--- | :--- | :--- |
| [Motivos de consulta](ValueSet-vs-motivo-consulta.md) | `HCENMotivoConsulta.code` | Provisional; contiene un código de ejemplo. |
| [Diagnósticos](ValueSet-vs-diagnostico-consulta.md) | `HCENDiagnostico.code` | Provisional; contiene un código de ejemplo. |
| [Tipos de procedimiento](ValueSet-vs-tipo-procedimiento.md) | `HCENProcedimiento.category` | Provisional; contiene un código de ejemplo. |
| [Procedimientos](ValueSet-vs-procedimientos.md) | `HCENProcedimiento.code` | Provisional; contiene un código de ejemplo. |
| [Resultados de procedimiento](ValueSet-vs-resultado-procedimiento.md) | `HCENProcedimiento.outcome` | Lista inicial de resultados SNOMED CT. |
| [Medicamentos](ValueSet-vs-medicamentos.md) | Medicación solicitada o administrada | Provisional; contiene un código de ejemplo. |
| [Sitios de administración](ValueSet-vs-sitio-administracion.md) | Sitio anatómico de la dosis | Provisional; contiene un código de ejemplo. |
| [Vías de administración](ValueSet-vs-via-administracion.md) | Vía de la dosis | Provisional; contiene un código de ejemplo. |
| [Solicitudes de procedimiento](ValueSet-vs-solicitud-procedimiento.md) | `HCENServiceRequest.code` | Provisional; contiene un código de ejemplo. |
| [Estados de CNU](ValueSet-vs-composition-status-cnu.md) | `Composition.status` | Subconjunto definido para CNU. |
| [Confidencialidad de CNU](ValueSet-vs-confidentiality-cnu.md) | `Composition.confidentiality` | Subconjunto definido para CNU. |

`HCENConsultaNoUrgente.type` utiliza [VSclassCode](ValueSet-vs-class-code.md) de HCEN. La URI del tesauro local mencionada en el material fuente continúa pendiente; por eso los perfiles permiten codificaciones adicionales, pero no crean un sistema local ficticio.

