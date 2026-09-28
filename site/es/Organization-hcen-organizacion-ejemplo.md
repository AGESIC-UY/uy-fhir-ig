# Organización HCEN de ejemplo - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Organization: Organización HCEN de ejemplo

ANDA. OID institucional utilizado para validar el ejemplo: urn:oid:2.16.858.2.10014456.72768.1.



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hcen-organizacion-ejemplo",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
  },
  "language" : "es",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "XX",
        "display" : "Organization identifier"
      }]
    },
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.858.2.10014456.72768.1"
  }],
  "name" : "ANDA"
}

```
