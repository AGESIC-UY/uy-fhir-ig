Profile: UYPractitioner
Parent: Practitioner
Id: uy-practitioner
Title: "Perfil Profesional de Salud para Uruguay"
Description: "Una persona que está directa o indirectamente involucrada en la provisión de atención médica."

// Identificador del profesional
* identifier 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains ci 0..1
* identifier[ci] only UYCIIdentifier

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
* id ^short = "ID lógico de este artefacto."
* id ^definition = "ID lógico de este artefacto."
* meta ^short = "Metadatos sobre el recurso."
* meta ^definition = "Metadatos sobre el recurso."
* implicitRules ^short = "Conjunto de reglas bajo las cuales se creó este contenido."
* implicitRules ^definition = "Conjunto de reglas bajo las cuales se creó este contenido."
* language ^short = "Idioma del contenido del recurso."
* language ^definition = "Idioma del contenido del recurso."
* text ^short = "Resumen del recurso en texto para interpretación humana."
* text ^definition = "Resumen del recurso en texto para interpretación humana."
* contained ^short = "Recursos inline."
* contained ^definition = "Recursos inline."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* modifierExtension ^short = "Extensiones que no pueden ser ignoradas."
* modifierExtension ^definition = "Extensiones que no pueden ser ignoradas."
* identifier ^short = "Un identificador para esta persona en este rol."
* identifier ^definition = "Un identificador para esta persona en este rol."
* active ^short = "Si el registro de este profesional está activo."
* active ^definition = "Si el registro de este profesional está activo."
* name ^short = "El nombre o nombres asociados con el profesional."
* name ^definition = "El nombre o nombres asociados con el profesional."
* telecom ^short = "Detalles de contacto de la persona."
* telecom ^definition = "Detalles de contacto de la persona."
* address ^short = "Una o más direcciones para el individuo."
* address ^definition = "Una o más direcciones para el individuo."
* gender ^short = "Sexo administrativo."
* gender ^definition = "Sexo administrativo."
* birthDate ^short = "La fecha de nacimiento del profesional."
* birthDate ^definition = "La fecha de nacimiento del profesional."
* photo ^short = "Imagen del profesional."
* photo ^definition = "Imagen del profesional."
* qualification ^short = "Certificaciones oficiales, títulos, licencias o matrículas del profesional."
* qualification ^definition = "Certificaciones oficiales, títulos, licencias o matrículas del profesional."
* qualification.id ^short = "Identificador del elemento dentro del recurso."
* qualification.id ^definition = "Identificador del elemento dentro del recurso."
* qualification.extension ^short = "Contenido adicional definido mediante extensiones."
* qualification.extension ^definition = "Contenido adicional definido mediante extensiones."
* qualification.modifierExtension ^short = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* qualification.modifierExtension ^definition = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* qualification.identifier ^short = "Identificador oficial de la cualificación o matrícula."
* qualification.identifier ^definition = "Identificador oficial de la cualificación o matrícula."
* qualification.code ^short = "Codificación de la cualificación."
* qualification.code ^definition = "Codificación de la cualificación."
* qualification.period ^short = "Periodo durante el cual la cualificación es válida."
* qualification.period ^definition = "Periodo durante el cual la cualificación es válida."
* qualification.issuer ^short = "Organización que otorgó o regula la cualificación."
* qualification.issuer ^definition = "Organización que otorgó o regula la cualificación."
* communication ^short = "Idiomas que el profesional puede usar para comunicarse con los pacientes."
* communication ^definition = "Idiomas que el profesional puede usar para comunicarse con los pacientes."
* identifier[ci] ^short = "Cédula de identidad del profesional."
* identifier[ci] ^definition = "Cédula de identidad del profesional."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* address[uyAddress] ^short = "Dirección física en Uruguay."
* address[uyAddress] ^definition = "Dirección física en Uruguay."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Perfil Profesional de Salud para Uruguay"
* . ^definition = "Una persona que está directa o indirectamente involucrada en la provisión de atención médica."
* id ^comment = "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
* implicitRules ^comment = "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
* language ^binding.description = "Idioma humano del contenido."
* language ^comment = "El idioma facilita la indexación y la accesibilidad. No todo el contenido debe estar en el idioma principal. El idioma de la narrativa se indica también en el atributo lang de su elemento div; no se deduce automáticamente de Resource.language."
* address ^comment = "PractitionerRole no contiene una dirección propia; para ese contexto se utiliza location, que puede tener una dirección."
* gender ^binding.description = "Sexo o género administrativo registrado."
* qualification.code ^binding.description = "Cualificación del profesional para prestar un servicio."
* communication ^binding.description = "Idiomas que utiliza el profesional para comunicarse."
