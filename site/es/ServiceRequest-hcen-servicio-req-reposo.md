# example-hcen-servicio-req-reposo - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo ServiceRequest: example-hcen-servicio-req-reposo



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "hcen-servicio-req-reposo",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request"]
  },
  "language" : "es-UY",
  "status" : "active",
  "intent" : "plan",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258061000179103",
      "display" : "Indicación/recomendación"
    }]
  },
  "subject" : {
    "reference" : "Patient/hcen-paciente-gonzalez"
  },
  "patientInstruction" : "Hacer reposo durante las próximas 2 semanas"
}

```
