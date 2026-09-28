Extension: TelemedicineModality
Id: ext-telemedicine-modality
Title: "Modalidad de Telemedicina"
Description: "Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only Coding
* valueCoding.system 1..1
* valueCoding.code 1..1
* valueCoding.display 0..1
* extension 0..0
* value[x] 1..1

* . ^short = "Modalidad de Telemedicina"
* . ^definition = "Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine."
* value[x] ^short = "Modalidad de Telemedicina"
* value[x] ^definition = "Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine."
