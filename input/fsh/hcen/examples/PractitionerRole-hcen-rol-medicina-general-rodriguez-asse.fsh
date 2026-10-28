Instance: example-hcen-rol-medicina-general-rodriguez-asse
InstanceOf: PractitionerRole
Usage: #example
* id = "hcen-rol-medicina-general-rodriguez-asse"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Martín Andrés Rodríguez Silva ejerce como médico general, especialidad medicina general, en la Administración de los Servicios de Salud del Estado (ASSE) desde el 01/03/2018.</p></div>"
* active = true
* period.start = "2018-03-01"
* practitioner.reference = "Practitioner/hcen-profesional-rodriguez"
* practitioner.display = "Martín Andrés Rodríguez Silva"
* organization.reference = "Organization/hcen-organizacion-asse"
* organization.display = "ASSE"
* code[0].coding[0].system = "http://snomed.info/sct"
* code[0].coding[0].code = #"59058001"
* code[0].coding[0].display = "médico general"
* specialty[0].coding[0].system = "http://snomed.info/sct"
* specialty[0].coding[0].code = #"394802001"
* specialty[0].coding[0].display = "medicina general"
