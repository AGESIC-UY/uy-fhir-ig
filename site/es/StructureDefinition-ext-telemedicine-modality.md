# Modalidad de Telemedicina - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensión: Modalidad de Telemedicina 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-telemedicine-modality)

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

Simple Extension with the type Coding: Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type Coding: Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-telemedicine-modality.csv), [Excel](../StructureDefinition-ext-telemedicine-modality.xlsx), [Schematron](../StructureDefinition-ext-telemedicine-modality.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-telemedicine-modality",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-telemedicine-modality",
  "version" : "0.1.0",
  "name" : "TelemedicineModality",
  "title" : "Modalidad de Telemedicina",
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
  "description" : "Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine.",
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
      "short" : "Modalidad de Telemedicina",
      "definition" : "Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-telemedicine-modality"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Modalidad de Telemedicina",
      "definition" : "Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine.",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].code",
      "path" : "Extension.value[x].code",
      "min" : 1
    }]
  }
}

```
