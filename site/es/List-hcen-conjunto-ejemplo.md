# Conjunto de envío ficticio HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo List: Conjunto de envío ficticio HCEN

Conjunto de un documento ficticio de Ana Pérez Gómez, enviado por ANDA a efectos del ejemplo técnico el 17/09/2026.



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "hcen-conjunto-ejemplo",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set"]
  },
  "language" : "es",
  "extension" : [{
    "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "34108-1"
      }]
    }
  },
  {
    "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId",
    "valueIdentifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.858.2.99999999"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:2.2.16.858.2.99999999.67430.20260917100000.1"
  },
  {
    "use" : "usual",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
  }],
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
      "code" : "submissionset"
    }]
  },
  "subject" : {
    "reference" : "urn:uuid:00000000-0000-4000-8000-000000000001"
  },
  "date" : "2026-09-17T10:00:00-03:00",
  "source" : {
    "reference" : "urn:uuid:00000000-0000-4000-8000-000000000004"
  },
  "entry" : [{
    "item" : {
      "reference" : "urn:uuid:00000000-0000-4000-8000-000000000008"
    }
  }]
}

```
