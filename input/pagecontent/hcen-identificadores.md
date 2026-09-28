Esta página explica cómo identificar pacientes, documentos y conjuntos de envío en HCEN. Los identificadores de negocio no deben confundirse con el `id` lógico asignado a un recurso FHIR.

### Paciente y repositorio

**HCEN-ID-001.** El MRN identifica al paciente dentro del dominio del prestador. Su `system` debe (SHALL) ser un OID autorizado por Salud Digital, expresado en este borrador como `urn:oid:...`, y su `value` debe contener el identificador local. Esta exigencia no se extiende a todos los identificadores del paciente. [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.html) comprueba la sintaxis; la autorización requiere verificación externa.

El [catálogo de OID institucionales](ValueSet-vs-prestador-oid-mrn.html) publica los identificadores admitidos para organizaciones HCEN. [HCENAAIdentifier](StructureDefinition-hcen-aa-identifier.html) fija `system = urn:ietf:rfc:3986` y exige que `value`, con forma `urn:oid:...`, pertenezca a ese catálogo. La regla se expresa mediante una invariante porque FHIR R4 no admite un binding terminológico directo sobre `Identifier.value`.

**HCEN-ID-003.** El repositorio debe (SHALL) tener un OID validado por Salud Digital. Se representa en la [extensión RepositoryId](StructureDefinition-ext-repository-id.html) con `system = urn:ietf:rfc:3986` y `value = urn:oid:...`. El catálogo y su mecanismo de consulta siguen pendientes.

### Identificador documental

**HCEN-ID-002.** El OID del documento clínico sigue esta estructura, sin asignarle una abreviatura adicional:

```text
2.16.858.2.[ID ESTRUCTURA PRESTADOR].67430.[AAAAMMDDHHmmss].[Extras]
```

La fecha y hora corresponde a la creación en hora local de Uruguay. Los Extras son uno o más arcos numéricos de OID definidos por el prestador. Debe (SHALL) asegurar la unicidad, incluidos documentos creados en el mismo segundo. La invariante controla la forma; no comprueba que el prestador esté autorizado, que la fecha exista ni que coincida con la creación clínica.

### Ubicación en los recursos

| Recurso y elemento | Valor | Perfil o regla |
| --- | --- | --- |
| Bundle documental `identifier` | `urn:oid:[oid_documento_clinico]` | HCENDocumentIdentifier; `use = usual` |
| DocumentReference `masterIdentifier` | `urn:oid:[oid_documento_clinico]` | Mismo identificador de documento |
| DocumentReference `identifier[entryUUID]` | `urn:uuid:1.[oid_documento_clinico]` | HCENDocumentReferenceIdentifier; `use = official` |
| SubmissionSet `identifier[entryUUID]` | `urn:uuid:2.[oid_documento_clinico]` | HCENSubmissionSetIdentifier; `use = official` |
| SubmissionSet `identifier[uniqueId]` | `urn:oid:[oid_documento_clinico]` | HCENDocumentIdentifier; `use = usual` |

Los perfiles de `entryUUID` heredan de [IHE MHD EntryUUID Identifier](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier), por lo que utilizan `system = urn:ietf:rfc:3986` y `use = official`. En HCEN sus valores se derivan del OID documental: el DocumentReference antepone `urn:uuid:1.` y el SubmissionSet antepone `urn:uuid:2.`. HCENDocumentIdentifier hereda de IHE MHD UniqueIdIdentifier y fija explícitamente `use = usual`.

El CDA conserva el OID del documento en su identificador documental XML. Binary R4 no tiene `identifier`: no se inventa ese atributo ni se usa `Binary.id` como identificador de negocio. La versión documental se comprueba en los contenidos y metadatos; `meta.versionId` de un recurso del servidor no demuestra equivalencia clínica entre formatos. El mapeo definitivo de versión entre CDA y FHIR queda por cerrar.

### Ejemplo

```text
Documento:              urn:oid:2.16.858.2.99999999.67430.20260917100000.1
EntryUUID referencia:   urn:uuid:1.2.16.858.2.99999999.67430.20260917100000.1
EntryUUID conjunto:     urn:uuid:2.2.16.858.2.99999999.67430.20260917100000.1
UniqueId del conjunto:  urn:oid:2.16.858.2.99999999.67430.20260917100000.1
```

El prestador y los dominios del ejemplo son ficticios; no se declaran asignados ni autorizados. Ver [Ejemplos de intercambio](hcen-ejemplos.html).
