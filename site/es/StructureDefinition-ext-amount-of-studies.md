# Cantidad de Estudios - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensión: Cantidad de Estudios 

Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-amount-of-studies)

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

Simple Extension with the type positiveInt: Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies.

 **Vista diferencialDifferential View** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type positiveInt: Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-amount-of-studies.csv), [Excel](../StructureDefinition-ext-amount-of-studies.xlsx), [Schematron](../StructureDefinition-ext-amount-of-studies.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-amount-of-studies",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-amount-of-studies",
  "version" : "0.1.0",
  "name" : "AmountOfStudies",
  "title" : "Cantidad de Estudios",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies.",
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
      "short" : "Cantidad de Estudios",
      "definition" : "Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-amount-of-studies"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Cantidad de Estudios",
      "definition" : "Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies.",
      "min" : 1,
      "type" : [{
        "code" : "positiveInt"
      }]
    }]
  }
}

```
