Instance: example-hcen-med-req-paracetamol
InstanceOf: MedicationRequest
Usage: #example
* id = "hcen-med-req-paracetamol"
* meta.profile[0] = "http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-request"
* language = #"es-UY"
* text.status = #"generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\" xml:lang=\"es-UY\"><p>Fármaco: 1 comprimido de paracetamol 650 mg. Vía de administración: vía oral. Cantidad: 1 comprimido. Frecuencia: cada 8 horas. Tomar con alimentos. Duración: 5 días. Observaciones: suspender en caso de alguna reacción adversa.</p></div>"
* medicationCodeableConcept.coding[0].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[0].code = #"20921000179102"
* medicationCodeableConcept.coding[0].display = "Paracetamol 650 mg comprimido"
* subject.reference = "Patient/hcen-paciente-gonzalez"
* requester.reference = "PractitionerRole/hcen-rol-traumatologia-sousa"
* note[0].text = "Suspender en caso de alguna reacción adversa"
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 8
* dosageInstruction[0].timing.repeat.periodUnit = #"h"
* dosageInstruction[0].timing.repeat.boundsDuration.value = 5
* dosageInstruction[0].timing.repeat.boundsDuration.unit = "días"
* dosageInstruction[0].timing.repeat.boundsDuration.system = "http://unitsofmeasure.org"
* dosageInstruction[0].timing.repeat.boundsDuration.code = #"d"
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "comprimido"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #"{comprimido}"
* dosageInstruction[0].text = "1 comprimido de paracetamol 650 mg, vía oral, cada 8 horas durante 5 días, tomar con alimentos"
* dosageInstruction[0].route.coding[0].code = #"PO"
* dosageInstruction[0].route.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"
* dosageInstruction[0].route.coding[0].display = "Swallow, oral"
* dosageInstruction[0].patientInstruction = "Tomar con alimentos"
* intent = #"order"
* status = #"active"
