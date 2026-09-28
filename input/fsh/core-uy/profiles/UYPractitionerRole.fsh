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
* identifier ^short = "Identificadores específicos para este rol/lugar."
* identifier ^definition = "Identificadores específicos para este rol/lugar."
* active ^short = "Si el registro de este rol está activo."
* active ^definition = "Si el registro de este rol está activo."
* period ^short = "El periodo de tiempo durante el cual el profesional está autorizado a actuar en este rol."
* period ^definition = "El periodo de tiempo durante el cual el profesional está autorizado a actuar en este rol."
* practitioner ^short = "Profesional que provee los servicios para la organización."
* practitioner ^definition = "Profesional que provee los servicios para la organización."
* organization ^short = "La organización donde se proveen los servicios."
* organization ^definition = "La organización donde se proveen los servicios."
* code ^short = "Roles que este profesional está autorizado a desempeñar."
* code ^definition = "Roles que este profesional está autorizado a desempeñar."
* specialty ^short = "Especialidades específicas que el profesional ejerce en este rol."
* specialty ^definition = "Especialidades específicas que el profesional ejerce en este rol."
* location ^short = "Lugares físicos donde este profesional provee servicios."
* location ^definition = "Lugares físicos donde este profesional provee servicios."
* healthcareService ^short = "Servicios de salud que este rol provee de forma específica."
* healthcareService ^definition = "Servicios de salud que este rol provee de forma específica."
* telecom ^short = "Detalles de contacto de la persona."
* telecom ^definition = "Detalles de contacto de la persona."
* availableTime ^short = "Tiempos en los que el lugar/servicio está disponible."
* availableTime ^definition = "Tiempos en los que el lugar/servicio está disponible."
* availableTime.id ^short = "Identificador del elemento dentro del recurso."
* availableTime.id ^definition = "Identificador del elemento dentro del recurso."
* availableTime.extension ^short = "Contenido adicional definido mediante extensiones."
* availableTime.extension ^definition = "Contenido adicional definido mediante extensiones."
* availableTime.modifierExtension ^short = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* availableTime.modifierExtension ^definition = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* availableTime.daysOfWeek ^short = "Días de la semana que aplica."
* availableTime.daysOfWeek ^definition = "Días de la semana que aplica."
* availableTime.allDay ^short = "Si está disponible las 24 horas."
* availableTime.allDay ^definition = "Si está disponible las 24 horas."
* availableTime.availableStartTime ^short = "Hora de apertura."
* availableTime.availableStartTime ^definition = "Hora de apertura."
* availableTime.availableEndTime ^short = "Hora de cierre."
* availableTime.availableEndTime ^definition = "Hora de cierre."
* notAvailable ^short = "Periodos en los que no está disponible por razones específicas."
* notAvailable ^definition = "Periodos en los que no está disponible por razones específicas."
* notAvailable.id ^short = "Identificador del elemento dentro del recurso."
* notAvailable.id ^definition = "Identificador del elemento dentro del recurso."
* notAvailable.extension ^short = "Contenido adicional definido mediante extensiones."
* notAvailable.extension ^definition = "Contenido adicional definido mediante extensiones."
* notAvailable.modifierExtension ^short = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* notAvailable.modifierExtension ^definition = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* notAvailable.description ^short = "Razón por la que no está disponible."
* notAvailable.description ^definition = "Razón por la que no está disponible."
* notAvailable.during ^short = "Periodo de tiempo de no disponibilidad."
* notAvailable.during ^definition = "Periodo de tiempo de no disponibilidad."
* availabilityExceptions ^short = "Descripción textual de anomalías en la disponibilidad."
* availabilityExceptions ^definition = "Descripción textual de anomalías en la disponibilidad."
* endpoint ^short = "Endpoints técnicos que proveen acceso a servicios para este rol."
* endpoint ^definition = "Endpoints técnicos que proveen acceso a servicios para este rol."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Perfil Rol del Profesional de Salud para Uruguay"
* . ^definition = "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios."
* id ^comment = "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
* implicitRules ^comment = "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
* language ^binding.description = "Idioma humano del contenido."
* language ^comment = "El idioma facilita la indexación y la accesibilidad. No todo el contenido debe estar en el idioma principal. El idioma de la narrativa se indica también en el atributo lang de su elemento div; no se deduce automáticamente de Resource.language."
* active ^comment = "Si el valor es false, period puede indicar cuándo estuvo activo el rol. Si no se informa period, no puede inferirse ese intervalo."
* code ^comment = "Una persona puede desempeñar más de un rol."
* availableTime ^comment = "Los recursos Schedule y Slot asociados pueden proporcionar información más detallada sobre la disponibilidad."
* availableTime.daysOfWeek ^binding.description = "Días de la semana en que se encuentra disponible."
* availableTime.availableStartTime ^comment = "La zona horaria corresponde al lugar donde se presta el servicio."
