# Paciente CORE UY con identificador institucional - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Patient: Paciente CORE UY con identificador institucional

**Persona Ejemplo Prueba**

Identificador institucional: PACIENTE-SINTETICO-001. Sistema emisor: https://example.org/institucion/identificadores/pacientes.

Identificador nacional extranjero de ejemplo: ARG-EJEMPLO-001. Sistema emisor: urn:oid:2.16.858.1.032.68909.

Nombre de pila: Persona. Primer apellido: Ejemplo. Segundo apellido: Prueba.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "EjemploPacienteUY",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-patient"]
  },
  "language" : "es",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical record number"
      }]
    },
    "system" : "https://example.org/institucion/identificadores/pacientes",
    "value" : "PACIENTE-SINTETICO-001"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:2.16.858.1.032.68909",
    "value" : "ARG-EJEMPLO-001"
  }],
  "name" : [{
    "family" : "Ejemplo Prueba",
    "_family" : {
      "extension" : [{
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido",
        "valueString" : "Ejemplo"
      },
      {
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido",
        "valueString" : "Prueba"
      }]
    },
    "given" : ["Persona"]
  }]
}

```
