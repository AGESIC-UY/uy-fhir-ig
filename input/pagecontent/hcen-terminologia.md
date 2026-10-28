La terminología HCEN clasifica documentos y formatos de intercambio. Estos conjuntos responden a requisitos específicos de HCEN.

### Clasificación de documentos

| Conjunto | Uso | Estado del contenido |
| --- | --- | --- |
| [Tipo genérico (EJE 1)](ValueSet-vs-class-code.html) | `HCENDocumentReference.category` | Vinculación `extensible`; catálogo pendiente de revisión terminológica. |
| [Tipo detallado (EJE 2)](ValueSet-vs-type-code.html) | `HCENDocumentReference.type` y `HCENSubmissionSet.extension[designationType].valueCodeableConcept` (`SubmissionSet.contentTypeCode`) | Vinculación `extensible`; catálogo pendiente de revisión terminológica. |
| [Servicio médico (EJE 3)](ValueSet-vs-practice-setting.html) | `HCENDocumentReference.context.practiceSetting` | Vinculación `extensible`; catálogo pendiente de revisión terminológica. |

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

`HCENConsultaNoUrgente.type` está fijado a LOINC `34108-1`; no se selecciona mediante VSclassCode.

### Tesauro clínico

Un tesauro clínico es un vocabulario controlado y estructurado que organiza términos del ámbito de la salud y establece relaciones entre ellos, como sinonimia, jerarquía y asociación. Facilita la búsqueda, el registro y la recuperación de información clínica.

El tesauro del Hospital Italiano de Buenos Aires (HIBA) utiliza identificadores propios, que pueden encontrarse en los documentos clínicos de origen. Estos términos del tesauro pueden vincularse, mediante un mapeo, con expresiones de SNOMED CT, el estándar terminológico elegido para la interoperabilidad a nivel nacional. Los identificadores del tesauro deben distinguirse de los códigos SNOMED CT: no son equivalentes ni intercambiables sin ese mapeo.

Su estructura es identificador del ítem + namespace + partición + dígito verificador. Los namespaces informados por el HIBA son `1000999`, `1000998`, `1000997`, `1000996` y `1000159`.

En los perfiles clínicos que admiten codificaciones adicionales (HCENDiagnostico, HCENMotivoConsulta, HCENProcedimiento, HCENMedicationRequest), el slicing de `coding` es abierto y admite, junto al slice SNOMED CT, una codificación de este tipo con su propio `system`. Esta guía no fija ni valida la URI de ese `system` para el tesauro del HIBA ni para ningún otro tesauro local: su confirmación y gobierno son externos a esta guía. Mientras esa URI no esté confirmada, no se crea un sistema local ficticio ni se define un slice propio para el tesauro.
