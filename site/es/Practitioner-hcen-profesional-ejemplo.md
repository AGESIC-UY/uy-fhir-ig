# Profesional ficticio HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Practitioner: Profesional ficticio HCEN

Lucía Silva. Cédula de ejemplo 12345672.



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "hcen-profesional-ejemplo",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner"]
  },
  "language" : "es",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:2.16.858.2.10000675.68909",
    "value" : "12345672"
  }],
  "name" : [{
    "family" : "Silva",
    "given" : ["Lucía"]
  }]
}

```
