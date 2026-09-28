# ID de Comunidad de Origen - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensión: ID de Comunidad de Origen 

El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-home-community-id)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type oid: El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId.

 **Vista diferencialDifferential View** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type oid: El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-home-community-id.csv), [Excel](../StructureDefinition-ext-home-community-id.xlsx), [Schematron](../StructureDefinition-ext-home-community-id.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-home-community-id",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id",
  "version" : "0.1.0",
  "name" : "HomeCommunityId",
  "title" : "ID de Comunidad de Origen",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "ID de Comunidad de Origen",
      "definition" : "El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "ID de Comunidad de Origen",
      "definition" : "El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId.",
      "min" : 1,
      "type" : [{
        "code" : "oid"
      }]
    }]
  }
}

```
