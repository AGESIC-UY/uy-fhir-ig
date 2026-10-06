# Perfil Organización para HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Organización para HCEN 

**Usages:**

* Use this Profile: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Refer to this Profile: [Por Orden De](StructureDefinition-ext-by-order-of.md), [Organización Financiadora](StructureDefinition-ext-funder.md), [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md), [HCEN Evento Clínico](StructureDefinition-hcen-encounter.md)... Show 2 more, [Perfil Rol del Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner-role.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-organization)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Constraints

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

** Summary **

Mandatory: 3 elements

 **Vista de elementos clave** 

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

** Summary **

Mandatory: 3 elements

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-organization.csv), [Excel](../StructureDefinition-hcen-organization.xlsx), [Schematron](../StructureDefinition-hcen-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-organization",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization",
  "version" : "0.1.0",
  "name" : "HCENOrganization",
  "title" : "Perfil Organización para HCEN",
  "status" : "draft",
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Una agrupación de personas u organizaciones con un propósito común.",
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
  "type" : "Organization",
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:organizationId",
      "path" : "Organization.identifier",
      "sliceName" : "organizationId",
      "min" : 1
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1
    }]
  }
}

```
