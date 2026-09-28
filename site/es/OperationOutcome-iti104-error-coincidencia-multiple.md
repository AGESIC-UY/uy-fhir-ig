# El MRN coincide con más de un paciente. - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo OperationOutcome: El MRN coincide con más de un paciente.

El MRN coincide con más de un paciente.



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "iti104-error-coincidencia-multiple",
  "language" : "es",
  "issue" : [{
    "severity" : "error",
    "code" : "multiple-matches",
    "details" : {
      "text" : "El MRN coincide con más de un paciente."
    }
  }]
}

```
