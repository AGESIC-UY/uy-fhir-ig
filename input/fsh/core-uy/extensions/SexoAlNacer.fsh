Extension: SexoAlNacer
Parent: $extRecordedSexOrGender
Id: ext-sexo-al-nacer
Title: "Sexo al nacer"
Description: "Extensión para representar el sexo asignado al nacer de una persona. Hereda de la extensión de HL7 individual-recordedSexOrGender."

Context: Patient

* extension[value].value[x] from VSSexoBiologico (extensible)

* extension[type] 1..1
* extension[type].valueCodeableConcept = http://loinc.org#76689-9 "Sex assigned at birth"

* . ^short = "Sexo al nacer del paciente"
* . ^definition = "Sexo asignado al nacer del paciente, según lo informado por el paciente o su representante legal, independientemente de su identidad de género actual."
* extension[value] ^short = "Valor del sexo al nacer del paciente"
* extension[value].url ^short = "Valor fijo: \"value\""
* extension[type] ^short = "Tipo del concepto de sexo o género (fijo: \"Sex assigned at birth\")"
* extension[type].url ^short = "Valor fijo: \"type\""
