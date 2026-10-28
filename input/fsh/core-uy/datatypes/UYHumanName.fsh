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
* given ^short = "Nombres de pila en su orden real."
* given ^definition = "Lista ordenada de nombres de pila. given[0] representa el primer nombre, given[1] el segundo nombre y así sucesivamente."
* family.extension[primerApellido] ^short = "Primer apellido de la persona."
* family.extension[primerApellido] ^definition = "Primer apellido de la persona."
* family.extension[segundoApellido] ^short = "Segundo apellido de la persona."
* family.extension[segundoApellido] ^definition = "Segundo apellido de la persona."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Nombre de Persona (Uruguay)"
* . ^definition = "Nombre de una persona optimizado para su visualización y almacenamiento estructurado, con los apellidos discriminados mediante extensiones."
* given ^comment = "El orden de los valores es significativo y debe conservarse: el primer elemento corresponde al primer nombre de la persona, el segundo al segundo nombre y así sucesivamente."
