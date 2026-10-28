# example-hcen-procedimiento-vendaje - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Procedure: example-hcen-procedimiento-vendaje



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "hcen-procedimiento-vendaje",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento"]
  },
  "language" : "es-UY",
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "229534005",
      "display" : "Vendaje de extremidad superior"
    }]
  },
  "subject" : {
    "reference" : "Patient/hcen-paciente-gonzalez"
  },
  "outcome" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "280413001",
      "display" : "resultado normal"
    }]
  },
  "note" : [{
    "text" : "Paciente sedado durante el procedimiento"
  }]
}

```
