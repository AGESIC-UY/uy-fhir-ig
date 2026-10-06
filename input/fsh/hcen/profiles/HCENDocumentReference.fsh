Profile: HCENDocumentReference
Parent: DocumentReference
Id: hcen-document-reference
Title: "Perfil Document Reference HCEN"
Description: "Referencia documental HCEN con las representaciones CDA y FHIR. Toma IHE MHD como referencia de diseño, sin declarar conformidad con sus perfiles oficiales."

// ─────────────────────────────────────────────────────────
// Extensiones locales de Uruguay
// ─────────────────────────────────────────────────────────

* extension contains
    HomeCommunityId named homeCommunityId 1..1 and
    RepositoryId named repositoryId 1..1 and
    AmountOfStudies named amountOfStudies 0..1 and
    ScannedDocument named scannedDocument 0..1 and
    TelemedicineModality named telemedicine 0..1 and
    Funder named funder 0..* and
    ByOrderOf named byOrderOf 0..*

* extension[homeCommunityId] ^short = "Comunidad de origen del documento."
* extension[repositoryId] ^short = "OID del repositorio que conserva el documento."
* extension[amountOfStudies] ^short = "Cantidad de estudios o procedimientos diagnósticos o terapéuticos del documento."
* extension[scannedDocument] ^short = "Indica si el documento procede de un escaneo."
* extension[telemedicine] ^short = "Modalidad del evento asistencial."
* extension[funder] ^short = "Institución que financia el acto clínico."
* extension[funder].valueReference only Reference(HCENOrganization)
* extension[byOrderOf] ^short = "Institución que indicó realizar el acto asistencial."
* extension[byOrderOf].valueReference only Reference(HCENOrganization)

// ─────────────────────────────────────────────────────────
// Identificadores
// ─────────────────────────────────────────────────────────

* masterIdentifier 1..1
* masterIdentifier only HCENDocumentIdentifier
* masterIdentifier ^short = "OID de la versión documental, compartido por FHIR y CDA."

* identifier 1..*
* identifier ^short = "Identificadores de negocio y técnicos de la referencia documental."
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    entryUUID 1..1 and
    uniqueId 0..1 MS
* identifier[entryUUID] only HCENDocumentReferenceIdentifier
* identifier[entryUUID] ^short = "EntryUUID con formato urn:uuid:1.[oid_documento_clinico]."
* identifier[uniqueId] only HCENDocumentIdentifier
* identifier[uniqueId] ^short = "Repetición opcional del OID documental."

// ─────────────────────────────────────────────────────────
// Estado y tipo
// ─────────────────────────────────────────────────────────

* status 1..1
* status ^short = "Estado de la referencia: current, superseded o entered-in-error."

* type 1..1
* type from VStypeCode (extensible)
* type ^short = "Tipo detallado del documento, correspondiente al EJE 2."
* type ^definition = "Tipo detallado del documento, correspondiente al EJE 2."

* category 1..1
* category from VSclassCode (extensible)
* category ^short = "Tipo genérico del documento, correspondiente al EJE 1."
* category ^definition = "Tipo genérico del documento, correspondiente al EJE 1."

// ─────────────────────────────────────────────────────────
// Paciente y fechas
// ─────────────────────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente al que pertenece el documento."

* date 0..1 MS
* date ^short = "Fecha de indexación del documento"

// ─────────────────────────────────────────────────────────
// Autor, autenticador y custodio
// ─────────────────────────────────────────────────────────

* author 1..* MS
* author only Reference(HCENPractitioner or HCENPractitionerRole or HCENOrganization)
* author ^slicing.discriminator.type = #type
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #open
* author contains practitionerRole 1..* MS
* author[practitionerRole] only Reference(HCENPractitionerRole)
* author[practitionerRole].reference 1..1
* author ^short = "Autoría mediante rol profesional e institución."

* authenticator 0..1
* authenticator only Reference(HCENPractitioner or HCENPractitionerRole or HCENOrganization)
* authenticator ^short = "Profesional, rol u organización que autentica legalmente el documento."

* custodian 0..1
* custodian only Reference(HCENOrganization)
* custodian ^short = "Organización responsable de custodiar el documento"

// ─────────────────────────────────────────────────────────
// Asociaciones
// ─────────────────────────────────────────────────────────

