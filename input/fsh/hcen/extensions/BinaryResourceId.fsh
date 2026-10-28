Extension: BinaryResourceId
Id: ext-binary-resource-id
Title: "ID del Recurso Binario"
Description: "Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference.content.attachment"
* value[x] only Reference(HCENCdaBinary)
* extension 0..0
* value[x] 1..1

* . ^short = "ID del Recurso Binario"
* . ^definition = "Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68."
* value[x] ^short = "ID del Recurso Binario"
* value[x] ^definition = "Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68."
