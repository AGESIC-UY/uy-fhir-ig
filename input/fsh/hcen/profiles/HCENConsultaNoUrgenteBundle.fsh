// ╔══════════════════════════════════════════════════════════════════╗
// ║  PERFIL: HCENConsultaNoUrgenteBundle (Bundle document)            ║
// ║  Documento FHIR de Consulta No Urgente (CNU)                     ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Bundle de tipo `document` que transporta HCENConsultaNoUrgente (la
// Composition raíz) junto con todos los recursos que referencia, para su
// intercambio como documento FHIR dentro de HCEN — la representación FHIR
// que HCENProvideDocumentBundle.entry[documentBundle] envía como `Bundle`
// sin perfilar (input/fsh/hcen/profiles/HCENProvideDocumentBundle.fsh);
// este perfil formaliza esa representación para el caso CNU.
//
// Slicing abierto por perfil sobre resource, con un único slice nombrado
// para HCENConsultaNoUrgente. Los restantes recursos son entradas abiertas.
// La regla base de FHIR para Bundle.type = document (Composition como
// primera entrada, identifier y timestamp obligatorios) ya la aporta
// Parent: Bundle; no se reimplementa aquí (bdl-9/bdl-10/bdl-11).
// bdl-11 exige Composition primera; la regla local exige una sola
// Composition; el slice compositionCNU 1..1 exige que esa única sea CNU.

Profile: HCENConsultaNoUrgenteBundle
Parent: Bundle
Id: hcen-consulta-no-urgente-bundle
Title: "HCEN Documento de Consulta No Urgente"
Description: "Bundle de tipo document que transporta la Composition HCENConsultaNoUrgente y los recursos administrativos y clínicos que referencia, como representación FHIR intercambiable del documento de Consulta No Urgente."
* . ^short = "Documento FHIR de Consulta No Urgente para HCEN"
* . ^definition = "Bundle document con una única Composition HCENConsultaNoUrgente raíz y los recursos por valor que referencia. bdl-11 exige Composition primera; la regla local exige una sola Composition; el slice compositionCNU 1..1 identifica esa única Composition como CNU."

// ──────────────────────────────────────────
// type — fijo a document
// ──────────────────────────────────────────

* type = #document (exactly)
* type ^short = "Documento — fijo a document"

// ──────────────────────────────────────────
// identifier — identificador de versión del documento, igual al de la
// Composition que transporta (Composition.identifier)
// ──────────────────────────────────────────

* identifier 1..1
* identifier only HCENDocumentIdentifier
* identifier ^short = "Identificador de la versión del documento — igual a HCENConsultaNoUrgente.identifier"
* identifier ^definition = "Identificador de la versión del documento — igual a HCENConsultaNoUrgente.identifier"
* identifier.value ^short = "Valor único, formato urn:oid:<OID_DOCUMENTO>"
* identifier.value ^definition = "Valor único, formato urn:oid:<OID_DOCUMENTO>"

// ──────────────────────────────────────────
// timestamp
// ──────────────────────────────────────────

* timestamp 1..1
* timestamp ^short = "Fecha y hora de ensamblado del documento"
* timestamp ^definition = "Fecha y hora de ensamblado del documento"

// ──────────────────────────────────────────
// entry — slicing abierto por perfil, con Composition CNU obligatoria
// ──────────────────────────────────────────

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry.resource 1..1
* entry.fullUrl 1..1
* entry contains compositionCNU 1..1
* entry ^short = "Una única Composition CNU raíz y sus recursos referenciados"
* entry ^definition = "La primera entrada es Composition por bdl-11. La regla local exige una sola Composition y el slice compositionCNU 1..1 exige que sea HCENConsultaNoUrgente. Las restantes entradas contienen recursos administrativos y clínicos referenciados."

// --- CNU raíz: bdl-11 + Composition única + slice compositionCNU 1..1. ---
* entry[compositionCNU].resource only HCENConsultaNoUrgente
* entry[compositionCNU] ^short = "HCENConsultaNoUrgente — documento clínico raíz"

* obeys hcen-fullurl-unique and hcen-cnu-single-composition

* obeys hcen-cnu-document-identifier
