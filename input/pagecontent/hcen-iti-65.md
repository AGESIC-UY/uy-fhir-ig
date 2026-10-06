Esta transacción publica los metadatos que permiten descubrir y recuperar uno o más documentos clínicos de un prestador. Utiliza MHD como interfaz FHIR y preserva determinadas convenciones de identificación y metadatos del ecosistema HCEN/XDS. Toma MHD ITI-65 como referencia de diseño, sin declarar conformidad integral con sus capacidades, y utiliza [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html) como Bundle de publicación.

### Actores y secuencia

1. El prestador prepara y conserva las representaciones FHIR y CDA.
2. Completa DocumentReference y agrupa los documentos en un SubmissionSet.
3. Incluye el contexto necesario para procesar la publicación y remite el Bundle de publicación a Plataforma.
4. Plataforma verifica metadatos, identificadores y concordancia entre representaciones.
5. El prestador procesa la aceptación o el error según el contrato que se cierre para publicación.

<figure style="margin:0 0 1em;">
  <img src="hcen-cu-publicar-documentos.svg"
       alt="El prestador conserva el documento en FHIR y CDA en su repositorio y envía el Bundle de publicación a Plataforma, que verifica el envío, registra los metadatos y devuelve la aceptación o un error."
       style="width:100%;max-width:760px;height:auto;"/>
  <figcaption>Publicación de documentos: el contenido permanece en el repositorio del prestador.</figcaption>
</figure>

El paciente debería (SHOULD) registrarse previamente mediante [Registrar o actualizar pacientes](hcen-iti-104.html). El respaldo de registro de pacientes de Plataforma no habilita a omitir el MRN ni sustituye la recomendación de registro previo.

<a id="representaciones"></a>
### Representaciones y metadatos

**HCEN-PUB-001 / HCEN-DOC-001.** El prestador debe (SHALL) conservar ambas representaciones: un Bundle documental FHIR, cuya primera entrada sea Composition, y un CDA recuperable mediante [HCENCdaBinary](StructureDefinition-hcen-cda-binary.html). El Bundle documental debe (SHALL) incluirse en el envío. Binary CDA no debería (SHOULD NOT) enviarse en HCENProvideDocumentBundle. Si llega, se tolera, puede ignorarse y no invalida por sí mismo el envío; la referencia al CDA en los metadatos permanece obligatoria según el perfil. Se admiten CDA de nivel 1 o 3; un PDF debe (SHALL) estar embebido en CDA nivel 1.

**HCEN-DOC-002.** `DocumentReference.content.attachment.url` identifica la representación FHIR. La extensión `binary` de ese Attachment referencia el Binary con CDA. `contentType`, `size`, `hash` y `format` describen la representación FHIR; no describen el CDA. La estructura y los [tres ejes de clasificación](hcen-terminologia.html) están definidos en [HCENDocumentReference](StructureDefinition-hcen-document-reference.html).

La guía XDS describe metadatos del documento CDA. En este intercambio, los campos del Attachment describen los bytes de la representación FHIR indicada en `url`. En particular, FHIR R4 define `Attachment.hash` como SHA-1 codificado en base64; el SHA-512 del CDA indicado por la guía XDS no se informa en ese campo. `attachment.creation` representa la creación documental y `date`, la indexación; no son la misma fecha por definición.

**HCEN-PUB-002.** El envío debe (SHALL) aportar los metadatos, el Bundle documental FHIR y las entradas necesarias para resolver los paths explícitos del contrato de metadatos indicados a continuación. Plataforma no debe completar ese contexto consultando recursos individuales externos. Esta regla no se extiende a toda Reference del Bundle de publicación. El documento FHIR debe ser autocontenido respecto de sus referencias clínicas, independientemente del Bundle de publicación que lo transporta.

| Entrada del Bundle de publicación | Cardinalidad | Recurso |
| --- | --- | --- |
| submissionSet | 1..1 | HCENSubmissionSet |
| documentReference | 1..* | HCENDocumentReference |
| documentBundle | 1..* | Bundle documental FHIR |
| Binary (entrada abierta, sin slice específico) | 0..* | Binary CDA SHOULD NOT enviarse; si llega, se tolera y puede ignorarse |
| patient, practitioner, practitionerRole, organization | 0..* por tipo | Perfiles HCEN del contexto |
| Otros recursos de contexto necesarios | Según las referencias presentes | Recursos FHIR del intercambio |

Cada DocumentReference de publicación enlaza un único Bundle documental FHIR y cada Bundle documental del envío tiene un único DocumentReference: no hay Bundles documentales huérfanos. El identificador [oid_documento_clinico] coincide entre ambos y la Composition raíz. La referencia al CDA permanece según el perfil. Binary CDA no debería (SHOULD NOT) enviarse. Si llega, se tolera y puede ignorarse, sin obligación de correspondencia Binary ↔ metadatos ni cardinalidad 0..0. El SubmissionSet enumera todos y solo los DocumentReference miembros del envío, cada uno una sola vez; el orden no tiene significado. Los recursos de contexto se incluyen según las referencias presentes: no se exige un ejemplar de cada tipo cuando el envío no lo utiliza. Las referencias de metadatos controladas por `hcen-publication-context` deben resolverse a entradas del envío; los recursos contenidos no sustituyen esas entradas. Dentro de cada documento FHIR se admiten referencias a recursos contenidos cuando la estructura FHIR lo permita.

<a id="referencias-locales"></a>
### Referencias locales del contrato de metadatos

La política de resolución a entradas del Bundle de publicación se aplica a estos paths explícitos:

