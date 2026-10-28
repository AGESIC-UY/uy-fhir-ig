Instance: example-uy-profesional-sanchez
InstanceOf: Practitioner
Usage: #example
* id = "uy-profesional-sanchez"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p><b>Dr. Juan Pedro Sánchez Martínez</b></p><p>Identificador nacional único: 38700001 (dominio urn:oid:2.16.858.1.858.68909).</p><p>Correo electrónico: juan.sanchez@example.org</p></div>"
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding[0].code = #"NI"
* identifier[0].type.coding[0].display = "National unique individual identifier"
* identifier[0].system = "urn:oid:2.16.858.1.858.68909"
* identifier[0].value = "38700001"
* active = true
* name[0].use = #"official"
* name[0].text = "Juan Pedro Sánchez Martínez"
* name[0].family = "Sánchez Martínez"
* name[0].family.extension[0].url = "http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido"
* name[0].family.extension[0].valueString = "Sánchez"
* name[0].family.extension[1].url = "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido"
* name[0].family.extension[1].valueString = "Martínez"
* name[0].given[0] = "Juan"
* name[0].given[1] = "Pedro"
* name[0].prefix[0] = "Dr."
