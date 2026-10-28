# example-hcen-med-req-paracetamol - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo MedicationRequest: example-hcen-med-req-paracetamol



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "hcen-med-req-paracetamol",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-request"]
  },
  "language" : "es-UY",
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "20921000179102",
      "display" : "Paracetamol 650 mg comprimido"
    }]
  },
  "subject" : {
    "reference" : "Patient/hcen-paciente-gonzalez"
  },
  "requester" : {
    "reference" : "PractitionerRole/hcen-rol-traumatologia-sousa"
  },
  "note" : [{
    "text" : "Suspender en caso de alguna reacción adversa"
  }],
  "dosageInstruction" : [{
    "text" : "1 comprimido de paracetamol 650 mg, vía oral, cada 8 horas durante 5 días, tomar con alimentos",
    "patientInstruction" : "Tomar con alimentos",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 5,
          "unit" : "días",
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        },
        "frequency" : 1,
        "period" : 8,
        "periodUnit" : "h"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration",
        "code" : "PO",
        "display" : "Swallow, oral"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "comprimido",
        "system" : "http://unitsofmeasure.org",
        "code" : "{comprimido}"
      }
    }]
  }]
}

```
