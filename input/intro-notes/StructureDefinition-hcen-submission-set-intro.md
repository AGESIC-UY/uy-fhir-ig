### Agrupación y autoría

Este conjunto enumera todos y solo los DocumentReference miembros del envío, cada uno una única vez y sin significado en el orden. No incluye carpetas ni entradas eliminadas. Su uniqueId es S, un identificador propio distinto de [oid_documento_clinico], y utiliza [HCENSubmissionSetUniqueIdIdentifier](StructureDefinition-hcen-submission-set-unique-id-identifier.html). Su entryUUID técnico obligatorio utiliza HCENSubmissionSetIdentifier con formato `urn:uuid:2.[oid_documento_clinico]`, derivado de [oid_documento_clinico] de cualquiera de sus miembros. Esta forma es una convención histórica HCEN/XDS, no un UUID RFC estándar.

El tipo fijo de List, `submissionset`, identifica la función de la lista y no sustituye su clasificación clínica. `homeCommunityId` identifica la comunidad de origen y es obligatorio.

`source` referencia al HCENPractitionerRole que creó el conjunto. En publicación, ese rol, su Practitioner y su Organization deben estar incluidos como entradas del envío. List admite una sola referencia `source`; los recursos Practitioner u Organization adicionales del Bundle no se interpretan como autores del conjunto ni sustituyen al rol obligatorio.

### Origen del envío

`extension[sourceId].valueIdentifier` utiliza [HCENOrgIdentifier](StructureDefinition-hcen-org-identifier.html). Identifica a la entidad que origina el envío, que puede ser una intermediaria distinta de la organización clínica. El OID completo se informa en `value` con prefijo `urn:oid:`, mientras que `system` es `urn:ietf:rfc:3986`.

### Extensiones IHE reutilizadas

`ihe-designationType` expresa la clasificación clínica del conjunto: su `valueCodeableConcept` se vincula al [EJE 2](ValueSet-vs-type-code.html) con fuerza `extensible` y se mapea a `SubmissionSet.contentTypeCode`. No se publica una extensión local ContentTypeCode que duplique `designationType`.

`ihe-sourceId` identifica al origen del envío mediante el `valueIdentifier` descrito arriba. `ihe-intendedRecipient` identifica destinatarios. Las tres extensiones se reutilizan desde MHD 4.2.3.
