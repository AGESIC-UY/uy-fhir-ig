# Perfil Profesional de Salud para HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Profesional de Salud para HCEN 

 
Una persona que está directa o indirectamente involucrada en la provisión de atención médica. 

**Usages:**

* Use this Profile: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Refer to this Profile: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md), [Perfil Rol del Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner-role.md) and [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md)
* Examples for this Profile: [Practitioner/hcen-profesional-ejemplo](Practitioner-hcen-profesional-ejemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-practitioner)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Constraints

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

** Summary **

Mandatory: 2 elements
 Must-Support: 1 element
 Prohibited: 1 element

 **Vista de elementos clave** 

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

** Summary **

Mandatory: 2 elements
 Must-Support: 1 element
 Prohibited: 1 element

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-practitioner.csv), [Excel](../StructureDefinition-hcen-practitioner.xlsx), [Schematron](../StructureDefinition-hcen-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-practitioner",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner",
  "version" : "0.1.0",
  "name" : "HCENPractitioner",
  "title" : "Perfil Profesional de Salud para HCEN",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Una persona que está directa o indirectamente involucrada en la provisión de atención médica.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "short" : "Perfil Profesional de Salud para HCEN"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:ci",
      "path" : "Practitioner.identifier",
      "sliceName" : "ci",
      "min" : 1
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "max" : "0"
    }]
  }
}

```
