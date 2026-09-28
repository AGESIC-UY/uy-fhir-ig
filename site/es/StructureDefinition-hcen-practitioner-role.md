# Perfil Rol del Profesional de Salud para HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Rol del Profesional de Salud para HCEN 

 
Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios. 

**Usages:**

* Use this Profile: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Refer to this Profile: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md), [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md), [HCEN Prescripción de Medicación](StructureDefinition-hcen-medication-request.md), [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)
* Examples for this Profile: [PractitionerRole/hcen-rol-ejemplo](PractitionerRole-hcen-rol-ejemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-practitioner-role)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

** Summary **

Mandatory: 2 elements
 Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

** Summary **

Mandatory: 2 elements
 Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-practitioner-role.csv), [Excel](../StructureDefinition-hcen-practitioner-role.xlsx), [Schematron](../StructureDefinition-hcen-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-practitioner-role",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role",
  "version" : "0.1.0",
  "name" : "HCENPractitionerRole",
  "title" : "Perfil Rol del Profesional de Salud para HCEN",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole",
      "short" : "Perfil Rol del Profesional de Salud para HCEN"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "mustSupport" : true
    }]
  }
}

```
