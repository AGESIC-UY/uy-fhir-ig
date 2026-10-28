### Organización del envío

Este perfil deriva de Bundle y adapta la organización de UnContainedComprehensiveProvideDocumentBundle de MHD 4.2.3. Incorpora contexto y reglas de identificación propios de HCEN, por lo que no declara conformidad con el perfil IHE, cuyo slicing es cerrado.

| Entrada | Cardinalidad | Uso |
| --- | --- | --- |
| SubmissionSet | 1..1 | HCENSubmissionSet con los DocumentReference miembros. |
| DocumentReference | 1..* | Metadatos de cada documento. |
| Bundle documental | 1..* | Documento FHIR enviado para validación. |
| Contexto | Según las referencias presentes | Patient, PractitionerRole, Practitioner y Organization con sus perfiles HCEN. |
| Binary CDA | Opcional en Plataforma | No se recomienda incluirlo; su contenido puede ignorarse. |

El envío debe aportar los recursos necesarios para validar sus metadatos. El documento FHIR debe ser autocontenido respecto de sus referencias clínicas, independientemente del Bundle de publicación.

Cada DocumentReference corresponde a exactamente un Bundle documental por `masterIdentifier.system` y `masterIdentifier.value`, coincidentes con `Bundle.identifier.system` y `Bundle.identifier.value`. La Composition raíz conserva ese mismo identificador. No se admiten asociaciones ambiguas, identificadores duplicados ni documentos huérfanos. El SubmissionSet enumera todos y solo los DocumentReference miembros, una vez cada uno.

<a id="referencias-locales"></a>
### Referencias de contexto

Las referencias siguientes deben resolverse a entradas del envío, según los perfiles y las invariantes de publicación:

| Recurso | Referencias |
| --- | --- |
| DocumentReference | `subject`, `author`, `authenticator`, `custodian`, `funder`, `byOrderOf` y `context.sourcePatientInfo`. |
| SubmissionSet | `subject`, `source` y los DocumentReference de `entry.item`. |
| PractitionerRole utilizado en autoría, autenticación o source | `practitioner` y `organization`. |

Los recursos contenidos no sustituyen las entradas de este contexto. Dentro del documento FHIR pueden utilizarse recursos contenidos cuando la estructura FHIR lo permita. La regla de contexto no exige un ejemplar de cada tipo si el envío no lo referencia, ni extiende el cierre local a toda referencia administrativa del recurso.

La autoría debe incluir al menos un HCENPractitionerRole. `SubmissionSet.source` debe referenciar un rol profesional. Cada rol utilizado y su Practitioner y Organization deben incluirse como entradas. Las referencias directas adicionales a Practitioner u Organization en `author` no sustituyen al rol obligatorio.

DocumentReference y SubmissionSet deben informar `homeCommunityId`. El período de servicio se describe en [HCENDocumentReference](StructureDefinition-hcen-document-reference.html).

`SubmissionSet.extension[sourceId].valueIdentifier` identifica a la entidad que origina el envío. Puede ser una intermediaria distinta de la organización clínica. Los formatos e identidades se explican en [Identificadores HCEN](hcen-identificadores.html).

Las referencias históricas `relatesTo` pueden apuntar a un DocumentReference ya existente en HCEN y no obligan a incluirlo en el envío. Su presencia no habilita el procesamiento de reemplazos.

### Correspondencia documental e invariantes

Las invariantes comprueban la unicidad de `fullUrl`, la correspondencia uno a uno por identificador entre DocumentReference y Bundle documental, la membresía exacta del SubmissionSet, las referencias de contexto y la autocontención de cada documento. También exigen que las URL FHIR de los documentos sean distintas dentro del envío, por comparación exacta.

En un envío con varios documentos, cada uno conserva su identidad y su Bundle documental. El orden de los miembros del SubmissionSet no tiene significado. Su `entryUUID` se deriva del identificador de cualquiera de sus miembros, según [HCENSubmissionSet](StructureDefinition-hcen-submission-set.html).

Estas invariantes no comprueban la equivalencia clínica ni la correspondencia de versión entre FHIR y CDA. Tampoco comprueban la existencia de documentos históricos en HCEN, que se verifica durante el procesamiento. La validación del envío, la atomicidad y la respuesta se describen en [HCEN ITI-65](hcen-iti-65.html).
