# Rol profesional ficticio HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo PractitionerRole: Rol profesional ficticio HCEN

Lucía Silva ejerce en ANDA a efectos del ejemplo técnico.



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "hcen-rol-ejemplo",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
  },
  "language" : "es",
  "practitioner" : {
    "reference" : "urn:uuid:00000000-0000-4000-8000-000000000002"
  },
  "organization" : {
    "reference" : "urn:uuid:00000000-0000-4000-8000-000000000003"
  }
}

```
