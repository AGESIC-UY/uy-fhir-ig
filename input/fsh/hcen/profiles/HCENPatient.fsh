Profile: HCENPatient
Parent: UYPatient
Id: hcen-patient
Title: "Perfil Paciente para HCEN"
Description: "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."

* implicitRules 0..0
* photo 0..0
* extension contains $extMothersMaidenName named mothersMaidenName 0..0
* extension[mothersMaidenName] ^short = "El segundo apellido no equivale al apellido materno"
* extension[recordedSexOrGender] 0..1 MS
* identifier 1..*
* identifier[mrn] 1..1
* identifier[mrn] only HCENMRNIdentifier
* identifier[ci] 0..1 MS
* identifier[fni] MS
* identifier[ppn] MS
* name 0..1 MS
* telecom MS
* telecom[phone] MS
* telecom[email] MS
* gender MS
* birthDate MS
* address MS
* address[uyAddress] MS

// Descripciones del ODS, adaptadas a las rutas FHIR R4 y al contexto HCEN.
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
* extension[genderIdentity] ^short = "Identidad de género."
* extension[genderIdentity] ^definition = "Identidad de género."
* extension[pronouns] ^short = "Pronombres con los que se debe referir al paciente."
* extension[pronouns] ^definition = "Pronombres con los que se debe referir al paciente."
* extension[recordedSexOrGender] ^short = "Registro de sexo o género; para sexo asignado al nacer se identifica el tipo de registro"
* extension[recordedSexOrGender] ^definition = "Registro de sexo o género; para sexo asignado al nacer se identifica el tipo de registro"
* modifierExtension ^short = "Extensiones que no pueden ser ignoradas si no se entienden."
* modifierExtension ^definition = "Extensiones que no pueden ser ignoradas si no se entienden."
* identifier ^short = "Identificadores para este paciente."
* identifier ^definition = "Identificadores para este paciente."
* identifier[mrn] ^short = "Identificador interno del paciente en la organización."
* identifier[mrn] ^definition = "Identificador interno del paciente en la organización."
* identifier[ci] ^short = "Cédula de identidad del paciente."
* identifier[ci] ^definition = "Cédula de identidad del paciente."
* identifier[ppn] ^short = "Pasaporte del paciente."
* identifier[ppn] ^definition = "Pasaporte del paciente."
* active ^short = "Si el registro de este paciente está activo o no."
* active ^definition = "Si el registro de este paciente está activo o no."
* name ^short = "Nombre o nombres asociados con el paciente."
* name ^definition = "Nombre o nombres asociados con el paciente."
* telecom ^short = "Detalles de contacto de la persona."
* telecom ^definition = "Detalles de contacto de la persona."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* gender ^short = "Sexo administrativo del paciente."
* gender ^definition = "Sexo administrativo del paciente."
* birthDate ^short = "La fecha de nacimiento del individuo."
* birthDate ^definition = "La fecha de nacimiento del individuo."
* deceased[x] ^short = "Indica si el individuo ha fallecido o no."
* deceased[x] ^definition = "Indica si el individuo ha fallecido o no."
* address ^short = "Una o más direcciones para el individuo."
* address ^definition = "Una o más direcciones para el individuo."
* address[uyAddress] ^short = "Dirección física en Uruguay."
* address[uyAddress] ^definition = "Dirección física en Uruguay."
* maritalStatus ^short = "Estado civil legal u oficial del paciente."
* maritalStatus ^definition = "Estado civil legal u oficial del paciente."
* multipleBirth[x] ^short = "Indica si el paciente forma parte de un parto múltiple (gemelo, trillizo, etc.)."
* multipleBirth[x] ^definition = "Indica si el paciente forma parte de un parto múltiple (gemelo, trillizo, etc.)."
* photo ^short = "Imagen o fotografía del paciente."
* photo ^definition = "Imagen o fotografía del paciente."
* contact ^short = "Un contacto (ej. familiar, pareja) para el paciente."
* contact ^definition = "Un contacto (ej. familiar, pareja) para el paciente."
* contact.relationship ^short = "El tipo de relación entre el paciente y el contacto."
* contact.relationship ^definition = "El tipo de relación entre el paciente y el contacto."
* contact.name ^short = "Nombre asociado con la persona de contacto."
* contact.name ^definition = "Nombre asociado con la persona de contacto."
* contact.telecom ^short = "Detalles de contacto para la persona."
* contact.telecom ^definition = "Detalles de contacto para la persona."
* contact.address ^short = "Dirección física o postal de la persona de contacto en Uruguay."
* contact.address ^definition = "Dirección física o postal de la persona de contacto en Uruguay."
* contact.gender ^short = "Sexo administrativo de la persona de contacto."
* contact.gender ^definition = "Sexo administrativo de la persona de contacto."
* contact.organization ^short = "Organización a la que está vinculada la persona de contacto o que la respalda."
* contact.organization ^definition = "Organización a la que está vinculada la persona de contacto o que la respalda."
* contact.period ^short = "Periodo durante el cual este contacto es válido para el paciente."
* contact.period ^definition = "Periodo durante el cual este contacto es válido para el paciente."
* communication ^short = "Idiomas que se pueden usar para comunicarse con el paciente sobre su salud."
* communication ^definition = "Idiomas que se pueden usar para comunicarse con el paciente sobre su salud."
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
* link.other ^short = "El otro recurso Patient o RelatedPerson al que refiere el enlace."
* link.other ^definition = "El otro recurso Patient o RelatedPerson al que refiere el enlace."
* link.type ^short = "El tipo de enlace (replaced-by | replaces | refer | seealso)."
* link.type ^definition = "El tipo de enlace (replaced-by | replaces | refer | seealso)."
* . ^short = "Perfil Paciente para HCEN"
* . ^definition = "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."

* contact.address MS

* extension[mothersMaidenName] ^definition = "El segundo apellido no equivale al apellido materno"
