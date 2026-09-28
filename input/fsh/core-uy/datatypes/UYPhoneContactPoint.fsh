Profile: UYPhoneContactPoint
Parent: ContactPoint
Id: uy-phone-contact-point
Title: "Contacto Telefónico (Uruguay)"
Description: "Detalles de contacto telefónico de una persona u organización."

* system 1..1
* system = #phone (exactly)
* value 1..1
* use ^short = "Propósito del contacto: home | work | temp | old | mobile."
* use ^definition = "Propósito o contexto de uso del contacto: hogar, trabajo, temporal, anterior o móvil."

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* id ^short = "ID único del elemento dentro del recurso."
* id ^definition = "ID único del elemento dentro del recurso."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* system ^short = "Tipo de sistema de comunicación."
* system ^definition = "Tipo de sistema de comunicación."
* value ^short = "Número de teléfono específico."
* value ^definition = "Número de teléfono específico."
* rank ^short = "Especifica un orden de preferencia de uso. Una prioridad más baja (1) indica mayor preferencia de uso."
* rank ^definition = "Especifica un orden de preferencia de uso. Una prioridad más baja (1) indica mayor preferencia de uso."
* period ^short = "Periodo de validez del contacto."
* period ^definition = "Periodo de validez del contacto."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Contacto Telefónico (Uruguay)"
* . ^definition = "Detalles de contacto telefónico de una persona u organización."
* system ^binding.description = "Medio de comunicación utilizado."
* value ^comment = "El valor puede incluir información adicional, como un número de extensión telefónica o notas sobre el uso del contacto."
* use ^binding.description = "Propósito de uso del dato de contacto."
* use ^comment = "Las aplicaciones pueden considerar vigente un contacto salvo que se indique explícitamente que es temporal o anterior."
* rank ^comment = "El orden de preferencia indicado por rank no necesariamente coincide con el orden de los contactos en la instancia."
