Invariant: hcen-oid-uri
Description: "El identificador debe ser una URI urn:oid: con arcos numéricos válidos. La autorización del OID se verifica por separado."
Expression: "matches('^urn:oid:([01][.]([0-9]|[1-3][0-9])|2[.](0|[1-9][0-9]*))([.](0|[1-9][0-9]*))*$')"
Severity: #error

Invariant: hcen-oid-aa
Description: "La AA debe tener el formato urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno], con arcos numéricos válidos. La autorización del OID se verifica por separado."
Expression: "matches('^urn:oid:2[.]16[.]858[.]2[.](0|[1-9][0-9]*)[.]72768[.](0|[1-9][0-9]*)$')"
Severity: #error

Invariant: hcen-org-oid
Description: "El value debe ser una URI OID descendiente de las ramas de organizaciones UNAOID 2.16.858.0.0 (Estado), 2.16.858.0.1 (personas públicas no estatales) o 2.16.858.0.2 (empresas y organizaciones privadas). El formato no acredita asignación ni autorización del OID."
Expression: "matches('^urn:oid:2[.]16[.]858[.]0[.][012]([.](0|[1-9][0-9]*))+$')"
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

Invariant: hcen-fullurl-unique
Description: "Regla local HCEN: cada fullUrl debe ser único, incluso entre recursos con meta.versionId diferentes."
Expression: "entry.fullUrl.select(toString()).isDistinct()"
Severity: #error

Invariant: hcen-publication-current
Description: "La publicación inicial contiene referencias documentales en estado current."
Expression: "entry.resource.ofType(DocumentReference).all(status = 'current')"
Severity: #error

Invariant: hcen-publication-fhir-links
Description: "La correspondencia documental es uno a uno: identificadores completos y distintos en ambos lados y la misma cantidad de DocumentReference y Bundles documentales. Las URL originales FHIR son distintas dentro del envío por comparación exacta. Se complementa con hcen-publication-document-identifier."
Expression: "entry.resource.ofType(DocumentReference).content.attachment.url.select(toString()).isDistinct() and entry.resource.ofType(DocumentReference).all(masterIdentifier.system.exists() and masterIdentifier.value.exists()) and entry.resource.ofType(Bundle).where(type = 'document').all(identifier.system.exists() and identifier.value.exists()) and entry.resource.ofType(DocumentReference).select((masterIdentifier.system.toString().length().toString() & ':' & masterIdentifier.system.toString()) & (masterIdentifier.value.toString().length().toString() & ':' & masterIdentifier.value.toString())).isDistinct() and entry.resource.ofType(Bundle).where(type = 'document').select((identifier.system.toString().length().toString() & ':' & identifier.system.toString()) & (identifier.value.toString().length().toString() & ':' & identifier.value.toString())).isDistinct() and entry.resource.ofType(DocumentReference).count() = entry.resource.ofType(Bundle).where(type = 'document').count()"
Severity: #error

Invariant: hcen-publication-members
Description: "El SubmissionSet enumera todos y solo los DocumentReference del envío por fullUrl exacto, una única vez cada uno y sin imponer orden."
Expression: "entry.resource.ofType(List).entry.item.all(reference.exists()) and entry.resource.ofType(List).entry.item.reference.select(toString()).isDistinct() and entry.resource.ofType(List).entry.item.reference.select(toString()).subsetOf(%context.entry.where(resource is DocumentReference).fullUrl.select(toString())) and entry.where(resource is DocumentReference).fullUrl.select(toString()).subsetOf(%context.entry.resource.ofType(List).entry.item.reference.select(toString()))"
Severity: #error

Invariant: hcen-historical-reference
Description: "La referencia histórica utiliza DocumentReference/{id} o una URL HTTP(S) absoluta equivalente. La existencia del recurso en HCEN se verifica al procesar el envío."
Expression: "matches('^(DocumentReference/|https?://[^/?#]+(/[^/?#]+)*/DocumentReference/)[A-Za-z0-9.-]{1,64}$')"
Severity: #error

Invariant: hcen-publication-context
Description: "Las referencias explícitas de metadatos HCEN deben resolver a entradas del envío por fullUrl o Tipo/id; no se admiten referencias solo lógicas ni contained como sustituto."
Expression: "(entry.resource.ofType(DocumentReference).select(subject | author | authenticator | custodian | context.sourcePatientInfo | extension.where(url = 'http://fhir.hcen.gub.uy/StructureDefinition/ext-funder' or url = 'http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of').value.ofType(Reference)) | entry.resource.ofType(List).select(subject | source)).all(reference.exists() and reference.select(toString()).subsetOf(%context.entry.fullUrl.select(toString()) | %context.entry.resource.where(id.exists()).select(type().name & '/' & id)))"
Severity: #error

Invariant: hcen-publication-contained
Description: "Las referencias locales del contexto deben identificar recursos contenidos en el recurso que las aloja."
Expression: "entry.resource.where(($this is Bundle).not()).all(descendants().ofType(Reference).reference.where(startsWith('#')).select(substring(1)).subsetOf(contained.id.select(toString())))"
Severity: #error

