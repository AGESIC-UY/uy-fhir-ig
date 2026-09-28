# Enfermedad de Notificación Obligatoria (ENO) - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensión: Enfermedad de Notificación Obligatoria (ENO) 

Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-practitioner-eno)

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

Simple Extension with the type boolean: Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO.

 **Vista diferencialDifferential View** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type boolean: Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-practitioner-eno.csv), [Excel](../StructureDefinition-ext-practitioner-eno.xlsx), [Schematron](../StructureDefinition-ext-practitioner-eno.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-practitioner-eno",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-practitioner-eno",
  "version" : "0.1.0",
  "name" : "PractitionerEno",
  "title" : "Enfermedad de Notificación Obligatoria (ENO)",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO.",
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
    "expression" : "Practitioner"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Enfermedad de Notificación Obligatoria (ENO)",
      "definition" : "Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-practitioner-eno"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Enfermedad de Notificación Obligatoria (ENO)",
      "definition" : "Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO.",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
