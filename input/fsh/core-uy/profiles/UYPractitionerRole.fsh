Profile: UYPractitionerRole
Parent: PractitionerRole
Id: uy-practitioner-role
Title: "Perfil Rol del Profesional de Salud para Uruguay"
Description: "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios."

* practitioner 0..1
* practitioner only Reference(UYPractitioner)

* organization 0..1
* organization only Reference(UYOrganization)

* code 0..*
* code from RolProfesional (example)

* specialty 0..*
* specialty from EspecialidadMedica (preferred)

* location 0..*


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

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Perfil Rol del Profesional de Salud para Uruguay"
* . ^definition = "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios."
