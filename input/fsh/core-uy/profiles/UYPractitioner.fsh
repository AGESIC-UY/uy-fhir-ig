Profile: UYPractitioner
Parent: Practitioner
Id: uy-practitioner
Title: "Perfil Profesional de Salud para Uruguay"
Description: "Una persona que está directa o indirectamente involucrada en la provisión de atención médica."

// Identificador del profesional
* identifier 0..*
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains dni 0..1
* identifier[dni] only UYDNIIdentifier

// Nombre
* name 0..*
* name only UYHumanName

// Telecomunicaciones
* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 0..* and
    email 0..*
* telecom[phone] only UYPhoneContactPoint
* telecom[email] only UYEmailContactPoint

// Dirección
* address 0..*
* address ^slicing.discriminator.type = #profile
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains uyAddress 0..*
* address[uyAddress] only UYAddress

* qualification.issuer only Reference(UYOrganization)

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* identifier[dni] ^short = "Documento nacional de identidad del profesional, según el país emisor."
* identifier[dni] ^definition = "Documento nacional de identidad del profesional, según el país emisor."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* address[uyAddress] ^short = "Dirección física en Uruguay."
* address[uyAddress] ^definition = "Dirección física en Uruguay."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Perfil Profesional de Salud para Uruguay"
* . ^definition = "Una persona que está directa o indirectamente involucrada en la provisión de atención médica."
