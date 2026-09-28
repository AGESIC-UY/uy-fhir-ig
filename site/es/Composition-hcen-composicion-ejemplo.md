# Composición ilustrativa sin perfil clínico - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Composition: Composición ilustrativa sin perfil clínico

Documento de prueba de interoperabilidad de Ana Pérez Gómez, emitido por Lucía Silva en ANDA a efectos del ejemplo técnico el 17/09/2026. No contiene observaciones clínicas.



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "hcen-composicion-ejemplo",
  "language" : "es",
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

```
