Profile: UYAAIdentifier
Parent: Identifier
Id: uy-aa-identifier
Title: "Identificador de Organización"
Description: "Identificador numérico o alfanumérico único asignado de forma oficial o local a una organización."

* type 1..1
* type = $v2-0203#XX "Organization identifier" 
* system 1..1
* value 1..1
* assigner only Reference(UYOrganization)

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* id ^short = "ID lógico de este artefacto."
* id ^definition = "ID lógico de este artefacto."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* use ^short = "El propósito o estatus de este identificador."
* use ^definition = "El propósito o estatus de este identificador."
* type ^short = "Codificación del tipo de identificador."
* type ^definition = "Codificación del tipo de identificador."
* system ^short = "Namespace/URI que define de manera unívoca el sistema emisor del identificador."
* system ^definition = "Namespace/URI que define de manera unívoca el sistema emisor del identificador."
* value ^short = "El valor alfanumérico o numérico único del identificador."
* value ^definition = "El valor alfanumérico o numérico único del identificador."
* period ^short = "Periodo de validez del identificador."
* period ^definition = "Periodo de validez del identificador."
* assigner ^short = "Organización que emite, administra o es responsable del identificador."
* assigner ^definition = "Organización que emite, administra o es responsable del identificador."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Identificador de Organización"
* . ^definition = "Identificador numérico o alfanumérico único asignado de forma oficial o local a una organización."
* use ^binding.description = "Propósito de uso del identificador."
* use ^comment = "Las aplicaciones pueden considerar permanente un identificador salvo que se indique explícitamente que es temporal."
* type ^binding.description = "Categoría del identificador, utilizada para elegirlo según el propósito."
* system ^comment = "Identifier.system distingue siempre entre mayúsculas y minúsculas."
* assigner ^comment = "La organización emisora puede representarse únicamente mediante display, sin incluir reference."
* type.id ^short = "Identificador del elemento."
* type.id ^definition = "Identificador del elemento para referencias internas dentro del recurso."
* type.extension ^short = "Extensiones del elemento."
* type.extension ^definition = "Información adicional definida mediante extensiones."
* type.coding ^short = "Codificación del concepto."
* type.coding ^definition = "Representación del concepto mediante un código de un sistema terminológico."
* type.coding.id ^short = "Identificador del elemento."
* type.coding.id ^definition = "Identificador del elemento para referencias internas dentro del recurso."
* type.coding.extension ^short = "Extensiones del elemento."
* type.coding.extension ^definition = "Información adicional definida mediante extensiones."
* type.coding.system ^short = "Sistema de codificación."
* type.coding.system ^definition = "URI que identifica el sistema terminológico que define el código."
* type.coding.version ^short = "Versión del sistema de codificación."
* type.coding.version ^definition = "Versión del sistema terminológico utilizada para interpretar el código."
* type.coding.code ^short = "Código del concepto."
* type.coding.code ^definition = "Símbolo definido por el sistema terminológico."
* type.coding.display ^short = "Texto asociado al código."
* type.coding.display ^definition = "Representación legible del código definida por el sistema terminológico."
* type.coding.userSelected ^short = "Código seleccionado por el usuario."
* type.coding.userSelected ^definition = "Indica si el usuario seleccionó directamente esta codificación."
* type.text ^short = "Representación textual del concepto."
* type.text ^definition = "Texto que expresa el significado del concepto."
