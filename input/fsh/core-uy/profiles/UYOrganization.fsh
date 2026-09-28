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
* identifier[organizationId] only UYAAIdentifier

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
* extension ^short = "Extensiones."
* extension ^definition = "Extensiones."
* modifierExtension ^short = "Extensiones que no pueden ser ignoradas."
* modifierExtension ^definition = "Extensiones que no pueden ser ignoradas."
* identifier ^short = "Identificadores de la organización."
* identifier ^definition = "Identificadores de la organización."
* active ^short = "Si el registro de la organización sigue activo."
* active ^definition = "Si el registro de la organización sigue activo."
* type ^short = "Tipo de organización."
* type ^definition = "Tipo de organización."
* name ^short = "Nombre utilizado para la organización."
* name ^definition = "Nombre utilizado para la organización."
* alias ^short = "Lista de nombres alternativos de la organización."
* alias ^definition = "Lista de nombres alternativos de la organización."
* telecom ^short = "Datos de contacto de la organización."
* telecom ^definition = "Datos de contacto de la organización."
* address ^short = "Direcciones físicas o postales de la organización."
* address ^definition = "Direcciones físicas o postales de la organización."
* partOf ^short = "Organización de la cual forma parte esta organización."
* partOf ^definition = "Organización de la cual forma parte esta organización."
* contact ^short = "Contacto de la organización para un propósito específico."
* contact ^definition = "Contacto de la organización para un propósito específico."
* contact.id ^short = "Identificador del elemento dentro del recurso."
* contact.id ^definition = "Identificador del elemento dentro del recurso."
* contact.extension ^short = "Contenido adicional definido mediante extensiones."
* contact.extension ^definition = "Contenido adicional definido mediante extensiones."
* contact.modifierExtension ^short = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* contact.modifierExtension ^definition = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* contact.purpose ^short = "El tipo de propósito del contacto."
* contact.purpose ^definition = "El tipo de propósito del contacto."
* contact.name ^short = "Nombre asociado con el contacto."
* contact.name ^definition = "Nombre asociado con el contacto."
* contact.telecom ^short = "Detalles de contacto de la persona."
* contact.telecom ^definition = "Detalles de contacto de la persona."
* contact.address ^short = "Dirección física en Uruguay."
* contact.address ^definition = "Dirección física en Uruguay."
* endpoint ^short = "Endpoints técnicos que proveen acceso a servicios operados por la organización."
* endpoint ^definition = "Endpoints técnicos que proveen acceso a servicios operados por la organización."
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
* id ^comment = "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
* implicitRules ^comment = "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
* language ^binding.description = "Idioma humano del contenido."
* language ^comment = "El idioma facilita la indexación y la accesibilidad. No todo el contenido debe estar en el idioma principal. El idioma de la narrativa se indica también en el atributo lang de su elemento div; no se deduce automáticamente de Resource.language."
* type ^binding.description = "Clasificación de la organización."
* name ^comment = "Si cambia el nombre de la organización, puede conservarse el anterior en alias para facilitar las búsquedas."
* alias ^comment = "Los nombres alternativos o históricos no incluyen fechas: facilitan las búsquedas, pero no registran los periodos durante los que se utilizaron."
* telecom ^comment = "No se utiliza el código home. Estos datos corresponden al contacto oficial de la organización, no a las personas que trabajan en ella o la representan."
* address ^comment = "La organización puede tener varias direcciones con distintos usos o periodos de aplicación. No se utiliza el código home."
* contact.purpose ^binding.description = "Propósito para el que se contacta a esta persona."
