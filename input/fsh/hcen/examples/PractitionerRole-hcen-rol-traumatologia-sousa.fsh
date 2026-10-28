Instance: example-hcen-rol-traumatologia-sousa
InstanceOf: PractitionerRole
Usage: #example
* id = "hcen-rol-traumatologia-sousa"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Guillermo Sousa ejerce como médico traumatólogo, especialidad traumatología y ortopedia, en Administración de los Servicios de Salud del Estado (ASSE).</p></div>"
* practitioner.reference = "Practitioner/hcen-practitioner-sousa"
* practitioner.display = "Guillermo Sousa"
* organization.reference = "Organization/hcen-organizacion-asse"
* organization.display = "ASSE"
* active = true
* code[0].coding[0].system = "http://snomed.info/sct"
* code[0].coding[0].code = #"309343006"
* code[0].coding[0].display = "médico"
* code[0].text = "Médico traumatólogo"
* specialty[0].coding[0].system = "http://snomed.info/sct"
* specialty[0].coding[0].code = #"394801008"
* specialty[0].coding[0].display = "traumatología y ortopedia"
