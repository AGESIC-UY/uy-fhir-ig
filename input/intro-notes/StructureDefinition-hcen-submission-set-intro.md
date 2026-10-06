### Agrupación y autoría

Este conjunto enumera todos y solo los DocumentReference miembros del envío, cada uno una única vez y sin significado en el orden. No incluye carpetas ni entradas eliminadas. Su uniqueId es S, un identificador propio distinto de [oid_documento_clinico], y utiliza HCENDocumentIdentifier. Su entryUUID técnico obligatorio utiliza HCENSubmissionSetIdentifier con formato `urn:uuid:2.[oid_documento_clinico]`, derivado de [oid_documento_clinico] de cualquiera de sus miembros. Esta forma es una convención histórica HCEN/XDS, no un UUID RFC estándar.

La clasificación se expresa con la extensión IHE `designationType`. El tipo fijo de List, `submissionset`, identifica la función de la lista y no sustituye esa clasificación. `homeCommunityId` identifica la comunidad de origen y es obligatorio.

`source` referencia al HCENPractitionerRole que creó el conjunto. En publicación, ese rol, su Practitioner y su Organization deben estar incluidos como entradas del envío. List admite una sola referencia `source`; los recursos Practitioner u Organization adicionales del Bundle no se interpretan como autores del conjunto ni sustituyen al rol obligatorio.
