Profile: UYPatient
Parent: Patient
Id: uy-patient
Title: "Perfil Paciente para Uruguay"
Description: "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."

// ──────────────────────────────────────────
// Elementos no utilizados
// ──────────────────────────────────────────

* modifierExtension 0..0

// ──────────────────────────────────────────
// Extensiones
// ──────────────────────────────────────────

* extension contains
    $extGenderIdentity named genderIdentity 0..* and
    $extPronouns named pronouns 0..* and
    $extRecordedSexOrGender named recordedSexOrGender 0..* 

// ──────────────────────────────────────────
// Identificadores
// ──────────────────────────────────────────

* identifier 0..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    mrn 0..* and
    ci 0..* and
    ppn 0..* 
* identifier[mrn] only UYMRNIdentifier
* identifier[ci] only UYCIIdentifier
* identifier[ppn] only UYPPNIdentifier

* contact.organization only Reference(UYOrganization)
* generalPractitioner only Reference(UYOrganization or UYPractitioner or UYPractitionerRole)
* managingOrganization only Reference(UYOrganization)
* link.other only Reference(UYPatient or RelatedPerson)

// ──────────────────────────────────────────
// Datos demográficos
// ──────────────────────────────────────────



* name 0..*
* name only UYHumanName

* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 0..* and
    email 0..* 
* telecom[phone] only UYPhoneContactPoint
* telecom[email] only UYEmailContactPoint

* gender 0..1

* birthDate 0..1

// ──────────────────────────────────────────
// Dirección
// ──────────────────────────────────────────

* address 0..*
* address ^slicing.discriminator.type = #profile
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains uyAddress 0..*
* address[uyAddress] only UYAddress

// ──────────────────────────────────────────
// Contacto del paciente
// ──────────────────────────────────────────

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

