### Identificadores y representaciones

`masterIdentifier` conserva el identificador del documento, igual que Composition.identifier y Bundle.identifier. `identifier[entryUUID]` contiene el identificador técnico obligatorio con formato `urn:uuid:1.[oid_documento_clinico]` y utiliza HCENDocumentReferenceIdentifier, derivado de IHE MHD EntryUUID Identifier. La forma 1.[oid_documento_clinico] es una convención histórica HCEN/XDS, no un UUID RFC estándar.

`identifier[uniqueId]` permite repetir el identificador de `masterIdentifier` en la colección de identificadores. Ambas ubicaciones representan el mismo documento: la primera corresponde al identificador documental principal del modelo MHD y la segunda permite expresarlo también en la colección `identifier`. La repetición es opcional; cuando se informa, `system` y `value` deben coincidir.

<a id="representaciones"></a>
### Ubicaciones y representación documental

En HCEN ITI-65, `content.attachment.url` informa la URL HTTP(S) absoluta original del prestador para recuperar el Bundle documental FHIR. La extensión `binary` del Attachment contiene una referencia al recurso [HCENCdaBinary](StructureDefinition-hcen-cda-binary.html) del prestador que contiene el CDA XML del mismo documento.

El valor de `binary` es una referencia al recurso, no su `id` ni los datos CDA. Consultar [ID del Recurso Binario](StructureDefinition-ext-binary-resource-id.html).

Estas ubicaciones no son los `fullUrl` de las entradas del envío. `fullUrl` identifica cada entrada y puede utilizar `urn:uuid:`. Tampoco deben confundirse con la URL de recuperación que Plataforma devuelve en HCEN ITI-67, cuyo resultado se describe de forma general en la [transacción de consulta](hcen-iti-67.html).

Los campos `contentType`, `size`, `hash` y `format` describen la representación FHIR. En FHIR R4, `Attachment.hash` contiene un hash SHA-1 codificado en base64; no se utiliza para informar el SHA-512 del CDA descrito por la guía XDS. Ver [Identificadores HCEN](hcen-identificadores.html) y [Publicación](hcen-iti-65.html).

`context.period` debe incluir inicio y fin del servicio. El documento informa también la comunidad de origen y el repositorio mediante las extensiones `homeCommunityId` y `repositoryId`.

Las extensiones locales simples requieren un valor cuando están presentes. Una extensión booleana con valor `false` no equivale a omitir un dato desconocido; esta distinción se aplica, por ejemplo, a [Documento Escaneado](StructureDefinition-ext-scanned-document.html).

### Autoría y relaciones

La autoría incluye al menos un HCENPractitionerRole, que vincula al profesional con su organización. En publicación, los tres recursos deben estar incluidos como entradas del envío. Las referencias directas adicionales a Practitioner u Organization se admiten y se ignoran al determinar la autoría.

Las relaciones históricas pueden apuntar fuera del envío mediante `DocumentReference/{id}` o una URL HTTP(S) absoluta equivalente. El identificador es el `id` lógico del recurso; no se sustituye por el OID documental ni por `Reference.identifier`. Plataforma debe comprobar que el documento referenciado existe en HCEN. El procesamiento de reemplazos no está soportado actualmente: una relación `replaces` se ignora y no modifica el documento anterior.
