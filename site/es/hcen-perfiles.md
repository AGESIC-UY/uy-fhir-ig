# Perfiles HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfiles HCEN

Los perfiles HCEN agregan las restricciones del intercambio a los recursos nacionales o a FHIR R4.

### Seleccionar un perfil

Los perfiles se agrupan según su función en el intercambio.

#### Identificadores

Tipos de dato para los identificadores del paciente, del documento y de sus metadatos. Su uso se explica en [Identificadores HCEN](hcen-identificadores.md).

| | | |
| :--- | :--- | :--- |
| [HCENCIIdentifier](StructureDefinition-hcen-ci-identifier.md) | `Identifier` | CI uruguaya en HCEN; opcional MS en pacientes y obligatoria en profesionales. |
| [HCENOrgIdentifier](StructureDefinition-hcen-org-identifier.md) | `UYOrgIdentifier` | `system = urn:ietf:rfc:3986`y URI OID de organización en`value`. |
| [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.md) | `UYMRNIdentifier` | Formato del dominio OID del MRN; autorización mediante lógica interna de Plataforma. |
| [HCENDocumentIdentifier](StructureDefinition-hcen-document-identifier.md) | [IHE MHD UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier) | OID del documento clínico con`use = usual`. |
| [HCENDocumentReferenceIdentifier](StructureDefinition-hcen-document-reference-identifier.md) | [IHE MHD EntryUUID Identifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier) | EntryUUID del DocumentReference. |
| [HCENSubmissionSetIdentifier](StructureDefinition-hcen-submission-set-identifier.md) | [IHE MHD EntryUUID Identifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier) | EntryUUID del SubmissionSet. |
| [HCENSubmissionSetUniqueIdIdentifier](StructureDefinition-hcen-submission-set-unique-id-identifier.md) | [IHE MHD UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier) | UniqueId del SubmissionSet, distinto de`[oid_documento_clinico]`, con`use = usual`. |

#### Personas y organizaciones

Derivan de los perfiles de Core Uruguay y agregan las obligaciones del intercambio.

| | | |
| :--- | :--- | :--- |
| [HCENPatient](StructureDefinition-hcen-patient.md) | `UYPatient` | Registro y actualización del paciente con MRN obligatorio. |
| [HCENPractitioner](StructureDefinition-hcen-practitioner.md) | `UYPractitioner` | Profesional identificado por CI en los metadatos. |
| [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.md) | `UYPractitionerRole` | Relación obligatoria entre profesional y organización. |
| [HCENOrganization](StructureDefinition-hcen-organization.md) | `UYOrganization` | Organización identificada y con nombre. |

 Los datos obligatorios, opcionales y Must Support se explican en las páginas de [HCENPatient](StructureDefinition-hcen-patient.md), [HCENPractitioner](StructureDefinition-hcen-practitioner.md) y [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.md). Las reglas comunes de [Must Support](hcen-conformidad.md#must-support) se aplican a todos ellos.

#### Metadatos y envío

Se utilizan para [publicar](hcen-iti-65.md), [consultar](hcen-iti-67.md) y [recuperar](hcen-iti-68.md) documentos de cualquier tipo.

| | | |
| :--- | :--- | :--- |
| [HCENDocumentReference](StructureDefinition-hcen-document-reference.md) | `DocumentReference` | Metadatos, clasificación y referencias FHIR/CDA. |
| [HCENSubmissionSet](StructureDefinition-hcen-submission-set.md) | `List` | Agrupación de uno o más documentos para publicación. |
| [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.md) | `Bundle` | Bundle de publicación preliminar basado en MHD UnContained. |
| [HCENCdaBinary](StructureDefinition-hcen-cda-binary.md) | `Binary` | CDA completo encapsulado como base64. |

#### Documento clínico de Consulta No Urgente

Describen el contenido clínico de la [Hoja de Consulta No Urgente](hcen-documentos-clinicos.md).

| | | |
| :--- | :--- | :--- |
| [HCENConsultaNoUrgenteBundle](StructureDefinition-hcen-consulta-no-urgente-bundle.md) | `Bundle` | Documento FHIR (`document`) que transporta la HCENConsultaNoUrgente y los recursos que referencia. |
| [HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.md) | `Composition` | Documento raíz de la Hoja de Consulta No Urgente. |
| [HCENEncounter](StructureDefinition-hcen-encounter.md) | `Encounter` | Evento clínico asociado a una CNU. |
| [HCENMotivoConsulta](StructureDefinition-hcen-motivo-consulta.md) | `Condition` | Motivo de consulta registrado en una CNU. |
| [HCENDiagnostico](StructureDefinition-hcen-diagnostico.md) | `Condition` | Diagnóstico registrado en una CNU. |
| [HCENProcedimiento](StructureDefinition-hcen-procedimiento.md) | `Procedure` | Procedimiento o tratamiento no farmacológico realizado durante la asistencia. |
| [HCENMedicationAdministration](StructureDefinition-hcen-medication-administration.md) | `MedicationAdministration` | Tratamiento farmacológico realizado durante la asistencia. |
| [HCENMedicationRequest](StructureDefinition-hcen-medication-request.md) | `MedicationRequest` | Tratamiento farmacológico indicado al final de la asistencia. |
| [HCENServiceRequest](StructureDefinition-hcen-service-request.md) | `ServiceRequest` | Tratamiento no farmacológico indicado al final de la asistencia o instrucciones de seguimiento. |
| [HCENDosage](StructureDefinition-hcen-dosage.md) | `Dosage` | Pauta de administración indicada por el profesional. |

