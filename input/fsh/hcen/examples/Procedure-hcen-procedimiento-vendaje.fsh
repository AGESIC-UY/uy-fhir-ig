Instance: example-hcen-procedimiento-vendaje
InstanceOf: Procedure
Usage: #example
* id = "hcen-procedimiento-vendaje"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Vendaje de extremidad superior. Resultado: normal. Paciente sedado durante el procedimiento.</p></div>"
* subject.reference = "Patient/hcen-paciente-gonzalez"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #"229534005"
* code.coding[0].display = "Vendaje de extremidad superior"
* outcome.coding[0].system = "http://snomed.info/sct"
* outcome.coding[0].code = #"280413001"
* outcome.coding[0].display = "resultado normal"
* note[0].text = "Paciente sedado durante el procedimiento"
* status = #"completed"
