Extension: IdentidadDeGenero
Parent: $extGenderIdentity
Id: ext-identidad-de-genero
Title: "Identidad de género"
Description: "Extensión para representar la identidad de género de una persona. Hereda de la extensión de HL7 individual-genderIdentity."

Context: Patient

* extension[value].value[x] from http://terminology.hl7.org/ValueSet/gender-identity (extensible)

* . ^short = "Identidad de género del paciente"
* . ^definition = "Identidad de género del paciente, según lo informado por el paciente o su representante legal. Esta extensión se utiliza para capturar la identidad de género de una persona, independientemente de su sexo biológico o pronombres preferidos."
* extension[value] ^short = "Valor de la identidad de género del paciente"
* extension[value].url ^short = "Valor fijo: \"value\""