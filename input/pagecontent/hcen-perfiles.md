Los perfiles HCEN agregan las restricciones del intercambio a los recursos nacionales o a FHIR R4. Para datos de personas y organizaciones se utilizan los derivados del Core; para publicar se combinan metadatos, documento clínico y sobre de envío.

### Seleccionar un perfil

| Perfil | Base | Uso |
| --- | --- | --- |
| [HCENDocumentIdentifier](StructureDefinition-hcen-document-identifier.html) | `$MHDuniqueIdIdentifier` | OID del documento clínico con `use = usual`. |
| [HCENDocumentReferenceIdentifier](StructureDefinition-hcen-document-reference-identifier.html) | `$MHDentryUUIDIdentifier` | EntryUUID del DocumentReference. |
| [HCENSubmissionSetIdentifier](StructureDefinition-hcen-submission-set-identifier.html) | `$MHDentryUUIDIdentifier` | EntryUUID del SubmissionSet. |
| [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.html) | `UYMRNIdentifier` | Dominio OID del MRN, con autorización externa. |
| [HCENAAIdentifier](StructureDefinition-hcen-aa-identifier.html) | `UYAAIdentifier` | OID de una institución incluida en el catálogo HCEN. |
| [HCENCdaBinary](StructureDefinition-hcen-cda-binary.html) | `Binary` | CDA completo encapsulado como base64. |
| [HCENDocumentReference](StructureDefinition-hcen-document-reference.html) | `DocumentReference` | Metadatos, clasificación y referencias FHIR/CDA. |
| [HCENOrganization](StructureDefinition-hcen-organization.html) | `UYOrganization` | Organización identificada y con nombre. |
| [HCENPatient](StructureDefinition-hcen-patient.html) | `UYPatient` | Registro y actualización del paciente con MRN obligatorio. |
| [HCENPractitioner](StructureDefinition-hcen-practitioner.html) | `UYPractitioner` | Profesional identificado por CI en los metadatos. |
| [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.html) | `UYPractitionerRole` | Relación obligatoria entre profesional y organización. |
| [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html) | `Bundle` | Sobre preliminar de publicación basado en MHD UnContained. |
| [HCENSubmissionSet](StructureDefinition-hcen-submission-set.html) | `List` | Agrupación de uno o más documentos para publicación. |
| [HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.html) | `Composition` | Documento raíz de la Hoja de Consulta No Urgente. |
| [HCENEncounter](StructureDefinition-hcen-encounter.html) | `Encounter` | Evento clínico asociado a una CNU. |
| [HCENMotivoConsulta](StructureDefinition-hcen-motivo-consulta.html) | `Condition` | Motivo registrado en una CNU. |
| [HCENDiagnostico](StructureDefinition-hcen-diagnostico.html) | `Condition` | Diagnóstico registrado en una CNU. |
| [HCENProcedimiento](StructureDefinition-hcen-procedimiento.html) | `Procedure` | Procedimiento o tratamiento no farmacológico realizado. |
| [HCENMedicationAdministration](StructureDefinition-hcen-medication-administration.html) | `MedicationAdministration` | Tratamiento farmacológico realizado. |
| [HCENMedicationRequest](StructureDefinition-hcen-medication-request.html) | `MedicationRequest` | Prescripción farmacológica al finalizar la consulta. |
| [HCENServiceRequest](StructureDefinition-hcen-service-request.html) | `ServiceRequest` | Solicitud o indicación no farmacológica. |
| [HCENDosage](StructureDefinition-hcen-dosage.html) | `Dosage` | Pauta reutilizable por la prescripción farmacológica. |

### Datos, contexto y conformidad

Los perfiles HCEN de personas y organizaciones conservan las definiciones reutilizables del Core y agregan cardinalidades, referencias y MS. La primera familia de perfiles clínicos corresponde a la [Hoja de Consulta No Urgente](hcen-documentos-clinicos.html). En esta versión no se publica un perfil específico para el Bundle documental ni para el Bundle `searchset`.

Para completar identificadores consultar [Identificadores HCEN](hcen-identificadores.html). Las obligaciones de MS se definen en [Conformidad](hcen-conformidad.html#must-support); el comportamiento del envío se explica en [Publicación](hcen-iti-65.html).
