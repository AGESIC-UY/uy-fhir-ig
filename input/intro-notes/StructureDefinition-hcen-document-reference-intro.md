### Identificadores y representaciones

`masterIdentifier` conserva el identificador del documento, igual que Composition.identifier y Bundle.identifier. `identifier[entryUUID]` contiene el identificador técnico obligatorio con formato `urn:uuid:1.[oid_documento_clinico]` y utiliza HCENDocumentReferenceIdentifier, derivado de IHE MHD EntryUUID Identifier. La forma 1.[oid_documento_clinico] es una convención histórica HCEN/XDS, no un UUID RFC estándar.

`identifier[uniqueId]` permite repetir el identificador de `masterIdentifier` en la colección de identificadores. Ambas ubicaciones representan el mismo documento: la primera corresponde al identificador documental principal del modelo MHD y la segunda permite expresarlo también en la colección `identifier`. La repetición es opcional; cuando se informa, `system` y `value` deben coincidir.

`attachment.url` refiere al documento FHIR y la extensión `binary` a su CDA. Los campos `contentType`, `size`, `hash` y `format` describen la representación FHIR. En FHIR R4, `Attachment.hash` contiene un hash SHA-1 codificado en base64; no se utiliza para informar el SHA-512 del CDA descrito por la guía XDS. Ver [Identificadores HCEN](hcen-identificadores.html) y [Publicación](hcen-iti-65.html).

### Autoría y relaciones

La autoría incluye al menos un HCENPractitionerRole, que vincula al profesional con su organización. En publicación, los tres recursos deben estar incluidos como entradas del envío. Las referencias directas adicionales a Practitioner u Organization se admiten y se ignoran al determinar la autoría.

Las relaciones históricas pueden apuntar fuera del envío mediante `DocumentReference/{id}` o una URL HTTP(S) absoluta equivalente. El identificador es el `id` lógico del recurso; no se sustituye por el OID documental ni por `Reference.identifier`. Plataforma debe comprobar que el documento referenciado existe en HCEN. El procesamiento de reemplazos no está soportado actualmente: una relación `replaces` se ignora y no modifica el documento anterior.
