# example-hcen-diagnostico-desgarro-muscular - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Condition: example-hcen-diagnostico-desgarro-muscular



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "hcen-diagnostico-desgarro-muscular",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-diagnostico"]
  },
  "language" : "es-UY",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "439401001",
      "display" : "Diagnostico"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "262966007",
      "display" : "Desgarro muscular"
    }]
  },
  "subject" : {
    "reference" : "Patient/hcen-paciente-gonzalez"
  },
  "onsetPeriod" : {
    "start" : "2016-08-22"
  }
}

```
