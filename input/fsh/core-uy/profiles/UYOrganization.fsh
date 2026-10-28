Profile: UYOrganization
Parent: Organization
Id: uy-organization
Title: "Perfil Organización para Uruguay"
Description: "Una agrupación de personas u organizaciones con un propósito común."

* identifier 0..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains organizationId 0..1
* identifier[organizationId] only UYOrgIdentifier

* name 0..1
* partOf only Reference(UYOrganization)

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

// Contacto de la organización
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

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* contact.address ^short = "Dirección física en Uruguay."
* contact.address ^definition = "Dirección física en Uruguay."
* identifier[organizationId] ^short = "Identificador de la organización."
* identifier[organizationId] ^definition = "Identificador de la organización."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* address[uyAddress] ^short = "Dirección física en Uruguay."
* address[uyAddress] ^definition = "Dirección física en Uruguay."
* contact.telecom[phone] ^short = "Detalles de teléfono de contacto."
* contact.telecom[phone] ^definition = "Detalles de teléfono de contacto."
* contact.telecom[email] ^short = "Detalles de correo electrónico de contacto."
* contact.telecom[email] ^definition = "Detalles de correo electrónico de contacto."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Perfil Organización para Uruguay"
* . ^definition = "Una agrupación de personas u organizaciones con un propósito común."
