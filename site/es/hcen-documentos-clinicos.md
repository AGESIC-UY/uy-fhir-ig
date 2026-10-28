# Documentos clínicos HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Documentos clínicos HCEN

Esta sección describe la representación FHIR de los documentos clínicos que intercambia HCEN. La primera especificación incorporada es la Hoja de Consulta No Urgente (CNU), su publicación utiliza el Bundle de publicación y los metadatos definidos por la transacción de [publicación de documentos](hcen-iti-65.md). Esta versión no especifica otros tipos de documento clínico.

### Hoja de Consulta No Urgente

[HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.md) perfila `Composition` y organiza el documento en secciones. El recurso referencia el paciente, el rol profesional autor, la organización custodia y el evento clínico ([HCENEncounter](StructureDefinition-hcen-encounter.md)) mediante los perfiles HCEN correspondientes.

| | | |
| :--- | :--- | :--- |
| Motivo de consulta | [HCENMotivoConsulta](StructureDefinition-hcen-motivo-consulta.md) | Motivos de consulta |
| Diagnóstico | [HCENDiagnostico](StructureDefinition-hcen-diagnostico.md) | Diagnósticos |
| Procedimiento realizado | [HCENProcedimiento](StructureDefinition-hcen-procedimiento.md) | Procedimientos y tratamiento no farmacológico realizado |
| Medicación administrada | [HCENMedicationAdministration](StructureDefinition-hcen-medication-administration.md) | Tratamiento farmacológico realizado |
| Indicación no farmacológica | [HCENServiceRequest](StructureDefinition-hcen-service-request.md) | Tratamiento no farmacológico final e instrucciones de seguimiento |
| Prescripción farmacológica | [HCENMedicationRequest](StructureDefinition-hcen-medication-request.md) | Tratamiento farmacológico final |
| Pauta de dosificación | [HCENDosage](StructureDefinition-hcen-dosage.md) | Utilizada por las prescripciones de medicación |

El perfil del [Bundle documental CNU](StructureDefinition-hcen-consulta-no-urgente-bundle.md) define cómo reunir la Composition y los recursos clínicos en un documento.

### Codificaciones pendientes

Los slices identifican SNOMED CT cuando se utiliza ese sistema. Se admiten codificaciones adicionales mediante slicing abierto, por ejemplo un tesauro clínico — ver [Tesauro clínico](hcen-terminologia.md#tesauro-clínico) — pero esta guía no fija la URI de ese sistema porque todavía está pendiente de confirmación. Los conjuntos marcados como provisionales contienen códigos de ejemplo y no constituyen refsets nacionales aprobados; consultar [Terminología HCEN](hcen-terminologia.md#terminología-clínica-de-cnu).

### Relación con el intercambio documental

La `Composition` y los recursos que referencia forman el contenido clínico del Bundle documental. Ese Bundle es distinto de [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.md), que actúa como Bundle de publicación e incluye además `DocumentReference`, `SubmissionSet` y los recursos de contexto necesarios. Las condiciones del envío y el tratamiento del CDA se describen en [HCEN ITI-65](hcen-iti-65.md).

Consultar los [ejemplos CNU](hcen-ejemplos.md): documento y publicación de medicina general, y Composition con recursos individuales y CDA de apoyo de traumatología. Son escenarios distintos y deben mantenerse separados.

