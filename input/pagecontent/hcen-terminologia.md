La terminología HCEN clasifica documentos y formatos de intercambio. Estos conjuntos responden a requisitos específicos de HCEN.

### Clasificación de documentos

| Conjunto | Uso | Estado del contenido |
| --- | --- | --- |
| [Tipo genérico](ValueSet-vs-class-code.html) | `HCENDocumentReference.category` | Vinculación `extensible`; catálogo pendiente de revisión terminológica. |
| [Tipo detallado](ValueSet-vs-type-code.html) | `HCENDocumentReference.type` | Vinculación `extensible`; catálogo pendiente de revisión terminológica. |
| [Servicio médico](ValueSet-vs-practice-setting.html) | `HCENDocumentReference.context.practiceSetting` | Vinculación `extensible`; catálogo pendiente de revisión terminológica. |

Si el conjunto ofrece un concepto adecuado, debe utilizarse. Un código externo se admite cuando no existe un concepto adecuado; `extensible` no significa elegir libremente un código externo equivalente. Los contenidos definitivos y las versiones de estos catálogos siguen pendientes de revisión terminológica.

### Formatos de intercambio

| Conjunto | Uso | Estado del contenido |
| --- | --- | --- |
| [FormatCode](ValueSet-vs-format-code.html) | `DocumentReference.content.format` | Selección inicial IHE; `preferred`. El MIME es suficiente y no clasifica el CDA asociado. |
| [Serializaciones FHIR](ValueSet-hcen-fhir-serialization.html) | `content.attachment.contentType` | JSON y XML FHIR. |

El rol y la especialidad profesional reutilizan [RolProfesional](ValueSet-vs-rol-profesional.html) y [EspecialidadMedica](ValueSet-vs-especialidad-medica.html). Las etiquetas de seguridad y los tipos de centro conservan las vinculaciones del perfil HCEN; esas etiquetas no definen por sí solas la política de autorización.

Las extensiones IHE `designationType`, `sourceId` e `intendedRecipient` se reutilizan desde MHD 4.2.3. No se introduce un CodeSystem local para códigos externos. Consultar [Extensiones HCEN](hcen-extensiones.html) e [Identificadores](hcen-identificadores.html).

### Terminología clínica de CNU

La Hoja de Consulta No Urgente utiliza los siguientes conjuntos específicos:

| Conjunto | Uso | Estado del contenido |
| --- | --- | --- |
| [Motivos de consulta](ValueSet-vs-motivos-consulta.html) | `HCENMotivoConsulta.code` | Listado de códigos de prueba. |
| [Diagnósticos](ValueSet-vs-diagnostico-consulta.html) | `HCENDiagnostico.code` | Listado de códigos de prueba. |
| [Tipos de procedimiento](ValueSet-vs-tipo-procedimiento.html) | `HCENProcedimiento.category` | Provisional; contiene un código de ejemplo. |
| [Procedimientos](ValueSet-vs-procedimientos.html) | `HCENProcedimiento.code` | Listado de códigos de prueba. |
| [Resultados de procedimiento](ValueSet-vs-resultado-procedimiento.html) | `HCENProcedimiento.outcome` | Lista inicial de resultados SNOMED CT. |
| [Medicamentos](ValueSet-vs-medicamentos.html) | Medicación solicitada o administrada | Provisional; contiene un código de ejemplo. |
| [Sitios de administración](ValueSet-vs-sitio-administracion.html) | Sitio anatómico de la dosis | Provisional; contiene un código de ejemplo. |
| [Vías de administración](ValueSet-vs-via-administracion.html) | Vía de la dosis | Provisional; contiene un código de ejemplo. |
| [Solicitudes de procedimiento](ValueSet-vs-solicitud-procedimiento.html) | `HCENServiceRequest.code` | Provisional; contiene un código de ejemplo. |
| [Estados de CNU](ValueSet-vs-composition-status-cnu.html) | `Composition.status` | Subconjunto definido para CNU. |
| [Confidencialidad de CNU](ValueSet-vs-confidentiality-cnu.html) | `Composition.confidentiality` | Subconjunto definido para CNU. |

`HCENConsultaNoUrgente.type` está fijado a LOINC `34108-1`; no se selecciona mediante VSclassCode. En los perfiles clínicos que admiten codificaciones adicionales, la URI del tesauro local mencionada en el material fuente continúa pendiente; no se crea un sistema local ficticio.
