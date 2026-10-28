Profile: UYPatient
Parent: Patient
Id: uy-patient
Title: "Perfil Paciente para Uruguay"
Description: "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."

// ──────────────────────────────────────────
// Elementos no utilizados
// ──────────────────────────────────────────

* modifierExtension 0..0

// ──────────────────────────────────────────
// Extensiones
// ──────────────────────────────────────────

* extension contains
    IdentidadDeGenero named identidadDeGenero 0..* and
    Pronombres named pronombres 0..* and
    SexoAlNacer named sexoAlNacer 0..*

// ──────────────────────────────────────────
// Identificadores
// ──────────────────────────────────────────

* identifier 0..*
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open

* identifier contains
    mrn 0..* and
    dni 0..* and
    ppn 0..* 
* identifier[mrn] only UYMRNIdentifier
* identifier[dni] only UYDNIIdentifier
* identifier[ppn] only UYPPNIdentifier

* contact.organization only Reference(UYOrganization)
* generalPractitioner only Reference(UYOrganization or UYPractitioner or UYPractitionerRole)
* managingOrganization only Reference(UYOrganization)
* link.other only Reference(UYPatient or RelatedPerson)

// ──────────────────────────────────────────
// Datos demográficos
// ──────────────────────────────────────────


* name 0..*
* name only UYHumanName

* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 0..* and
    email 0..* 
* telecom[phone] only UYPhoneContactPoint
* telecom[email] only UYEmailContactPoint

* gender 0..1

* birthDate 0..1

// ──────────────────────────────────────────
// Dirección
// ──────────────────────────────────────────

* address 0..*
* address ^slicing.discriminator.type = #profile
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains uyAddress 0..*
* address[uyAddress] only UYAddress

// ──────────────────────────────────────────
// Contacto del paciente
// ──────────────────────────────────────────

* contact.name only UYHumanName

* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom contains
    phone 0..* and
    email 0..*
* contact.telecom[phone] only UYPhoneContactPoint
* contact.telecom[email] only UYEmailContactPoint

* contact.address only UYAddress

// ──────────────────────────────────────────
// Otros datos clínicos y administrativos
// ──────────────────────────────────────────

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* contact.address ^short = "Dirección física o postal de la personas de contacto en Uruguay."
* contact.address ^definition = "Dirección física o postal de la personas de contacto en Uruguay."
* extension[identidadDeGenero] ^short = "Identidad de género."
* extension[identidadDeGenero] ^definition = "Identidad de género."
* extension[pronombres] ^short = "Pronombres con los que se debe referir al paciente."
* extension[pronombres] ^definition = "Pronombres con los que se debe referir al paciente."
* extension[sexoAlNacer] ^short = "Sexo de nacimiento del paciente"
* extension[sexoAlNacer] ^definition = "Sexo asignado al nacer del paciente."
* identifier[mrn] ^short = "Identificador interno del paciente en la organización."
* identifier[mrn] ^definition = "Identificador interno del paciente en la organización."
* identifier[dni] ^short = "Documento nacional de identidad del paciente, según el país emisor."
* identifier[dni] ^definition = "Documento nacional de identidad del paciente, según el país emisor."
* identifier[ppn] ^short = "Pasaporte del paciente."
* identifier[ppn] ^definition = "Pasaporte del paciente."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* address[uyAddress] ^short = "Dirección física en Uruguay."
* address[uyAddress] ^definition = "Dirección física en Uruguay."
* gender ^short = "Sexo administrativo del paciente."
* gender ^definition = "Sexo administrativo del paciente."
* contact.telecom[phone] ^short = "Detalles del teléfono de contacto."
* contact.telecom[phone] ^definition = "Detalles del teléfono de contacto."
* contact.telecom[email] ^short = "Detalles del correo electrónico de contacto."
* contact.telecom[email] ^definition = "Detalles del correo electrónico de contacto."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Perfil Paciente para Uruguay"
* . ^definition = "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."
