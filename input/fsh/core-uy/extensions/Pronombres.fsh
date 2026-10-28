Extension: Pronombres
Parent: $extPronouns
Id: ext-pronombres
Title: "Pronombres"
Description: "Extensión para representar los pronombres de una persona. Hereda de la extensión de HL7 individual-pronouns."

Context: Patient

* extension[value].value[x] from VSPronombresUY (extensible)

* . ^short = "Pronombres con los que se debe referir al paciente"
* . ^definition = "Pronombres con los que se debe referir al paciente, según lo informado por el paciente o su representante legal. Esta extensión se utiliza para capturar los pronombres preferidos de una persona, independientemente de su sexo biológico o identidad de género."
* extension[value] ^short = "Valor de los pronombres del paciente"
* extension[value].url ^short = "Valor fijo: \"value\""