# example-uy-rol-medicina-general-sanchez-abc - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo PractitionerRole: example-uy-rol-medicina-general-sanchez-abc



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "uy-rol-medicina-general-sanchez-abc",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role"]
  },
  "language" : "es-UY",
  "active" : true,
  "period" : {
    "start" : "2018-03-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/uy-profesional-sanchez",
    "display" : "Dr. Juan Pedro Sánchez Martínez"
  },
  "organization" : {
    "reference" : "Organization/uy-organizacion-abc",
    "display" : "ABC"
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
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+598 99 123 456",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "juan.sanchez@example.org",
    "use" : "work"
  }]
}

```
