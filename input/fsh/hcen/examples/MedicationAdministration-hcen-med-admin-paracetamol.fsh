Instance: example-hcen-med-admin-paracetamol
InstanceOf: MedicationAdministration
Usage: #example
* id = "hcen-med-admin-paracetamol"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-administration"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Fármaco: paracetamol 650 mg comprimido. Se administra 1 comprimido.</p></div>"
* subject.reference = "Patient/hcen-paciente-gonzalez"
* medicationCodeableConcept.coding[0].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[0].code = #"20921000179102"
* medicationCodeableConcept.coding[0].display = "Paracetamol 650 mg comprimido"
* performer[0].function.coding[0].system = "http://terminology.hl7.org/CodeSystem/med-admin-perform-function"
* performer[0].function.coding[0].code = #"performer"
* performer[0].function.coding[0].display = "Performer"
* performer[0].actor.reference = "PractitionerRole/hcen-rol-traumatologia-sousa"
* dosage.dose.value = 1
* dosage.dose.unit = "comprimido"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #"{comprimido}"
* dosage.text = "Se administra 1 comprimido"
* status = #"completed"
* effectiveDateTime = "2019-08-23T10:05:24-03:00"
