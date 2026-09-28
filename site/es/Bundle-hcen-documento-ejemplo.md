# Documento FHIR ficticio HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Bundle: Documento FHIR ficticio HCEN



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "hcen-documento-ejemplo",
  "language" : "es",
  "identifier" : {
    "use" : "usual",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
  },
  "type" : "document",
  "timestamp" : "2026-09-17T10:00:00-03:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:00000000-0000-4000-8000-000000000005",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "hcen-composicion-ejemplo",
      "language" : "es",
      "text" : {
        "status" : "generated",
        "div" : "<div xml:lang=\"es\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\"><a name=\"Composition_hcen-composicion-ejemplo\"> </a><p>Documento de prueba de interoperabilidad de Ana Pérez Gómez, emitido por Lucía Silva en ANDA a efectos del ejemplo técnico el 17/09/2026. No contiene observaciones clínicas.</p></div>"
      },
      "identifier" : {
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "34108-1"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:00000000-0000-4000-8000-000000000001"
      },
      "date" : "2026-09-17T10:00:00-03:00",
      "author" : [{
        "reference" : "urn:uuid:00000000-0000-4000-8000-000000000004"
      }],
      "title" : "Documento de prueba de interoperabilidad",
      "confidentiality" : "N",
      "custodian" : {
        "reference" : "urn:uuid:00000000-0000-4000-8000-000000000003"
      },
      "section" : [{
        "title" : "Contenido de prueba",
        "text" : {
          "status" : "generated",
          "div" : "<div xml:lang=\"es\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\"><p>Documento ficticio para pruebas de interoperabilidad. No contiene observaciones clínicas.</p></div>"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:00000000-0000-4000-8000-000000000001",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "hcen-paciente-ejemplo",
      "meta" : {
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      },
      "language" : "es",
      "text" : {
        "status" : "generated",
        "div" : "<div xml:lang=\"es\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\"><a name=\"Patient_hcen-paciente-ejemplo\"> </a><p>Ana Pérez Gómez. MRN-EJEMPLO-001. Registro activo; sexo administrativo femenino; nacimiento 20/05/1985.</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR",
            "display" : "Medical record number"
          }]
        },
        "system" : "urn:oid:2.16.858.2.99999999.72768.1",
        "value" : "MRN-EJEMPLO-001"
      }],
      "active" : true,
      "name" : [{
        "family" : "Pérez Gómez",
        "_family" : {
          "extension" : [{
            "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido",
            "valueString" : "Pérez"
          },
          {
            "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido",
            "valueString" : "Gómez"
          }]
        },
        "given" : ["Ana"]
      }],
      "gender" : "female",
      "birthDate" : "1985-05-20"
    }
  },
  {
    "fullUrl" : "urn:uuid:00000000-0000-4000-8000-000000000002",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "hcen-profesional-ejemplo",
      "meta" : {
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner"]
      },
      "language" : "es",
      "text" : {
        "status" : "generated",
        "div" : "<div xml:lang=\"es\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\"><a name=\"Practitioner_hcen-profesional-ejemplo\"> </a><p>Lucía Silva. Cédula de ejemplo 12345672.</p></div>"
      },
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
  },
  {
    "fullUrl" : "urn:uuid:00000000-0000-4000-8000-000000000003",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "hcen-organizacion-ejemplo",
      "meta" : {
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      },
      "language" : "es",
      "text" : {
        "status" : "generated",
        "div" : "<div xml:lang=\"es\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\"><a name=\"Organization_hcen-organizacion-ejemplo\"> </a><p>ANDA. OID institucional utilizado para validar el ejemplo: urn:oid:2.16.858.2.10014456.72768.1.</p></div>"
      },
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
  },
  {
    "fullUrl" : "urn:uuid:00000000-0000-4000-8000-000000000004",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "hcen-rol-ejemplo",
      "meta" : {
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
      },
      "language" : "es",
      "text" : {
        "status" : "generated",
        "div" : "<div xml:lang=\"es\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\"><a name=\"PractitionerRole_hcen-rol-ejemplo\"> </a><p>Lucía Silva ejerce en ANDA a efectos del ejemplo técnico.</p></div>"
      },
      "practitioner" : {
        "reference" : "urn:uuid:00000000-0000-4000-8000-000000000002"
      },
      "organization" : {
        "reference" : "urn:uuid:00000000-0000-4000-8000-000000000003"
      }
    }
  }]
}

```
