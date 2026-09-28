# Ya existe un documento con el mismo identificador documental. - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo OperationOutcome: Ya existe un documento con el mismo identificador documental.

Ya existe un documento con el mismo identificador documental.



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "iti65-error-duplicado",
  "language" : "es",
  "issue" : [{
    "severity" : "error",
    "code" : "duplicate",
    "details" : {
      "text" : "Ya existe un documento con el mismo identificador documental."
    }
  }]
}

```
