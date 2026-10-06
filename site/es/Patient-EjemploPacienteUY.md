# Paciente Uruguayo (CORE UY) - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Patient: Paciente Uruguayo (CORE UY)

**Paciente Ejemplo**

Nombre de pila: Juan Carlos. Apellido: Pérez Rodríguez.

Sexo asignado al nacer: Masculino.

Sexo administrativo: Masculino.

Fecha de nacimiento: 1980-01-01.

Teléfono móvil: +598 99 123 456. Correo electrónico: juan.perez@example.com



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "EjemploPacienteUY",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-patient"]
  },
  "language" : "es",
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76689-9",
          "display" : "Sex Assigned At Birth"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical record number"
      }]
    },
    "system" : "https://example.org/institucion/identificadores/pacientes",
    "value" : "MRN1234"
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
    "value" : "1234567-8"
  }],
  "name" : [{
    "family" : "Pérez Rodríguez",
    "_family" : {
      "extension" : [{
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido",
        "valueString" : "Pérez"
      },
      {
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido",
        "valueString" : "Rodríguez"
      }]
    },
    "given" : ["Juan", "Carlos"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+598 99 123 456",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "juan.perez@example.com",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1980-01-01",
  "address" : [{
    "line" : ["Calle Falsa 1234"],
    "city" : "MONTEVIDEO",
    "state" : "Montevideo",
    "country" : "URY"
  }]
}

```
