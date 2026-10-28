# Organización Financiadora - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: Organización Financiadora 

**Contexto de uso**

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-funder)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo Reference: Organización que financia el servicio. Mapea a DocumentEntry.funder.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo Reference: Organización que financia el servicio. Mapea a DocumentEntry.funder.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-funder.csv), [Excel](../StructureDefinition-ext-funder.xlsx), [Schematron](../StructureDefinition-ext-funder.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-funder",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-funder",
  "version" : "0.2.0",
  "name" : "Funder",
  "title" : "Organización Financiadora",
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
  "description" : "Organización que financia el servicio. Mapea a DocumentEntry.funder.",
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
      "short" : "Organización Financiadora",
      "definition" : "Organización que financia el servicio. Mapea a DocumentEntry.funder."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-funder"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Organización Financiadora",
      "definition" : "Organización que financia el servicio. Mapea a DocumentEntry.funder.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    }]
  }
}

```
