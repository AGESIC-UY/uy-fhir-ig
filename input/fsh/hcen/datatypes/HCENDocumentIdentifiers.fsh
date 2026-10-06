Profile: HCENDocumentIdentifier
Parent: $MHDuniqueIdIdentifier
Id: hcen-document-identifier
Title: "Identificador documental HCEN"
Description: "OID del documento clínico y de su versión, compartido por sus representaciones FHIR y CDA."
* system = "urn:ietf:rfc:3986" (exactly)
* value obeys hcen-document-oid
* value ^short = "URI urn:oid:2.16.858.2.PRESTADOR.67430.AAAAMMDDHHmmss.EXTRAS"
* value ^definition = "OID del documento clínico. El segmento temporal corresponde a la creación en hora local de Uruguay; los arcos adicionales aseguran unicidad."
* . ^short = "Identificador documental HCEN"
* . ^definition = "OID del documento clínico con use usual y system urn:ietf:rfc:3986."
* use ^short = "Propósito del identificador: usual."
* use ^definition = "IHE MHD UniqueIdIdentifier requiere que use esté presente con el valor usual; este perfil lo fija explícitamente."
* system ^short = "Sistema URI de identificación: urn:ietf:rfc:3986."
* system ^definition = "Sistema URI de identificación: urn:ietf:rfc:3986."

Profile: HCENDocumentReferenceIdentifier
Parent: $MHDentryUUIDIdentifier
Id: hcen-document-reference-identifier
Title: "EntryUUID de DocumentReference HCEN"
Description: "Identificador técnico entryUUID de un DocumentReference HCEN, basado en el perfil IHE MHD EntryUUID Identifier."
* . ^short = "EntryUUID de la referencia documental HCEN"
* . ^definition = "Identificador técnico de la referencia documental, derivado del OID del documento con el formato urn:uuid:1.[oid_documento_clinico]."
* use ^short = "Propósito del identificador: official."
* use ^definition = "IHE MHD EntryUUID Identifier requiere que use esté presente con el valor official."
* system ^short = "Sistema URI de identificación: urn:ietf:rfc:3986."
* system ^definition = "Sistema URI de identificación: urn:ietf:rfc:3986."
* value obeys hcen-document-reference-entryuuid
* value ^short = "URI urn:uuid:1.[oid_documento_clinico]"
* value ^definition = "EntryUUID del DocumentReference formado anteponiendo urn:uuid:1. al OID del documento clínico."

Profile: HCENSubmissionSetIdentifier
Parent: $MHDentryUUIDIdentifier
Id: hcen-submission-set-identifier
Title: "EntryUUID del conjunto de envío HCEN"
Description: "Identificador técnico entryUUID de un SubmissionSet HCEN, basado en el perfil IHE MHD EntryUUID Identifier."
* . ^short = "EntryUUID del conjunto HCEN"
* . ^definition = "Identificador técnico del SubmissionSet, derivado del OID de cualquiera de sus documentos miembros con el formato urn:uuid:2.[oid_documento_clinico]."
* use ^short = "Propósito del identificador: official."
* use ^definition = "IHE MHD EntryUUID Identifier requiere que use esté presente con el valor official."
* system ^short = "Sistema URI de identificación: urn:ietf:rfc:3986."
* system ^definition = "Sistema URI de identificación: urn:ietf:rfc:3986."
* value obeys hcen-submission-set-entryuuid
* value ^short = "URI urn:uuid:2.[oid_documento_clinico]"
* value ^definition = "EntryUUID del SubmissionSet formado anteponiendo urn:uuid:2. al OID del documento clínico de cualquiera de sus documentos miembros, sin selección clínica especial ni orden obligatorio."

Profile: HCENSubmissionSetUniqueIdIdentifier
Parent: $MHDuniqueIdIdentifier
Id: hcen-submission-set-unique-id-identifier
Title: "Identificador global del conjunto de envío HCEN"
Description: "OID global S propio del SubmissionSet, distinto del identificador documental [oid_documento_clinico] y sin imponer una estructura documental."
* system = "urn:ietf:rfc:3986" (exactly)
* value obeys hcen-oid-uri
* value ^short = "OID global S del SubmissionSet en formato urn:oid."
* value ^definition = "Identificador global propio del SubmissionSet como URI urn:oid con arcos numéricos válidos. S es distinto de [oid_documento_clinico] y no exige la estructura OID de los documentos clínicos."
* . ^short = "Identificador global del conjunto HCEN"
* . ^definition = "OID global S del SubmissionSet con use usual y system urn:ietf:rfc:3986, basado en IHE MHD UniqueId Identifier."
* use ^short = "Propósito del identificador: usual."
* use ^definition = "IHE MHD UniqueIdIdentifier requiere que use esté presente con el valor usual."
* system ^short = "Sistema URI de identificación: urn:ietf:rfc:3986."
* system ^definition = "Sistema URI de identificación: urn:ietf:rfc:3986."
