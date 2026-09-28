Extension: PrimerApellido
Id: ext-primer-apellido
Title: "Primer Apellido"
Description: "Primer apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad."
* ^context[0].type = #element
* ^context[0].expression = "HumanName.family"
* value[x] only string

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* id ^short = "Identificador del elemento dentro del recurso."
* id ^definition = "Identificador del elemento dentro del recurso."
* url ^short = "URL canónica que identifica la extensión."
* url ^definition = "URL canónica que identifica la extensión."
* value[x] ^short = "Primer apellido de la persona."
* value[x] ^definition = "Primer apellido de la persona."
