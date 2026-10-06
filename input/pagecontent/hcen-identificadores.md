Esta página explica cómo identificar pacientes, documentos y conjuntos de envío en HCEN. Los identificadores de negocio no deben confundirse con el `id` lógico asignado a un recurso FHIR.

### Paciente, institución y repositorio

**HCEN-ID-001.** El MRN identifica al paciente dentro del dominio del prestador. Su `system` debe (SHALL) ser un OID autorizado por Salud Digital, expresado como `urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno]`, y su `value` debe contener el identificador local. Esta exigencia no se extiende a todos los identificadores del paciente. [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.html) comprueba la sintaxis; la autorización del dominio y su relación con la institución emisora se verifican mediante lógica interna de Plataforma contra el catálogo HCEN privado, fuera de la validación del perfil. Los dominios operativos no se publican en esta guía.

La organización se identifica mediante [UYOrgIdentifier](StructureDefinition-uy-org-identifier.html), reutilizado por [HCENOrganization](StructureDefinition-hcen-organization.html). La IG pública no enumera OID institucionales autorizados ni define un binding de `Patient.identifier[mrn].system` o `Organization.identifier.value` a una lista pública de OID. Cuando corresponde, controla estructura y formato; la autorización del OID contra el catálogo HCEN se verifica mediante lógica interna de Plataforma. El identificador de la organización y el dominio de asignación de MRN cumplen funciones distintas; una institución puede administrar varios dominios MRN.

**HCEN-ID-003.** El repositorio debe (SHALL) tener un OID validado por Salud Digital. Se representa en la [extensión RepositoryId](StructureDefinition-ext-repository-id.html) con `system = urn:ietf:rfc:3986` y `value = urn:oid:...`. El mecanismo operativo de validación del OID del repositorio no está documentado en esta versión.

### Identificador documental

**HCEN-ID-002.** [oid_documento_clinico] representa el OID del documento clínico y sigue esta estructura:

```text
2.16.858.2.[ID ESTRUCTURA PRESTADOR].67430.[AAAAMMDDHHmmss].[Extras]
```

La fecha y hora corresponde a la creación en hora local de Uruguay. Los Extras son uno o más arcos numéricos de OID definidos por el prestador. Debe (SHALL) asegurar la unicidad, incluidos documentos creados en el mismo segundo. La invariante controla la forma; no comprueba que el prestador esté autorizado, que la fecha exista ni que coincida con la creación clínica.

### Ubicación en los recursos

| Recurso y elemento | Valor | Perfil o regla |
| --- | --- | --- |
| Composition `identifier` | `urn:oid:[oid_documento_clinico]` | HCENDocumentIdentifier; [oid_documento_clinico] identifica el documento |
| Bundle documental `identifier` | `urn:oid:[oid_documento_clinico]` | HCENDocumentIdentifier; `use = usual` |
| DocumentReference `masterIdentifier` | `urn:oid:[oid_documento_clinico]` | Mismo identificador de documento |
| DocumentReference `identifier[uniqueId]` | `urn:oid:[oid_documento_clinico]` | Repetición opcional de `masterIdentifier`; mismo `system` y `value` |
| DocumentReference `identifier[entryUUID]` | `urn:uuid:1.[oid_documento_clinico]` | HCENDocumentReferenceIdentifier; `use = official` |
| SubmissionSet `identifier[entryUUID]` | `urn:uuid:2.[oid_documento_clinico]` | HCENSubmissionSetIdentifier; `use = official` |
| SubmissionSet `identifier[uniqueId]` | `urn:oid:[oid_propio_del_conjunto_S]` | HCENDocumentIdentifier; `use = usual`; S es distinto de [oid_documento_clinico] |

Composition.identifier, Bundle.identifier y DocumentReference.masterIdentifier conservan [oid_documento_clinico]. DocumentReference utiliza uniqueId = [oid_documento_clinico] (repetición opcional) y entryUUID = 1.[oid_documento_clinico]. SubmissionSet utiliza uniqueId = S, propio del conjunto y distinto de [oid_documento_clinico], y entryUUID = 2.[oid_documento_clinico] derivado de cualquiera de los DocumentReference miembros. La elección del miembro y el orden de la lista no tienen significado normativo.

Los entryUUID de DocumentReference y SubmissionSet son obligatorios en el envío. La repetición de uniqueId en DocumentReference sigue siendo opcional: `masterIdentifier` es el identificador documental principal y `identifier[uniqueId]` permite incluirlo también en la colección de identificadores, sin asignar una identidad diferente.

Los perfiles de `entryUUID` heredan de [IHE MHD EntryUUID Identifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier), por lo que utilizan `system = urn:ietf:rfc:3986` y `use = official`. En HCEN sus valores se derivan del OID documental: el DocumentReference antepone `urn:uuid:1.` y el SubmissionSet antepone `urn:uuid:2.` a [oid_documento_clinico] de cualquiera de sus miembros. Esta forma es una convención histórica del ecosistema HCEN/XDS; no representa un UUID RFC estándar. HCENDocumentIdentifier hereda de IHE MHD UniqueIdIdentifier y fija explícitamente `use = usual`.

El CDA conserva el OID del documento en su identificador documental XML. Binary R4 no tiene `identifier`: no se inventa ese atributo ni se usa `Binary.id` como identificador de negocio. La versión documental se comprueba en los contenidos y metadatos; `meta.versionId` de un recurso del servidor no demuestra equivalencia clínica entre formatos. El mapeo definitivo de versión entre CDA y FHIR queda por cerrar.

### Ejemplo

```text
Documento:              urn:oid:2.16.858.2.99999999.67430.20260917100000.1
EntryUUID referencia:   urn:uuid:1.2.16.858.2.99999999.67430.20260917100000.1
EntryUUID conjunto:     urn:uuid:2.2.16.858.2.99999999.67430.20260917100000.1
UniqueId del conjunto:  urn:oid:2.16.858.2.99999999.67430.20260917100000.2
```

El prestador y los dominios del ejemplo son ficticios; no se declaran asignados ni autorizados. Ver [Ejemplos de intercambio](hcen-ejemplos.html).
