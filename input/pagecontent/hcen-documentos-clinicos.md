Esta sección describe la representación FHIR de los documentos clínicos que intercambia HCEN. La primera especificación incorporada es la Hoja de Consulta No Urgente (CNU); su publicación utiliza el Bundle de publicación y los metadatos definidos por la transacción de [publicación de documentos](hcen-iti-65.html). Esta versión no especifica otros tipos de documento clínico.

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

`HCENConsultaNoUrgente.type` está fijado a LOINC `34108-1`. `encounter` referencia [HCENEncounter](StructureDefinition-hcen-encounter.html), que fija el estado del evento a `finished`.

[HCENConsultaNoUrgenteBundle](StructureDefinition-hcen-consulta-no-urgente-bundle.html) garantiza la CNU en la primera entrada mediante tres reglas complementarias: `bdl-11` exige que la primera entrada sea Composition; `hcen-cnu-single-composition` exige una sola Composition; el slice `compositionCNU 1..1` identifica esa única Composition como HCENConsultaNoUrgente.

### Codificaciones pendientes

Los slices identifican SNOMED CT cuando se utiliza ese sistema. Se admiten codificaciones adicionales mediante slicing abierto, pero esta guía no fija la URI del tesauro local mencionado en el material de origen porque todavía está pendiente de confirmación. Los conjuntos marcados como provisionales contienen códigos de ejemplo y no constituyen refsets nacionales aprobados; consultar [Terminología HCEN](hcen-terminologia.html#terminología-clínica-de-cnu).

### Relación con el intercambio documental

La `Composition` y los recursos que referencia forman el contenido clínico del Bundle documental. Ese Bundle es distinto de [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html), que actúa como Bundle de publicación e incluye además `DocumentReference`, `SubmissionSet` y los recursos de contexto necesarios. Los metadatos referencian el CDA; el Binary CDA no debería (SHOULD NOT) enviarse. Si llega, se tolera, puede ignorarse y no invalida por sí mismo el envío, sin exigir correspondencia con los metadatos.

Los ejemplos de Consulta No Urgente, su CDA de apoyo y los ejemplos de intercambio HCEN se reservan para una versión futura. La publicación 0.1.0 incluye únicamente [ejemplos básicos del Core](ejemplos.html).
