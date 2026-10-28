Instance: example-hcen-servicio-req-seguimiento
InstanceOf: ServiceRequest
Usage: #example
* id = "hcen-servicio-req-seguimiento"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Fecha de próxima consulta: 02/09/2019. Próxima consulta: revisión a los 10 días. Referencia al alta: consulta de atención primaria.</p></div>"
* subject.reference = "Patient/hcen-paciente-gonzalez"
* occurrencePeriod.start = "2019-09-02"
* status = #"active"
* intent = #"plan"
* patientInstruction = "Revisión a los 10 días. Referencia al alta: consulta de atención primaria."
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #"390906007"
* code.coding[0].display = "Follow-up encounter"
