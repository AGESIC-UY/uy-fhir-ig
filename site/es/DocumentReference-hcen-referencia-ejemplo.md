# Metadatos documentales ficticios HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo DocumentReference: Metadatos documentales ficticios HCEN

Metadatos de un documento ficticio de Ana Pérez Gómez. Incluye referencias a FHIR y CDA, autoría de Lucía Silva y custodia de ANDA a efectos del ejemplo técnico.



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "hcen-referencia-ejemplo",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"]
  },
  "language" : "es",
  "extension" : [{
    "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id",
    "valueIdentifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.858.2.99999999.1"
    }
  }],
  "masterIdentifier" : {
    "use" : "usual",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
  },
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:1.2.16.858.2.99999999.67430.20260917100000.1"
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6821000179104"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "34108-1"
    }]
  }],
  "subject" : {
    "reference" : "urn:uuid:00000000-0000-4000-8000-000000000001"
  },
  "date" : "2026-09-17T10:00:00-03:00",
  "author" : [{
    "reference" : "urn:uuid:00000000-0000-4000-8000-000000000004"
  }],
  "custodian" : {
    "reference" : "urn:uuid:00000000-0000-4000-8000-000000000003"
  },
  "securityLabel" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
      "code" : "N"
    }]
  }],
  "content" : [{
    "attachment" : {
      "extension" : [{
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id",
        "valueReference" : {
          "reference" : "urn:uuid:00000000-0000-4000-8000-000000000007"
        }
      }],
      "contentType" : "application/fhir+json",
      "language" : "es-UY",
      "url" : "urn:uuid:00000000-0000-4000-8000-000000000006",
      "title" : "Documento de prueba de interoperabilidad",
      "creation" : "2026-09-17T10:00:00-03:00"
    },
    "format" : {
      "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
      "code" : "urn:ihe:iti:xds:2017:mimeTypeSufficient"
    }
  }],
  "context" : {
    "facilityType" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "22232009"
      }]
    },
    "practiceSetting" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "700232004"
      }]
    },
    "sourcePatientInfo" : {
      "reference" : "urn:uuid:00000000-0000-4000-8000-000000000001"
    }
  }
}

```
