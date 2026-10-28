# example-uy-profesional-sanchez - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Practitioner: example-uy-profesional-sanchez



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "uy-profesional-sanchez",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner"]
  },
  "language" : "es-UY",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:2.16.858.1.858.68909",
    "value" : "38700001"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Juan Pedro Sánchez Martínez",
    "family" : "Sánchez Martínez",
    "_family" : {
      "extension" : [{
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido",
        "valueString" : "Sánchez"
      },
      {
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido",
        "valueString" : "Martínez"
      }]
    },
    "given" : ["Juan", "Pedro"],
    "prefix" : ["Dr."]
  }]
}

```
