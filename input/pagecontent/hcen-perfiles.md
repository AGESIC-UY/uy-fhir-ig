Los perfiles HCEN agregan las restricciones del intercambio a los recursos nacionales o a FHIR R4.

### Seleccionar un perfil

Los perfiles se agrupan según su función en el intercambio.

#### Identificadores

Tipos de dato para los identificadores del paciente, del documento y de sus metadatos. Su uso se explica en [Identificadores HCEN](hcen-identificadores.html).

| Perfil | Base | Uso |
| --- | --- | --- |
| [HCENCIIdentifier](StructureDefinition-hcen-ci-identifier.html) | `Identifier` | CI uruguaya en HCEN; opcional MS en pacientes y obligatoria en profesionales. |
| [HCENOrgIdentifier](StructureDefinition-hcen-org-identifier.html) | `UYOrgIdentifier` | `system = urn:ietf:rfc:3986` y URI OID de organización en `value`. |
| [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.html) | `UYMRNIdentifier` | Formato del dominio OID del MRN; autorización mediante lógica interna de Plataforma. |
| [HCENDocumentIdentifier](StructureDefinition-hcen-document-identifier.html) | [IHE MHD UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier) | OID del documento clínico con `use = usual`. |
| [HCENDocumentReferenceIdentifier](StructureDefinition-hcen-document-reference-identifier.html) | [IHE MHD EntryUUID Identifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier) | EntryUUID del DocumentReference. |
| [HCENSubmissionSetIdentifier](StructureDefinition-hcen-submission-set-identifier.html) | [IHE MHD EntryUUID Identifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier) | EntryUUID del SubmissionSet. |
| [HCENSubmissionSetUniqueIdIdentifier](StructureDefinition-hcen-submission-set-unique-id-identifier.html) | [IHE MHD UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier) | UniqueId del SubmissionSet, distinto de `[oid_documento_clinico]`, con `use = usual`. |

#### Personas y organizaciones

Derivan de los perfiles de Core Uruguay y agregan las obligaciones del intercambio.

| Perfil | Base | Uso |
| --- | --- | --- |
| [HCENPatient](StructureDefinition-hcen-patient.html) | `UYPatient` | Registro y actualización del paciente con MRN obligatorio. |
| [HCENPractitioner](StructureDefinition-hcen-practitioner.html) | `UYPractitioner` | Profesional identificado por CI en los metadatos. |
| [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.html) | `UYPractitionerRole` | Relación obligatoria entre profesional y organización. |
| [HCENOrganization](StructureDefinition-hcen-organization.html) | `UYOrganization` | Organización identificada y con nombre. |

<a id="datos-personas"></a>
Los datos obligatorios, opcionales y Must Support se explican en las páginas de [HCENPatient](StructureDefinition-hcen-patient.html), [HCENPractitioner](StructureDefinition-hcen-practitioner.html) y [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.html). Las reglas comunes de [Must Support](hcen-conformidad.html#must-support) se aplican a todos ellos.

#### Metadatos y envío

Se utilizan para [publicar](hcen-iti-65.html), [consultar](hcen-iti-67.html) y [recuperar](hcen-iti-68.html) documentos de cualquier tipo.

| Perfil | Base | Uso |
| --- | --- | --- |
| [HCENDocumentReference](StructureDefinition-hcen-document-reference.html) | `DocumentReference` | Metadatos, clasificación y referencias FHIR/CDA. |
| [HCENSubmissionSet](StructureDefinition-hcen-submission-set.html) | `List` | Agrupación de uno o más documentos para publicación. |
| [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html) | `Bundle` | Bundle de publicación preliminar basado en MHD UnContained. |
| [HCENCdaBinary](StructureDefinition-hcen-cda-binary.html) | `Binary` | CDA completo encapsulado como base64. |

#### Documento clínico de Consulta No Urgente

Describen el contenido clínico de la [Hoja de Consulta No Urgente](hcen-documentos-clinicos.html).

| Perfil | Base | Uso |
| --- | --- | --- |
| [HCENConsultaNoUrgenteBundle](StructureDefinition-hcen-consulta-no-urgente-bundle.html) | `Bundle` | Documento FHIR (`document`) que transporta la HCENConsultaNoUrgente y los recursos que referencia. |
| [HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.html) | `Composition` | Documento raíz de la Hoja de Consulta No Urgente. |
| [HCENEncounter](StructureDefinition-hcen-encounter.html) | `Encounter` | Evento clínico asociado a una CNU. |
| [HCENMotivoConsulta](StructureDefinition-hcen-motivo-consulta.html) | `Condition` | Motivo de consulta registrado en una CNU. |
| [HCENDiagnostico](StructureDefinition-hcen-diagnostico.html) | `Condition` | Diagnóstico registrado en una CNU. |
| [HCENProcedimiento](StructureDefinition-hcen-procedimiento.html) | `Procedure` | Procedimiento o tratamiento no farmacológico realizado durante la asistencia. |
| [HCENMedicationAdministration](StructureDefinition-hcen-medication-administration.html) | `MedicationAdministration` | Tratamiento farmacológico realizado durante la asistencia. |
| [HCENMedicationRequest](StructureDefinition-hcen-medication-request.html) | `MedicationRequest` | Tratamiento farmacológico indicado al final de la asistencia. |
| [HCENServiceRequest](StructureDefinition-hcen-service-request.html) | `ServiceRequest` | Tratamiento no farmacológico indicado al final de la asistencia o instrucciones de seguimiento. |
| [HCENDosage](StructureDefinition-hcen-dosage.html) | `Dosage` | Pauta de administración indicada por el profesional. |
