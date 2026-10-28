Instance: example-hcen-servicio-req-reposo
InstanceOf: ServiceRequest
Usage: #example
* id = "hcen-servicio-req-reposo"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Indicación/recomendación: hacer reposo durante las próximas 2 semanas.</p></div>"
* subject.reference = "Patient/hcen-paciente-gonzalez"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #"258061000179103"
* code.coding[0].display = "Indicación/recomendación"
* status = #"active"
* intent = #"plan"
* patientInstruction = "Hacer reposo durante las próximas 2 semanas"
