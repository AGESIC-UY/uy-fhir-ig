Profile: UYPhoneContactPoint
Parent: ContactPoint
Id: uy-phone-contact-point
Title: "Contacto Telefónico (Uruguay)"
Description: "Detalles de contacto telefónico de una persona u organización."

* system 1..1
* system = #phone (exactly)
* value 1..1

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* value ^short = "Número de teléfono específico."
* value ^definition = "Número de teléfono específico."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Contacto Telefónico (Uruguay)"
* . ^definition = "Detalles de contacto telefónico de una persona u organización."
