# Paciente con DNI nacional y CI HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Patient: Paciente con DNI nacional y CI HCEN

Paciente ficticio con MRN local 12345, DNI nacional y CI HCEN 12345678. El dominio MRN es sintético.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "hcen-paciente-dni-ci",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical record number"
      }]
    },
    "system" : "urn:oid:2.16.858.2.999999.72768.1",
    "value" : "12345"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:2.16.858.1.858.68909",
    "value" : "12345678"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:2.16.858.2.10000675.68909",
    "value" : "12345678"
  }]
}

```
