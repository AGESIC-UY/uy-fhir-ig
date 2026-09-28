Profile: UYHumanName
Parent: HumanName
Id: uy-human-name
Title: "Nombre de Persona (Uruguay)"
Description: "Nombre de una persona optimizado para su visualización y almacenamiento estructurado, con los apellidos discriminados mediante extensiones."

* family 0..1
* family.extension contains
    PrimerApellido named primerApellido 0..1 and
    SegundoApellido named segundoApellido 0..1 
* given 0..*

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* id ^short = "ID único del elemento dentro del recurso."
* id ^definition = "ID único del elemento dentro del recurso."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* use ^short = "El propósito de uso de este nombre."
* use ^definition = "El propósito de uso de este nombre."
* text ^short = "Especifica el nombre completo tal como debe ser mostrado."
* text ^definition = "Especifica el nombre completo tal como debe ser mostrado."
* family ^short = "Apellidos de la persona."
* family ^definition = "Apellidos de la persona."
* given ^short = "Nombres de pila en su orden real."
* given ^definition = "Lista ordenada de nombres de pila. given[0] representa el primer nombre, given[1] el segundo nombre y así sucesivamente."
* prefix ^short = "Partes del nombre que van antes del mismo."
* prefix ^definition = "Partes del nombre que van antes del mismo."
* suffix ^short = "Partes del nombre que van después del mismo."
* suffix ^definition = "Partes del nombre que van después del mismo."
* period ^short = "Periodo de validez del nombre."
* period ^definition = "Periodo de validez del nombre."
* family.extension ^short = "Contenido adicional para el campo family."
* family.extension ^definition = "Contenido adicional para el campo family."
* family.extension[primerApellido] ^short = "Primer apellido de la persona."
* family.extension[primerApellido] ^definition = "Primer apellido de la persona."
* family.extension[segundoApellido] ^short = "Segundo apellido de la persona."
* family.extension[segundoApellido] ^definition = "Segundo apellido de la persona."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Nombre de Persona (Uruguay)"
* . ^definition = "Nombre de una persona optimizado para su visualización y almacenamiento estructurado, con los apellidos discriminados mediante extensiones."
* use ^binding.description = "Propósito de uso del nombre."
* use ^comment = "Las aplicaciones pueden considerar vigente un nombre salvo que se indique explícitamente que es temporal o anterior."
* text ^comment = "Pueden incluirse tanto el nombre completo como sus partes. Al actualizar el nombre, las aplicaciones deben asegurar que el texto no contenga información que no esté representada en las partes."
* family ^comment = "Los apellidos pueden descomponerse en partes mediante extensiones, según las convenciones culturales aplicables."
* given ^comment = "El orden de los valores es significativo y debe conservarse: el primer elemento corresponde al primer nombre de la persona, el segundo al segundo nombre y así sucesivamente."
