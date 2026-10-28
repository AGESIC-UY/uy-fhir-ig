Esta sección describe la representación FHIR de los documentos clínicos que intercambia HCEN. La primera especificación incorporada es la Hoja de Consulta No Urgente (CNU), su publicación utiliza el Bundle de publicación y los metadatos definidos por la transacción de [publicación de documentos](hcen-iti-65.html). Esta versión no especifica otros tipos de documento clínico.

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

El perfil del [Bundle documental CNU](StructureDefinition-hcen-consulta-no-urgente-bundle.html) define cómo reunir la Composition y los recursos clínicos en un documento.

### Codificaciones pendientes

Los slices identifican SNOMED CT cuando se utiliza ese sistema. Se admiten codificaciones adicionales mediante slicing abierto, por ejemplo un tesauro clínico — ver [Tesauro clínico](hcen-terminologia.html#tesauro-clínico) — pero esta guía no fija la URI de ese sistema porque todavía está pendiente de confirmación. Los conjuntos marcados como provisionales contienen códigos de ejemplo y no constituyen refsets nacionales aprobados; consultar [Terminología HCEN](hcen-terminologia.html#terminología-clínica-de-cnu).

### Relación con el intercambio documental

La `Composition` y los recursos que referencia forman el contenido clínico del Bundle documental. Ese Bundle es distinto de [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html), que actúa como Bundle de publicación e incluye además `DocumentReference`, `SubmissionSet` y los recursos de contexto necesarios. Las condiciones del envío y el tratamiento del CDA se describen en [HCEN ITI-65](hcen-iti-65.html).

Consultar los [ejemplos CNU](hcen-ejemplos.html): documento y publicación de medicina general, y Composition con recursos individuales y CDA de apoyo de traumatología. Son escenarios distintos y deben mantenerse separados.
