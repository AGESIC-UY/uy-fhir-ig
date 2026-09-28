Invariant: hcen-oid-uri
Description: "El dominio debe ser una URI urn:oid: con arcos numéricos válidos. La autorización del OID se verifica por separado."
Expression: "matches('^urn:oid:([01][.]([0-9]|[1-3][0-9])|2[.](0|[1-9][0-9]*))([.](0|[1-9][0-9]*))*$')"
Severity: #error

Invariant: hcen-institution-oid
Description: "El OID de la institución debe pertenecer al catálogo HCEN publicado."
Expression: "value.memberOf('http://fhir.hcen.gub.uy/ValueSet/vs-prestador-oid-mrn')"
Severity: #error

Invariant: hcen-document-oid
Description: "El identificador documental sigue la estructura OID HCEN, con prestador, fecha local de 14 dígitos y arcos adicionales."
Expression: "matches('^urn:oid:2[.]16[.]858[.]2[.](0|[1-9][0-9]*)[.]67430[.][1-9][0-9]{13}([.](0|[1-9][0-9]*))+$')"
Severity: #error

Invariant: hcen-document-reference-entryuuid
Description: "El entryUUID del DocumentReference se deriva del OID documental con el formato urn:uuid:1.[oid_documento_clinico]."
Expression: "matches('^urn:uuid:1[.]2[.]16[.]858[.]2[.](0|[1-9][0-9]*)[.]67430[.][1-9][0-9]{13}([.](0|[1-9][0-9]*))+$')"
Severity: #error

Invariant: hcen-submission-set-entryuuid
Description: "El entryUUID del SubmissionSet se deriva del OID documental con el formato urn:uuid:2.[oid_documento_clinico]."
Expression: "matches('^urn:uuid:2[.]2[.]16[.]858[.]2[.](0|[1-9][0-9]*)[.]67430[.][1-9][0-9]{13}([.](0|[1-9][0-9]*))+$')"
Severity: #error

Invariant: hcen-reference-unique-id
Description: "Si se repite el identificador documental como identificador usual, debe coincidir con masterIdentifier."
Expression: "identifier.where(use = 'usual').all(system = %resource.masterIdentifier.system and value = %resource.masterIdentifier.value)"
Severity: #error

Invariant: hcen-iti65-fullurl-unique
Description: "Cada fullUrl del envío debe ser único."
Expression: "entry.fullUrl.isDistinct()"
Severity: #error

Invariant: hcen-publication-current
Description: "La publicación inicial contiene referencias documentales en estado current."
Expression: "entry.resource.ofType(DocumentReference).all(status = 'current')"
Severity: #error

Invariant: hcen-publication-no-replace
Description: "El alta inicial no incluye operaciones de reemplazo documental."
Expression: "entry.resource.ofType(DocumentReference).relatesTo.where(code = 'replaces').empty()"
Severity: #error

Invariant: hcen-publication-fhir-links
Description: "Cada URL documental FHIR debe identificar una entrada Bundle del envío."
Expression: "entry.resource.ofType(DocumentReference).content.attachment.url.toString().subsetOf(entry.where(resource is Bundle).fullUrl.toString())"
Severity: #error

Invariant: hcen-publication-cda-links
Description: "Cada referencia CDA debe identificar una entrada Binary del envío."
Expression: "entry.resource.ofType(DocumentReference).content.attachment.extension.where(url = 'http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id').value.ofType(Reference).reference.subsetOf(entry.where(resource is Binary).fullUrl)"
Severity: #error

Invariant: hcen-publication-members
Description: "El SubmissionSet enumera exactamente los DocumentReference del envío."
Expression: "entry.resource.ofType(List).entry.item.reference.toString().subsetOf(entry.where(resource is DocumentReference).fullUrl.toString()) and entry.where(resource is DocumentReference).fullUrl.toString().subsetOf(entry.resource.ofType(List).entry.item.reference.toString())"
Severity: #error
