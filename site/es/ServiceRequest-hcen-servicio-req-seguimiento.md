# example-hcen-servicio-req-seguimiento - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo ServiceRequest: example-hcen-servicio-req-seguimiento



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "hcen-servicio-req-seguimiento",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request"]
  },
  "language" : "es-UY",
  "status" : "active",
  "intent" : "plan",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "390906007",
      "display" : "Follow-up encounter"
    }]
  },
  "subject" : {
    "reference" : "Patient/hcen-paciente-gonzalez"
  },
  "occurrencePeriod" : {
    "start" : "2019-09-02"
  },
  "patientInstruction" : "Revisión a los 10 días. Referencia al alta: consulta de atención primaria."
}

```
