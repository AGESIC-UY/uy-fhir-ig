Esta sección describe la representación FHIR de los documentos clínicos que intercambia HCEN. La primera especificación incorporada es la Hoja de Consulta No Urgente (CNU); su publicación utiliza el sobre y los metadatos definidos por la transacción de [publicación de documentos](hcen-iti-65.html).

### Hoja de Consulta No Urgente

[HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.html) perfila `Composition` y organiza el documento en secciones. El recurso referencia el paciente, el rol profesional autor, la organización custodia y el evento clínico ([HCENEncounter](StructureDefinition-hcen-encounter.html)) mediante los perfiles HCEN correspondientes.

| Contenido | Perfil | Sección de la Composition |
| --- | --- | --- |
| Motivo de consulta | [HCENMotivoConsulta](StructureDefinition-hcen-motivo-consulta.html) | Motivos de consulta |
| Diagnóstico | [HCENDiagnostico](StructureDefinition-hcen-diagnostico.html) | Diagnósticos |
| Procedimiento realizado | [HCENProcedimiento](StructureDefinition-hcen-procedimiento.html) | Procedimientos y tratamiento no farmacológico realizado |
| Medicación administrada | [HCENMedicationAdministration](StructureDefinition-hcen-medication-administration.html) | Tratamiento farmacológico realizado |
| Indicación no farmacológica | [HCENServiceRequest](StructureDefinition-hcen-service-request.html) | Tratamiento no farmacológico final e instrucciones de seguimiento |
| Prescripción farmacológica | [HCENMedicationRequest](StructureDefinition-hcen-medication-request.html) | Tratamiento farmacológico final |
| Pauta de dosificación | [HCENDosage](StructureDefinition-hcen-dosage.html) | Utilizada por las prescripciones de medicación |

La sección de observaciones admite referencias FHIR base a `Appointment` u `Observation`, porque esta versión no incorpora perfiles HCEN específicos para esos recursos. `encounter` referencia [HCENEncounter](StructureDefinition-hcen-encounter.html), que fija el estado del evento a `finished` y tipa los ejes 2 y 3 del catálogo de documentos (`type`/`serviceType`).

### Codificaciones pendientes

Los slices identifican SNOMED CT cuando se utiliza ese sistema. Se admiten codificaciones adicionales mediante slicing abierto, pero esta guía no fija la URI del tesauro local mencionado en el material de origen porque todavía está pendiente de confirmación. Los conjuntos marcados como provisionales contienen códigos de ejemplo y no constituyen refsets nacionales aprobados; consultar [Terminología HCEN](hcen-terminologia.html#terminología-clínica-de-cnu).

### Relación con el intercambio documental

La `Composition` y los recursos que referencia forman el contenido clínico del Bundle documental. Ese Bundle es distinto de [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html), que actúa como sobre de publicación e incluye además `DocumentReference`, `SubmissionSet`, el CDA y los recursos de contexto necesarios.

Esta versión no incorpora una instancia de ejemplo CNU. Los [ejemplos de intercambio](hcen-ejemplos.html) continúan ilustrando el sobre y las transacciones sin declarar conformidad con el perfil CNU.