Invariant: hcen-publication-authors
Description: "La autoría documental incluye un PractitionerRole del envío. Solo los roles usados por author, authenticator o source deben tener Practitioner y Organization como entradas del envío."
Expression: "entry.resource.ofType(DocumentReference).all(author.reference.select(toString()).intersect(%context.entry.where(resource is PractitionerRole).fullUrl.select(toString()) | %context.entry.resource.ofType(PractitionerRole).where(id.exists()).select('PractitionerRole/' & id)).exists()) and entry.where(resource is PractitionerRole).where((fullUrl.select(toString()) | resource.where(id.exists()).select('PractitionerRole/' & id)).intersect((%context.entry.resource.ofType(DocumentReference).select(author | authenticator) | %context.entry.resource.ofType(List).source).reference.select(toString())).exists()).resource.ofType(PractitionerRole).all(practitioner.reference.exists() and organization.reference.exists() and practitioner.reference.select(toString()).subsetOf(%context.entry.where(resource is Practitioner).fullUrl.select(toString()) | %context.entry.resource.ofType(Practitioner).where(id.exists()).select('Practitioner/' & id)) and organization.reference.select(toString()).subsetOf(%context.entry.where(resource is Organization).fullUrl.select(toString()) | %context.entry.resource.ofType(Organization).where(id.exists()).select('Organization/' & id)))"
Severity: #error

Invariant: hcen-document-self-contained
Description: "El Bundle documental resuelve sus referencias clínicas con sus propias entradas o recursos contenidos."
Expression: "type = 'document' and entry.resource.all(descendants().ofType(Reference).all(reference.exists() and (reference.startsWith('#') or reference.select(toString()).subsetOf(%context.entry.fullUrl.select(toString()) | %context.entry.resource.where(id.exists()).select(type().name & '/' & id)))) and descendants().ofType(Reference).reference.where(startsWith('#')).select(substring(1)).subsetOf(contained.id.select(toString())))"
Severity: #error

Invariant: hcen-cnu-single-composition
Description: "El Bundle documental CNU contiene una única Composition. Junto con bdl-11 y el slice compositionCNU 1..1, esa Composition única es necesariamente la HCENConsultaNoUrgente raíz y ocupa la primera entrada."
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity: #error

Invariant: hcen-cnu-document-identifier
Description: "La Composition CNU raíz y su Bundle comparten el identificador documental [oid_documento_clinico], comparado exclusivamente por system y value."
Expression: "identifier.system.select(toString()) = entry.resource.ofType(Composition).identifier.system.select(toString()) and identifier.value.select(toString()) = entry.resource.ofType(Composition).identifier.value.select(toString())"
Severity: #error

Invariant: hcen-publication-document-identifier
Description: "Los pares system y value de masterIdentifier y Bundle.identifier coinciden en ambos sentidos. Junto con la unicidad y cardinalidad de hcen-publication-fhir-links impide asociaciones ambiguas y documentos huérfanos, independientemente de las URL."
Expression: "entry.resource.ofType(DocumentReference).select((masterIdentifier.system.toString().length().toString() & ':' & masterIdentifier.system.toString()) & (masterIdentifier.value.toString().length().toString() & ':' & masterIdentifier.value.toString())).subsetOf(%context.entry.resource.ofType(Bundle).where(type = 'document').select((identifier.system.toString().length().toString() & ':' & identifier.system.toString()) & (identifier.value.toString().length().toString() & ':' & identifier.value.toString()))) and entry.resource.ofType(Bundle).where(type = 'document').select((identifier.system.toString().length().toString() & ':' & identifier.system.toString()) & (identifier.value.toString().length().toString() & ':' & identifier.value.toString())).subsetOf(%context.entry.resource.ofType(DocumentReference).select((masterIdentifier.system.toString().length().toString() & ':' & masterIdentifier.system.toString()) & (masterIdentifier.value.toString().length().toString() & ':' & masterIdentifier.value.toString())))"
Severity: #error

Invariant: hcen-document-reference-entryuuid-d
Description: "El entryUUID de DocumentReference representa 1.[oid_documento_clinico] del masterIdentifier del mismo documento; la forma se valida por separado."
Expression: "('urn:uuid:1.' & masterIdentifier.value.toString().substring(8)).subsetOf(%context.identifier.where(use = 'official' and system = 'urn:ietf:rfc:3986').value.select(toString()))"
Severity: #error

Invariant: hcen-publication-submission-entryuuid-member
Description: "El entryUUID 2.[oid_documento_clinico] del SubmissionSet corresponde al [oid_documento_clinico] de cualquiera de sus DocumentReference miembros efectivos, sin seleccionar primer miembro ni comparar S."
Expression: "entry.resource.ofType(List).identifier.where(use = 'official' and system = 'urn:ietf:rfc:3986' and value.startsWith('urn:uuid:')).value.select('urn:oid:' & substring(11)).subsetOf(%context.entry.where(resource is DocumentReference and fullUrl.select(toString()).subsetOf(%context.entry.resource.ofType(List).entry.item.reference.select(toString()))).resource.ofType(DocumentReference).masterIdentifier.value.select(toString()))"
Severity: #error

// PoC HCEN: restricción suspendida temporalmente para permitir referencias urn:uuid:.
// Conservar para su posible reactivación. Ver docs/hcen-especificacion.md, sección PoC.
// Invariant: hcen-document-retrieval-url
// Description: "La ubicación recuperable de la representación documental debe ser una URL HTTP(S) absoluta con autoridad, sin espacios ni credenciales. No es un fullUrl interno del envío."
// Expression: "matches('^https?://[^/?#@\\\\s]+([/?#][^\\\\s]*)?$')"
// Severity: #error
