# Perfiles HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfiles HCEN

Los perfiles HCEN agregan las restricciones del intercambio a los recursos nacionales o a FHIR R4. Para datos de personas y organizaciones se utilizan los derivados del Core; para publicar se combinan metadatos, documento clínico y sobre de envío.

### Seleccionar un perfil

| | | |
| :--- | :--- | :--- |
| [HCENDocumentIdentifier](StructureDefinition-hcen-document-identifier.md) | `$MHDuniqueIdIdentifier` | OID del documento clínico con`use = usual`. |
| [HCENDocumentReferenceIdentifier](StructureDefinition-hcen-document-reference-identifier.md) | `$MHDentryUUIDIdentifier` | EntryUUID del DocumentReference. |
| [HCENSubmissionSetIdentifier](StructureDefinition-hcen-submission-set-identifier.md) | `$MHDentryUUIDIdentifier` | EntryUUID del SubmissionSet. |
| [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.md) | `UYMRNIdentifier` | Dominio OID del MRN, con autorización externa. |
| [HCENAAIdentifier](StructureDefinition-hcen-aa-identifier.md) | `UYAAIdentifier` | OID de una institución incluida en el catálogo HCEN. |
| [HCENCdaBinary](StructureDefinition-hcen-cda-binary.md) | `Binary` | CDA completo encapsulado como base64. |
| [HCENDocumentReference](StructureDefinition-hcen-document-reference.md) | `DocumentReference` | Metadatos, clasificación y referencias FHIR/CDA. |
| [HCENOrganization](StructureDefinition-hcen-organization.md) | `UYOrganization` | Organización identificada y con nombre. |
| [HCENPatient](StructureDefinition-hcen-patient.md) | `UYPatient` | Registro y actualización del paciente con MRN obligatorio. |
| [HCENPractitioner](StructureDefinition-hcen-practitioner.md) | `UYPractitioner` | Profesional identificado por CI en los metadatos. |
| [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.md) | `UYPractitionerRole` | Relación obligatoria entre profesional y organización. |
| [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.md) | `Bundle` | Sobre preliminar de publicación basado en MHD UnContained. |
| [HCENSubmissionSet](StructureDefinition-hcen-submission-set.md) | `List` | Agrupación de uno o más documentos para publicación. |
| [HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.md) | `Composition` | Documento raíz de la Hoja de Consulta No Urgente. |
| [HCENEncounter](StructureDefinition-hcen-encounter.md) | `Encounter` | Evento clínico asociado a una CNU. |
| [HCENMotivoConsulta](StructureDefinition-hcen-motivo-consulta.md) | `Condition` | Motivo registrado en una CNU. |
| [HCENDiagnostico](StructureDefinition-hcen-diagnostico.md) | `Condition` | Diagnóstico registrado en una CNU. |
| [HCENProcedimiento](StructureDefinition-hcen-procedimiento.md) | `Procedure` | Procedimiento o tratamiento no farmacológico realizado. |
| [HCENMedicationAdministration](StructureDefinition-hcen-medication-administration.md) | `MedicationAdministration` | Tratamiento farmacológico realizado. |
| [HCENMedicationRequest](StructureDefinition-hcen-medication-request.md) | `MedicationRequest` | Prescripción farmacológica al finalizar la consulta. |
| [HCENServiceRequest](StructureDefinition-hcen-service-request.md) | `ServiceRequest` | Solicitud o indicación no farmacológica. |
| [HCENDosage](StructureDefinition-hcen-dosage.md) | `Dosage` | Pauta reutilizable por la prescripción farmacológica. |

### Datos, contexto y conformidad

Los perfiles HCEN de personas y organizaciones conservan las definiciones reutilizables del Core y agregan cardinalidades, referencias y MS. La primera familia de perfiles clínicos corresponde a la [Hoja de Consulta No Urgente](hcen-documentos-clinicos.md). En esta versión no se publica un perfil específico para el Bundle documental ni para el Bundle `searchset`.

Para completar identificadores consultar [Identificadores HCEN](hcen-identificadores.md). Las obligaciones de MS se definen en [Conformidad](hcen-conformidad.md#must-support); el comportamiento del envío se explica en [Publicación](hcen-iti-65.md).

