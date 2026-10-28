# Identificadores HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Identificadores HCEN

Esta página explica cómo identificar pacientes, documentos y conjuntos de envío en HCEN. Los identificadores de negocio no deben confundirse con el `id` lógico asignado a un recurso FHIR.

### Paciente, institución y repositorio

El MRN identifica al paciente dentro del dominio del prestador. Su `system` debe (SHALL) ser un OID autorizado por Salud Digital, expresado como `urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno]`, y su `value` debe contener el identificador local. Esta exigencia no se extiende a todos los identificadores del paciente. [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.md) comprueba la sintaxis del identificador, la autorización del dominio y su relación con la institución emisora se verifican mediante lógica interna de Plataforma. Los dominios operativos no se publican en esta guía.

La cédula de identidad uruguaya se representa mediante [HCENCIIdentifier](StructureDefinition-hcen-ci-identifier.md), con tipo `NI` y `system = urn:oid:2.16.858.2.10000675.68909`. Se utiliza en pacientes y profesionales. Su obligatoriedad y soporte se explican en [HCENPatient](StructureDefinition-hcen-patient.md) y [HCENPractitioner](StructureDefinition-hcen-practitioner.md).

El DNI nacional [UYDNIIdentifier](StructureDefinition-uy-dni-identifier.md) se hereda del Core en `identifier[dni]` y sigue siendo opcional. Para Uruguay utiliza `urn:oid:2.16.858.1.858.68909`. DNI y CI HCEN pueden coexistir en identificadores separados, pero el DNI **no** sustituye al slice `ci` ni a sus obligaciones.

La organización se representa mediante [HCENOrgIdentifier](StructureDefinition-hcen-org-identifier.md), derivado de [UYOrgIdentifier](StructureDefinition-uy-org-identifier.md), y el slice `identifier[organizationId]` de [HCENOrganization](StructureDefinition-hcen-organization.md). Su representación es:

```
Identifier.system = urn:ietf:rfc:3986
Identifier.value  = urn:oid:2.16.858.0....

```

La invariante admite descendientes de las ramas de [UNAOID](https://unaoid.gub.uy/Organizacion.aspx): `2.16.858.0.0` (Estado), `2.16.858.0.1` (personas públicas no estatales) y `2.16.858.0.2` (empresas y organizaciones privadas), con arcos numéricos sin ceros iniciales. Comprueba el formato, no la asignación oficial ni la autorización del OID. La guía no publica una lista cerrada de instituciones o dominios autorizados.

El identificador de la organización y el dominio de asignación MRN cumplen funciones distintas. Cuando se informa `assigner` en los identificadores HCEN de CI, MRN u organización, referencia una [HCENOrganization](StructureDefinition-hcen-organization.md).

`HCENSubmissionSet.extension[sourceId].valueIdentifier` utiliza la misma representación de organización e identifica a la entidad que origina el envío. Esa entidad puede ser una intermediaria distinta de la organización clínica del documento.

El repositorio debe (SHALL) tener un OID validado por Salud Digital. Se representa en la [extensión RepositoryId](StructureDefinition-ext-repository-id.md) con `system = urn:ietf:rfc:3986` y `value = urn:oid:...`. El mecanismo operativo de validación del OID del repositorio no está documentado en esta versión.

### Identificador de documento

[oid_documento_clinico] representa el OID del documento clínico y sigue esta estructura:

```
2.16.858.2.[ID ESTRUCTURA PRESTADOR].67430.[AAAAMMDDHHmmss].[Extras]

```

La fecha y hora corresponde a la creación en hora local de Uruguay. Los Extras son uno o más arcos numéricos de OID definidos por el prestador. Debe (SHALL) asegurar la unicidad, incluidos documentos creados en el mismo segundo. La invariante controla la forma, pero no comprueba que el prestador esté autorizado, que la fecha exista ni que coincida con la creación clínica.

### Ubicación en los recursos

| | | |
| :--- | :--- | :--- |
| Composition`identifier` | `urn:oid:[oid_documento_clinico]` | HCENDocumentIdentifier; [oid_documento_clinico] identifica el documento |
| Bundle documental`identifier` | `urn:oid:[oid_documento_clinico]` | HCENDocumentIdentifier;`use = usual` |
| DocumentReference`masterIdentifier` | `urn:oid:[oid_documento_clinico]` | Mismo identificador de documento |
| DocumentReference`identifier[uniqueId]` | `urn:oid:[oid_documento_clinico]` | Repetición opcional de`masterIdentifier`; mismo`system`y`value` |
| DocumentReference`identifier[entryUUID]` | `urn:uuid:1.[oid_documento_clinico]` | HCENDocumentReferenceIdentifier;`use = official` |
| SubmissionSet`identifier[entryUUID]` | `urn:uuid:2.[oid_documento_clinico]` | HCENSubmissionSetIdentifier;`use = official` |
| SubmissionSet`identifier[uniqueId]` | `urn:oid:[oid_propio_del_conjunto_S]` | HCENSubmissionSetUniqueIdIdentifier;`use = usual`; S es distinto de [oid_documento_clinico] |

El identificador del documento se conserva en Composition, Bundle documental y DocumentReference. El conjunto de envío tiene una identidad propia. La aplicación de estas convenciones se explica en [HCENDocumentReference](StructureDefinition-hcen-document-reference.md) y [HCENSubmissionSet](StructureDefinition-hcen-submission-set.md).

Los perfiles de `entryUUID` heredan de [IHE MHD EntryUUID Identifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier), por lo que utilizan `system = urn:ietf:rfc:3986` y `use = official`. En HCEN sus valores se derivan del OID documental: el DocumentReference antepone `urn:uuid:1.` y el SubmissionSet antepone `urn:uuid:2.` a [oid_documento_clinico] de cualquiera de sus miembros. Esta forma es una convención histórica del ecosistema HCEN/XDS, no representa un UUID RFC estándar. HCENDocumentIdentifier hereda de IHE MHD UniqueIdIdentifier y fija explícitamente `use = usual`.

El CDA conserva el OID del documento en su identificador documental XML. Binary R4 no tiene `identifier`: no se inventa ese atributo ni se usa `Binary.id` como identificador de negocio. El prestador debe conservar la misma identidad y versión en contenidos y metadatos. Plataforma no inspecciona el CDA durante HCEN ITI-65. `meta.versionId` de un recurso del servidor no demuestra equivalencia clínica entre formatos. El mapeo definitivo de versión entre CDA y FHIR queda por cerrar.

### Ejemplo

```
Documento:              urn:oid:2.16.858.2.99999999.67430.20260917100000.1
EntryUUID referencia:   urn:uuid:1.2.16.858.2.99999999.67430.20260917100000.1
EntryUUID conjunto:     urn:uuid:2.2.16.858.2.99999999.67430.20260917100000.1
UniqueId del conjunto:  urn:oid:2.16.858.2.99999999.67430.20260917100000.2

```

El prestador y los dominios del ejemplo son ficticios, no se declaran asignados ni autorizados. Ver [Ejemplos de intercambio](hcen-ejemplos.md).

