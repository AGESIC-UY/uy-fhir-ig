# Identificador MRN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: Identificador MRN 

El MRN identifica al paciente dentro de una institución. El campo `system` contiene la URI del dominio de asignación y `value` contiene el número local del paciente dentro de ese dominio.

**Usos:**

* Derivado de este perfil de tipo de datos: [Identificador MRN para HCEN](StructureDefinition-hcen-mrn-identifier.md)
* Utilizar este perfil de tipo de datos: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-mrn-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Resumen **

Obligatorios: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Resumen **

Obligatorios: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-mrn-identifier.csv), [Excel](../StructureDefinition-uy-mrn-identifier.xlsx), [Schematron](../StructureDefinition-uy-mrn-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-mrn-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-mrn-identifier",
  "version" : "0.2.0",
  "name" : "UYMRNIdentifier",
  "title" : "Identificador MRN",
  "status" : "draft",
  "date" : "2026-10-28T18:02:56-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Identificador interno del paciente en la institución (Medical Record Number).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Identificador MRN",
      "definition" : "Identificador interno del paciente en la institución (Medical Record Number)."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MR",
          "display" : "Medical record number"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    }]
  }
}

```
