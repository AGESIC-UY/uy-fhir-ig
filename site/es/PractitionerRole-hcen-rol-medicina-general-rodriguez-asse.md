# example-hcen-rol-medicina-general-rodriguez-asse - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo PractitionerRole: example-hcen-rol-medicina-general-rodriguez-asse



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "hcen-rol-medicina-general-rodriguez-asse",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
  },
  "language" : "es-UY",
  "active" : true,
  "period" : {
    "start" : "2018-03-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/hcen-profesional-rodriguez",
    "display" : "Martín Andrés Rodríguez Silva"
  },
  "organization" : {
    "reference" : "Organization/hcen-organizacion-asse",
    "display" : "ASSE"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "59058001",
      "display" : "médico general"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394802001",
      "display" : "medicina general"
    }]
  }]
}

```