* relatesTo 0..* MS
* relatesTo.target only Reference(HCENDocumentReference)
* relatesTo.target.reference 1..1
* relatesTo.target.reference obeys hcen-historical-reference
* relatesTo ^short = "Relaciones con otros documentos; su presencia no define un flujo de reemplazo."

// ─────────────────────────────────────────────────────────
// Descripción y confidencialidad
// ─────────────────────────────────────────────────────────

* description 0..1
* description ^short = "Descripción legible del documento."

* securityLabel 1..*
* securityLabel from http://hl7.org/fhir/ValueSet/security-labels (extensible)
* securityLabel ^short = "Etiquetas de seguridad y confidencialidad del documento."

// ─────────────────────────────────────────────────────────
// Contenido del documento (attachment)
// ─────────────────────────────────────────────────────────

* content 1..1
* content.attachment 1..1

* content.attachment.extension contains
    BinaryResourceId named binary 1..1
* content.attachment.extension[binary] ^short = "Referencia al Binary que contiene el CDA del mismo documento."

* content.attachment.contentType 1..1
* content.attachment.contentType ^short = "MIME del Bundle FHIR recuperable mediante attachment.url"
* content.attachment.language 1..1
* content.attachment.language ^short = "Idioma del contenido documental expresado mediante BCP-47."
* content.attachment.url 1..1
* content.attachment.url ^short = "Referencia a la representación Bundle FHIR del documento."
* content.attachment.size 0..1
* content.attachment.size ^short = "Tamaño del Bundle FHIR recuperable mediante attachment.url"
* content.attachment.hash 0..1
* content.attachment.hash ^short = "Hash del Bundle FHIR recuperable mediante attachment.url"
* content.attachment.title 0..1
* content.attachment.title ^short = "Título del documento para su presentación."
* content.attachment.creation 1..1
* content.attachment.creation ^short = "Fecha y hora de creación del documento referenciado."

* content.format 1..1
* content.format from FormatCode (preferred)
* content.format ^short = "Reglas de formato del Bundle FHIR recuperable mediante attachment.url"

// ─────────────────────────────────────────────────────────
// Contexto clínico
// ─────────────────────────────────────────────────────────

* context 1..1

* context.event 0..*
* context.event ^short = "Actos clínicos principales documentados."

* context.period 1..1
* context.period.start 1..1
* context.period.end 1..1
* context.period ^short = "Tiempo de servicio que está siendo documentado"

* context.facilityType 1..1
* context.facilityType from http://hl7.org/fhir/ValueSet/c80-facilitycodes (example)
* context.facilityType ^short = "Tipo de centro de salud donde se atendió al paciente."

* context.practiceSetting 1..1
* context.practiceSetting from VSpracticeSetting (extensible)
* context.practiceSetting ^short = "Servicio médico del documento, correspondiente al EJE 3."
* context.practiceSetting ^definition = "Servicio médico del documento, correspondiente al EJE 3."

* context.sourcePatientInfo 1..1
* context.sourcePatientInfo only Reference(HCENPatient)
* context.sourcePatientInfo ^short = "Datos del paciente tal como los informa el prestador de origen."

* context.related 0..*
* context.related ^short = "Identificadores o recursos relacionados con el documento."

// Descripciones del ODS, adaptadas a las rutas FHIR R4 y al contexto HCEN.
* id ^short = "ID lógico de este artefacto."
* id ^definition = "ID lógico de este artefacto."
* meta ^short = "Metadatos sobre el recurso."
* meta ^definition = "Metadatos sobre el recurso."
* implicitRules ^short = "Conjunto de reglas bajo las cuales se creó este contenido."
* implicitRules ^definition = "Conjunto de reglas bajo las cuales se creó este contenido."
* language ^short = "Idioma del contenido del recurso."
* language ^definition = "Idioma del contenido del recurso."
* text ^short = "Resumen del recurso en texto para interpretación humana."
* text ^definition = "Resumen del recurso en texto para interpretación humana."
* contained ^short = "Recursos integrados en línea (inline)."
* contained ^definition = "Recursos integrados en línea (inline)."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* modifierExtension ^short = "Extensiones que no pueden ser ignoradas."
* modifierExtension ^definition = "Extensiones que no pueden ser ignoradas."
* relatesTo.code ^short = "replaces | transforms | signs | appends"
* relatesTo.code ^definition = "replaces | transforms | signs | appends"
* relatesTo.target ^short = "Documento objetivo de la relación."
* relatesTo.target ^definition = "Documento objetivo de la relación."
* content ^short = "El documento referenciado."
* content ^definition = "El documento referenciado."
* content.attachment ^short = "Dónde acceder al documento (URL o Datos)."
* content.attachment ^definition = "Dónde acceder al documento (URL o Datos)."
* content.attachment.extension ^short = "Contenido adicional definido por implementaciones."
* content.attachment.extension ^definition = "Contenido adicional definido por implementaciones."
* content.attachment.data ^short = "Datos en línea (base64)."
* content.attachment.data ^definition = "Datos en línea (base64)."
* context ^short = "Contexto clínico del documento."
* context ^definition = "Contexto clínico del documento."
* context.encounter ^short = "Contexto (episodio/visita) del documento."
* context.encounter ^definition = "Contexto (episodio/visita) del documento."
* . ^short = "Perfil Document Reference HCEN"
* . ^definition = "Referencia documental HCEN con las representaciones CDA y FHIR. Toma IHE MHD como referencia de diseño, sin declarar conformidad con sus perfiles oficiales."

