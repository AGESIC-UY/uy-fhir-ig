Extension: AmountOfStudies
Id: ext-amount-of-studies
Title: "Cantidad de Estudios"
Description: "Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only positiveInt
* extension 0..0
* value[x] 1..1

* . ^short = "Cantidad de Estudios"
* . ^definition = "Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies."
* value[x] ^short = "Cantidad de Estudios"
* value[x] ^definition = "Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies."
