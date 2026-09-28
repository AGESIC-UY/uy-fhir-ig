# Publicar documentos - Guía de Implementación FHIR de Uruguay v0.1.0

## Publicar documentos

Esta transacción publica los metadatos que permiten descubrir y recuperar uno o más documentos clínicos de un prestador. Toma MHD ITI-65 como referencia y utiliza [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.md) como sobre del envío.

### Actores y secuencia

1. El prestador prepara y conserva las representaciones FHIR y CDA.
1. Completa DocumentReference y agrupa los documentos en un SubmissionSet.
1. Incluye el contexto necesario para procesar el alta y remite el sobre a Plataforma.
1. Plataforma verifica metadatos, identificadores y concordancia entre representaciones.
1. El prestador procesa la aceptación o el error según el contrato que se cierre para publicación.

El paciente debería (SHOULD) registrarse previamente mediante [HCEN-TX-104](hcen-iti-104.md). El respaldo de registro de pacientes de Plataforma no habilita a omitir el MRN ni sustituye la recomendación de registro previo.

### Representaciones y metadatos

**HCEN-PUB-001 / HCEN-DOC-001.** El prestador debe (SHALL) conservar y enviar ambas representaciones: un Bundle documental FHIR, cuya primera entrada sea Composition, y un [Binary con CDA](StructureDefinition-hcen-cda-binary.md). En esta versión no se publica un perfil específico para el Bundle documental. Se admiten CDA de nivel 1 o 3; un PDF debe (SHALL) estar embebido en CDA nivel 1.

**HCEN-DOC-002.** `DocumentReference.content.attachment.url` identifica la representación FHIR. La extensión `binary` de ese Attachment referencia el Binary con CDA. `contentType`, `size`, `hash` y `format` describen la representación FHIR; no describen el CDA. La estructura y los [tres ejes de clasificación](hcen-terminologia.md) están definidos en [HCENDocumentReference](StructureDefinition-hcen-document-reference.md).

**HCEN-PUB-002.** El envío debe (SHALL) aportar los metadatos, las dos representaciones y los recursos referenciados necesarios para procesar el alta. Plataforma no debe completar el envío consultando recursos individuales externos. El documento FHIR debe ser autocontenido respecto de sus referencias clínicas, independientemente del sobre que lo transporta.

| | | |
| :--- | :--- | :--- |
| submissionSet | 1..1 | HCENSubmissionSet |
| documentReference | 1..* | HCENDocumentReference |
| documentBundle | 1..* | Bundle documental FHIR |
| cdaBinary | 1..* | HCENCdaBinary |
| patient, practitioner, practitionerRole, organization | 0..* por tipo | Perfiles HCEN del contexto |
| Otros recursos de contexto necesarios | Según las referencias presentes | Recursos FHIR del intercambio |

Cada DocumentReference debe (SHALL) corresponder a un documento FHIR y a su CDA. El SubmissionSet debe (SHALL) listar los documentos del envío. Sus recursos referenciados de contexto pueden representarse mediante entradas del sobre o recursos contenidos cuando corresponda; el término **UnContained** no obliga a usar `contained` ni permite dejar sin resolver el contexto necesario.

La relación histórica `relatesTo` no activa una inclusión recursiva de todos los documentos anteriores. La clasificación definitiva de referencias históricas y externas queda pendiente; el perfil no incorpora una regla que obligue a expandir toda esa historia.

### Identificación y concordancia

**HCEN-ID-002 / HCEN-ID-004.** Los identificadores y sus ubicaciones se especifican en [Identificadores documentales](hcen-identificadores.md). Un SubmissionSet debe (SHALL) incluir uno o más documentos y utiliza perfiles diferentes para su entryUUID técnico y su uniqueId documental.

**HCEN-PUB-003.** Plataforma debe (SHALL) rechazar los errores de los recursos del intercambio distintos del documento clínico. Debe comprobar la concordancia mínima de paciente, identificador documental y versión entre FHIR, CDA y metadatos. No se exige una comparación clínica exhaustiva entre ambas representaciones. La política sobre errores internos del documento clínico permanece pendiente.

**HCEN-PUB-004.** Plataforma no debe (SHALL NOT) registrar dos documentos con el mismo identificador. Un reenvío de un documento registrado debe (SHALL) producir un error; no se define como alta idempotente. El prestador no debería (SHOULD NOT) eludir esta regla asignando otro identificador al mismo documento.

### Solicitud y respuesta propuestas

```
POST [base-publicacion]
Content-Type: application/fhir+json
Accept: application/fhir+json

{ recurso HCENProvideDocumentBundle }

```

El perfil conserva `type = transaction` y entradas POST como propuesta basada en [MHD 4.2.3](https://profiles.ihe.net/ITI/MHD/4.2.3/ITI-65.html). Se aparta del slicing cerrado de IHE para incorporar el contexto HCEN y las representaciones simultáneas; deriva de Bundle, no del perfil IHE.

Una transacción REST FHIR implica atomicidad y una respuesta `transaction-response` correlacionada con todas las entradas. Sin embargo, la decisión HCEN de no almacenar los documentos en Plataforma requiere precisar cómo se procesan los POST de Bundle y Binary y los recursos de contexto. **Esta versión no define una respuesta exitosa operativa ni afirma que esos recursos se creen de forma persistente.** No debe interpretarse el sobre como contrato de un servidor FHIR genérico ya cerrado.

El [ejemplo de duplicado](OperationOutcome-iti65-error-duplicado.md) usa `issue.code = duplicate` para describir el problema. El estado HTTP y la codificación local definitiva quedan pendientes.

### Verificación y pendientes de cierre

Las pruebas deben comprobar el listado del SubmissionSet, la resolución de las dos representaciones, la ausencia de duplicados, la identidad del paciente y la concordancia de identificador y versión. La obligatoriedad del Binary está vigente en este borrador, aunque su envío se señaló para revisión futura.

Antes del uso operativo deben cerrarse: persistencia y atomicidad, formato de respuesta, registro de respaldo del paciente, alcance exacto de autocontención, validación clínica y códigos HTTP de error. Si la publicación se implementa como operación específica y no como transacción REST, deberá ajustarse el perfil y definirse el contrato de esa operación; no basta con cambiar la URL.

Ver el [ejemplo completo de sobre](Bundle-hcen-publicacion-ejemplo.md), preparado para revisión y todavía sin validación del Publisher.