* content.attachment.data 0..0
* content.attachment.contentType from HCENFHIRSerialization (required)
* content.attachment.extension[binary].valueReference.reference 1..1
* obeys hcen-reference-unique-id

* extension[homeCommunityId] ^definition = "Comunidad de origen del documento."
* extension[repositoryId] ^definition = "OID del repositorio que conserva el documento."
* extension[amountOfStudies] ^definition = "Cantidad de estudios o procedimientos diagnósticos o terapéuticos del documento."
* extension[scannedDocument] ^definition = "Indica si el documento procede de un escaneo."
* extension[telemedicine] ^definition = "Modalidad del evento asistencial."
* extension[funder] ^definition = "Institución que financia el acto clínico."
* extension[byOrderOf] ^definition = "Institución que indicó realizar el acto asistencial."
* masterIdentifier ^definition = "OID de la versión documental, compartido por FHIR y CDA."
* identifier ^definition = "Identificadores de negocio y técnicos de la referencia documental."
* identifier[entryUUID] ^definition = "Identificador técnico obligatorio de la referencia documental, derivado del OID clínico con el formato urn:uuid:1.[oid_documento_clinico]."
* identifier[uniqueId] ^definition = "Repetición opcional de masterIdentifier en la colección identifier. Conserva el mismo system y value; no identifica otro documento."
* status ^definition = "Estado de la referencia: current, superseded o entered-in-error."
* subject ^definition = "Paciente al que pertenece el documento."
* author ^definition = "Debe incluir al menos una referencia a HCENPractitionerRole, que vincula al profesional con su institución. Las referencias directas adicionales a Practitioner u Organization se admiten y se ignoran al determinar la autoría."
* authenticator ^definition = "Profesional, rol u organización que autentica legalmente el documento."
* relatesTo ^definition = "Relaciones con otros documentos; su presencia no define un flujo de reemplazo."
* description ^definition = "Descripción legible del documento."
* securityLabel ^definition = "Etiquetas de seguridad y confidencialidad del documento."
* content.attachment.extension[binary] ^definition = "Referencia al Binary que contiene el CDA del mismo documento."
* content.attachment.language ^definition = "Idioma del contenido documental expresado mediante BCP-47."
* content.attachment.url ^definition = "Referencia a la representación Bundle FHIR del documento."
* content.attachment.title ^definition = "Título del documento para su presentación."
* content.attachment.creation ^definition = "Fecha y hora de creación del documento referenciado."
* context.event ^definition = "Actos clínicos principales documentados."
* context.facilityType ^definition = "Tipo de centro de salud donde se atendió al paciente."
* context.sourcePatientInfo ^definition = "Datos del paciente tal como los informa el prestador de origen."
* context.related ^definition = "Identificadores o recursos relacionados con el documento."
* date ^definition = "Fecha de indexación del documento"
* custodian ^definition = "Organización responsable de custodiar el documento"
* content.attachment.contentType ^definition = "MIME del Bundle FHIR recuperable mediante attachment.url"
* content.attachment.size ^definition = "Tamaño del Bundle FHIR recuperable mediante attachment.url"
* content.attachment.hash ^definition = "Hash del Bundle FHIR recuperable mediante attachment.url"
* content.format ^definition = "Reglas de formato del Bundle FHIR recuperable mediante attachment.url"
* context.period ^definition = "Tiempo de servicio que está siendo documentado"

* obeys hcen-document-reference-entryuuid-d
