# Consulta documental sin coincidencias - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Bundle: Consulta documental sin coincidencias



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "hcen-consulta-vacia",
  "type" : "searchset",
  "total" : 0,
  "link" : [{
    "relation" : "self",
    "url" : "https://example.org/plataforma/DocumentReference?patient.identifier=urn%3Aoid%3A2.16.858.2.99999999.72768.1%7CSIN-COINCIDENCIAS"
  }]
}

```
