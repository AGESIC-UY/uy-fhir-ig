Extension: BinaryResourceId
Id: ext-binary-resource-id
Title: "ID del Recurso Binario"
Description: "Referencia al recurso Binary que contiene la representación CDA del documento clínico."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference.content.attachment"
* value[x] only Reference(HCENCdaBinary)
* extension 0..0
* value[x] 1..1

* . ^short = "ID del Recurso Binario"
* . ^definition = "Referencia al recurso Binary que contiene la representación CDA del documento clínico."
* value[x] ^short = "ID del Recurso Binario"
* value[x] ^definition = "Referencia al recurso Binary que contiene la representación CDA del documento clínico."
