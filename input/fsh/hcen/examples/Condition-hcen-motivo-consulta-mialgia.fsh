Instance: example-hcen-motivo-consulta-mialgia
InstanceOf: Condition
Usage: #example
* id = "hcen-motivo-consulta-mialgia"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-motivo-consulta"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Motivo de consulta: mialgia.</p></div>"
* subject.reference = "Patient/hcen-paciente-gonzalez"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #"68962001"
* code.coding[0].display = "Mialgia"
* category[0].coding[0].code = #"7611000179107"
* category[0].coding[0].system = "http://snomed.info/sct"
* category[0].coding[0].display = "motivo de consulta"
