Profile: HCENPatient
Parent: UYPatient
Id: hcen-patient
Title: "Perfil Paciente para HCEN"
Description: "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."

* implicitRules 0..0
* photo 0..0
* extension contains $extMothersMaidenName named mothersMaidenName 0..0
* extension[mothersMaidenName] ^short = "El segundo apellido no equivale al apellido materno"
* extension[sexoAlNacer] 0..1 MS
* identifier 1..*
* identifier[mrn] 1..1
* identifier[mrn] only HCENMRNIdentifier
* identifier contains ci 0..1 MS
* identifier[ci] only HCENCIIdentifier
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
* extension[identidadDeGenero] ^short = "Identidad de género."
* extension[identidadDeGenero] ^definition = "Identidad de género."
* extension[pronombres] ^short = "Pronombres con los que se debe referir al paciente."
* extension[pronombres] ^definition = "Pronombres con los que se debe referir al paciente."
* extension[sexoAlNacer] ^short = "Sexo de nacimiento del paciente"
* extension[sexoAlNacer] ^definition = "Sexo asignado al nacer del paciente, identificado por el tipo de registro LOINC 76689-9."
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
* contact.address ^short = "Dirección física o postal de la persona de contacto en Uruguay."
* contact.address ^definition = "Dirección física o postal de la persona de contacto en Uruguay."
* . ^short = "Perfil Paciente para HCEN"
* . ^definition = "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."


* extension[mothersMaidenName] ^definition = "El segundo apellido no equivale al apellido materno"