| Recurso | Paths |
| --- | --- |
| DocumentReference | `subject`, `author`, `authenticator`, `custodian`, extensiones `funder` y `byOrderOf`, `context.sourcePatientInfo` |
| SubmissionSet | `subject`, `source`, `entry.item` (DocumentReference miembros) |
| PractitionerRole utilizado en autoría, autenticación o source | `practitioner`, `organization` |

Los recursos contenidos no sustituyen esas entradas. La regla no obliga a resolver localmente `Identifier.assigner`, endpoints, `Organization.partOf`, `context.encounter`, `intendedRecipient` ni otras referencias administrativas o clínicas fuera de esta lista. Cada Bundle documental conserva su propia regla de autocontención clínica. Las referencias históricas `relatesTo` tienen el tratamiento específico indicado más abajo.

**HCEN-PUB-005.** `DocumentReference.author` debe (SHALL) incluir al menos un HCENPractitionerRole y `SubmissionSet.source` debe (SHALL) referenciar un HCENPractitionerRole. Cada rol de autoría, su Practitioner y su Organization deben (SHALL) estar incluidos como entradas del envío. Las referencias directas adicionales a Practitioner u Organization en `author` se admiten y se ignoran al determinar la autoría. Los recursos adicionales del Bundle tampoco sustituyen el `source` obligatorio del conjunto.

**HCEN-PUB-006.** DocumentReference y SubmissionSet deben (SHALL) informar su comunidad de origen mediante `homeCommunityId`. El período clínico de DocumentReference debe (SHALL) incluir inicio y fin del servicio en `context.period.start` y `context.period.end`.

**HCEN-PUB-007.** Una referencia histórica `relatesTo.target` debe (SHALL) identificar un DocumentReference existente en HCEN mediante `DocumentReference/{id}` o una URL HTTP(S) absoluta equivalente. El `id` es el identificador lógico del recurso, no el OID documental. No se admite sustituir la referencia por `Reference.identifier`. Plataforma debe (SHALL) verificar la existencia y pertenencia del recurso a HCEN al procesar el envío; comprobar la forma de la URL no demuestra esa existencia. El documento anterior puede quedar fuera del Bundle.

El procesamiento de reemplazos no está soportado actualmente. Una relación `replaces` se ignora y no modifica el documento anterior; no constituye una solicitud operativa de reemplazo. Su referencia debe cumplir igualmente HCEN-PUB-007.

### Identificación y concordancia

**HCEN-ID-002 / HCEN-ID-004.** Los identificadores y sus ubicaciones se especifican en [Identificadores documentales](hcen-identificadores.html). Un SubmissionSet debe (SHALL) incluir uno o más documentos y utiliza perfiles diferentes para su entryUUID técnico y su uniqueId documental.

**HCEN-PUB-003.** Plataforma debe (SHALL) rechazar los errores de los recursos del intercambio distintos del documento clínico. Debe comprobar la concordancia mínima de paciente, identificador documental y versión entre FHIR, CDA y metadatos. No se exige una comparación clínica exhaustiva entre ambas representaciones. La política sobre errores internos del documento clínico permanece pendiente.

**HCEN-PUB-004.** Plataforma no debe (SHALL NOT) registrar dos documentos con el mismo identificador. Un reenvío de un documento registrado debe (SHALL) producir un error; no se define como publicación idempotente. El prestador no debería (SHOULD NOT) eludir esta regla asignando otro identificador al mismo documento.

### Solicitud y respuesta propuestas

```http
POST [base-publicacion]
Content-Type: application/fhir+json
Accept: application/fhir+json

{ recurso HCENProvideDocumentBundle }
```

El perfil conserva `type = transaction` y entradas POST como propuesta basada en [MHD 4.2.3](https://profiles.ihe.net/ITI/MHD/4.2.3/ITI-65.html). Se aparta del slicing cerrado de IHE para incorporar el contexto HCEN y las representaciones simultáneas; deriva de Bundle, no del perfil IHE.

Una transacción REST FHIR implica atomicidad y una respuesta `transaction-response` correlacionada con todas las entradas. Sin embargo, la decisión HCEN de no almacenar los documentos en Plataforma requiere precisar cómo se procesan los POST de Bundle y Binary y los recursos de contexto. **Esta versión no define una respuesta exitosa operativa ni afirma que esos recursos se creen de forma persistente.** No debe interpretarse el Bundle de publicación como contrato de un servidor FHIR genérico ya cerrado.

El ejemplo de duplicado (material de desarrollo reservado para una versión futura) usa `issue.code = duplicate` para describir el problema. El estado HTTP y la codificación local definitiva quedan pendientes.

<a id="pendientes"></a>
### Verificación y pendientes de cierre

Las pruebas deben comprobar el listado del SubmissionSet, la resolución de los paths explícitos de metadatos y la autocontención de los documentos FHIR, la autoría mediante rol profesional, las referencias históricas, la ausencia de duplicados, la identidad del paciente y la concordancia de identificador y versión. Deben cubrir envíos sin Binary y envíos que lo incluyan, comprobando que se tolera y puede ignorarse, sin exigir correspondencia Binary ↔ metadatos.

Antes del uso operativo deben cerrarse: persistencia y atomicidad, formato de respuesta, registro de respaldo del paciente, validación clínica y códigos HTTP de error. Si la publicación se implementa como operación específica y no como transacción REST, deberá ajustarse el perfil y definirse el contrato de esa operación; no basta con cambiar la URL.

El ejemplo completo de Bundle de publicación queda reservado como material de desarrollo para una versión futura, pendiente de revisión y validación integral del Publisher.