// ──────────────────────────────────────────
// Otros datos clínicos y administrativos
// ──────────────────────────────────────────

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
* contained ^short = "Recursos integrados en línea (inline)."
* contained ^definition = "Recursos integrados en línea (inline)."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* modifierExtension ^short = "Extensiones que no pueden ser ignoradas si no se entienden."
* modifierExtension ^definition = "Extensiones que no pueden ser ignoradas si no se entienden."
* identifier ^short = "Identificadores para este paciente."
* identifier ^definition = "Identificadores para este paciente."
* active ^short = "Si el registro de este paciente está activo o no."
* active ^definition = "Si el registro de este paciente está activo o no."
* name ^short = "Nombre o nombres asociados con el paciente."
* name ^definition = "Nombre o nombres asociados con el paciente."
* telecom ^short = "Detalles de contacto de la persona."
* telecom ^definition = "Detalles de contacto de la persona."
* gender ^short = "Sexo administrativo del paciente."
* gender ^definition = "Sexo administrativo del paciente."
* birthDate ^short = "La fecha de nacimiento del individuo."
* birthDate ^definition = "La fecha de nacimiento del individuo."
* deceased[x] ^short = "Indica si el individuo ha fallecido o no."
* deceased[x] ^definition = "Indica si el individuo ha fallecido o no."
* address ^short = "Una o más direcciones para el individuo."
* address ^definition = "Una o más direcciones para el individuo."
* maritalStatus ^short = "Estado civil legal u oficial del paciente."
* maritalStatus ^definition = "Estado civil legal u oficial del paciente."
* multipleBirth[x] ^short = "Indica si el paciente forma parte de un parto múltiple (gemelo, trillizo, etc.)."
* multipleBirth[x] ^definition = "Indica si el paciente forma parte de un parto múltiple (gemelo, trillizo, etc.)."
* photo ^short = "Imagen o fotografía del paciente."
* photo ^definition = "Imagen o fotografía del paciente."
* contact ^short = "Un contacto (ej. familiar, pareja) para el paciente."
* contact ^definition = "Un contacto (ej. familiar, pareja) para el paciente."
* contact.id ^short = "Identificador del elemento dentro del recurso."
* contact.id ^definition = "Identificador del elemento dentro del recurso."
* contact.extension ^short = "Contenido adicional definido mediante extensiones."
* contact.extension ^definition = "Contenido adicional definido mediante extensiones."
* contact.modifierExtension ^short = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* contact.modifierExtension ^definition = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* contact.relationship ^short = "El tipo de relación entre el paciente y el contacto."
* contact.relationship ^definition = "El tipo de relación entre el paciente y el contacto."
* contact.name ^short = "Nombre asociado con la persona de contacto."
* contact.name ^definition = "Nombre asociado con la persona de contacto."
* contact.telecom ^short = "Detalles de contacto para la persona."
* contact.telecom ^definition = "Detalles de contacto para la persona."
* contact.address ^short = "Dirección física o postal de la personas de contacto en Uruguay."
* contact.address ^definition = "Dirección física o postal de la personas de contacto en Uruguay."
* contact.gender ^short = "Sexo administrativo de la persona de contacto."
* contact.gender ^definition = "Sexo administrativo de la persona de contacto."
* contact.organization ^short = "Organización a la que está vinculada la persona de contacto o que la respalda."
* contact.organization ^definition = "Organización a la que está vinculada la persona de contacto o que la respalda."
* contact.period ^short = "Periodo durante el cual este contacto es válido para el paciente."
* contact.period ^definition = "Periodo durante el cual este contacto es válido para el paciente."
* communication ^short = "Idiomas que se pueden usar para comunicarse con el paciente sobre su salud."
* communication ^definition = "Idiomas que se pueden usar para comunicarse con el paciente sobre su salud."
* communication.id ^short = "Identificador del elemento dentro del recurso."
* communication.id ^definition = "Identificador del elemento dentro del recurso."
* communication.extension ^short = "Contenido adicional definido mediante extensiones."
* communication.extension ^definition = "Contenido adicional definido mediante extensiones."
* communication.modifierExtension ^short = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* communication.modifierExtension ^definition = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* communication.language ^short = "El idioma específico codificado."
* communication.language ^definition = "El idioma específico codificado."
* communication.preferred ^short = "Indica si el paciente prefiere este idioma sobre los demás."
* communication.preferred ^definition = "Indica si el paciente prefiere este idioma sobre los demás."
* generalPractitioner ^short = "Médico o proveedor clínico de cabecera asignado."
* generalPractitioner ^definition = "Médico o proveedor clínico de cabecera asignado."
* managingOrganization ^short = "Organización que custodia y gestiona activamente el registro del paciente."
* managingOrganization ^definition = "Organización que custodia y gestiona activamente el registro del paciente."
* link ^short = "Vínculos hacia otros registros de Patient que refieren al mismo individuo real."
* link ^definition = "Vínculos hacia otros registros de Patient que refieren al mismo individuo real."
* link.id ^short = "Identificador del elemento dentro del recurso."
* link.id ^definition = "Identificador del elemento dentro del recurso."
* link.extension ^short = "Contenido adicional definido mediante extensiones."
* link.extension ^definition = "Contenido adicional definido mediante extensiones."
* link.modifierExtension ^short = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* link.modifierExtension ^definition = "Extensiones que modifican el significado del elemento y no pueden ignorarse."
* link.other ^short = "El otro recurso Patient o RelatedPerson al que refiere el enlace."
* link.other ^definition = "El otro recurso Patient o RelatedPerson al que refiere el enlace."
* link.type ^short = "Tipo de vínculo entre los registros del paciente."
* link.type ^definition = "Tipo de vínculo entre los registros del paciente."
* extension[genderIdentity] ^short = "Identidad de género."
* extension[genderIdentity] ^definition = "Identidad de género."
* extension[pronouns] ^short = "Pronombres con los que se debe referir al paciente."
* extension[pronouns] ^definition = "Pronombres con los que se debe referir al paciente."
* extension[recordedSexOrGender] ^short = "Conceptos de sexo asignado al nacer"
* extension[recordedSexOrGender] ^definition = "Conceptos de sexo asignado al nacer"
* identifier[mrn] ^short = "Identificador interno del paciente en la organización."
* identifier[mrn] ^definition = "Identificador interno del paciente en la organización."
* identifier[ci] ^short = "Cédula de identidad del paciente."
* identifier[ci] ^definition = "Cédula de identidad del paciente."
* identifier[ppn] ^short = "Pasaporte del paciente."
* identifier[ppn] ^definition = "Pasaporte del paciente."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* address[uyAddress] ^short = "Dirección física en Uruguay."
* address[uyAddress] ^definition = "Dirección física en Uruguay."
* contact.telecom[phone] ^short = "Detalles del teléfono de contacto."
* contact.telecom[phone] ^definition = "Detalles del teléfono de contacto."
* contact.telecom[email] ^short = "Detalles del correo electrónico de contacto."
* contact.telecom[email] ^definition = "Detalles del correo electrónico de contacto."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Perfil Paciente para Uruguay"
* . ^definition = "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."
* id ^comment = "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
* implicitRules ^comment = "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
* language ^binding.description = "Idioma humano del contenido."
* language ^comment = "El idioma facilita la indexación y la accesibilidad. No todo el contenido debe estar en el idioma principal. El idioma de la narrativa se indica también en el atributo lang de su elemento div; no se deduce automáticamente de Resource.language."
* gender ^binding.description = "Sexo o género administrativo registrado."
* deceased[x] ^comment = "La ausencia de este elemento no expresa si la persona ha fallecido. Muchos sistemas interpretan esa ausencia como indicio de que está viva."
* address ^comment = "El paciente puede tener varias direcciones con distintos usos o periodos de aplicación."
* maritalStatus ^binding.description = "Estado civil o situación de pareja de la persona."
* photo ^comment = "Utilizar fotografías de identificación, no fotografías clínicas. Limitar las dimensiones al tamaño de una miniatura y mantener un tamaño de archivo reducido para facilitar las actualizaciones."
* contact ^comment = "Incluye familiares, contactos laborales, tutores y cuidadores. No se utiliza para registrar genealogía ni relaciones familiares que no cumplan una función de contacto."
* contact.relationship ^binding.description = "Relación entre el paciente y su persona de contacto."
* communication.language ^binding.description = "Idioma utilizado para comunicarse con el paciente."
* communication.preferred ^comment = "Identifica el idioma preferido específicamente para comunicar información de salud."
* managingOrganization ^comment = "Existe una única organización responsable de cada registro Patient. Otras organizaciones pueden mantener sus propios registros y vincularlos mediante link o un recurso Person."
* link ^comment = "No se supone que los vínculos entre registros del paciente sean recíprocos."
* link.other ^comment = "Una referencia a RelatedPerson permite asociarlo con el mismo individuo sin utilizar un recurso Person intermedio."
* link.type ^binding.description = "Tipo de vínculo entre este registro del paciente y otro registro."
