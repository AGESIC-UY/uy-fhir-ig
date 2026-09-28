# Paciente ficticio HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Patient: Paciente ficticio HCEN

Ana Pérez Gómez. MRN-EJEMPLO-001. Registro activo; sexo administrativo femenino; nacimiento 20/05/1985.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "hcen-paciente-ejemplo",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
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

```
