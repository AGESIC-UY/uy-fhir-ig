# example-hcen-paciente-gonzalez - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Patient: example-hcen-paciente-gonzalez



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "hcen-paciente-gonzalez",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
  },
  "language" : "es-UY",
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female",
          "display" : "Female"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76689-9",
          "display" : "Sex assigned at birth"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
  }],
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical record number"
      }]
    },
    "system" : "urn:oid:2.16.858.2.999999.72768.1",
    "value" : "1873455"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:2.16.858.2.10000675.68909",
    "value" : "45000001"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "María Laura González Pereira",
    "family" : "González Pereira",
    "_family" : {
      "extension" : [{
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido",
        "valueString" : "González"
      },
      {
        "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido",
        "valueString" : "Pereira"
      }]
    },
    "given" : ["María", "Laura"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+598 98 456 000",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "maria.gonzalez@example.com",
    "use" : "home"
  }],
  "gender" : "female",
  "birthDate" : "1987-03-14",
  "address" : [{
    "use" : "home",
    "type" : "physical",
    "line" : ["Av. Brasil 2765"],
    "city" : "MONTEVIDEO",
    "district" : "POCITOS",
    "state" : "Montevideo",
    "postalCode" : "11300",
    "country" : "URY"
  }]
}

```
