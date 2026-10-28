# example-hcen-procedimiento-oxigeno - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Procedure: example-hcen-procedimiento-oxigeno



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "hcen-procedimiento-oxigeno",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento"]
  },
  "language" : "es-UY",
  "status" : "completed",
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
  "note" : [{
    "text" : "Administración de oxígeno"
  }]
}

```
