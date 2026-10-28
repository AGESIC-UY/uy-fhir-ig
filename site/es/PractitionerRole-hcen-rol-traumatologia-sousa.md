# example-hcen-rol-traumatologia-sousa - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo PractitionerRole: example-hcen-rol-traumatologia-sousa



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "hcen-rol-traumatologia-sousa",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
  },
  "language" : "es-UY",
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/hcen-practitioner-sousa",
    "display" : "Guillermo Sousa"
  },
  "organization" : {
    "reference" : "Organization/hcen-organizacion-asse",
    "display" : "ASSE"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309343006",
      "display" : "médico"
    }],
    "text" : "Médico traumatólogo"
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394801008",
      "display" : "traumatología y ortopedia"
    }]
  }]
}

```
