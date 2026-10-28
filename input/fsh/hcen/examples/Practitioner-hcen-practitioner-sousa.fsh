Instance: example-hcen-practitioner-sousa
InstanceOf: Practitioner
Usage: #example
* id = "hcen-practitioner-sousa"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Guillermo Sousa. Cédula de ejemplo 87600000.</p></div>"
* identifier[0].type.coding[0].code = #"NI"
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding[0].display = "National unique individual identifier"
* identifier[0].system = "urn:oid:2.16.858.2.10000675.68909"
* identifier[0].value = "87600000"
* identifier[0].use = #"official"
* name[0].given[0] = "Guillermo"
* name[0].family = "Sousa"
* name[0].use = #"official"
* name[0].text = "Guillermo Sousa"
* name[0].family.extension[0].url = "http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido"
* name[0].family.extension[0].valueString = "Sousa"
* active = true
