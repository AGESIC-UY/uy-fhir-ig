Profile: UYEmailContactPoint
Parent: ContactPoint
Id: uy-email-contact-point
Title: "Contacto por Correo Electrónico (Uruguay)"
Description: "Detalles de contacto por correo electrónico de una persona u organización."

* system 1..1
* system = #email (exactly)
* value 1..1

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* value ^short = "Dirección de correo electrónico de contacto."
* value ^definition = "Dirección de correo electrónico de contacto."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Contacto por Correo Electrónico (Uruguay)"
* . ^definition = "Detalles de contacto por correo electrónico de una persona u organización."
