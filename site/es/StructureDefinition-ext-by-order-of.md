# Por Orden De - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: Por Orden De 

**Contexto de uso**

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-by-order-of)

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

Extensión simple de tipo Reference: Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo Reference: Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-by-order-of.csv), [Excel](../StructureDefinition-ext-by-order-of.xlsx), [Schematron](../StructureDefinition-ext-by-order-of.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-by-order-of",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of",
  "version" : "0.2.0",
  "name" : "ByOrderOf",
  "title" : "Por Orden De",
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
  "description" : "Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder.",
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
      "short" : "Por Orden De",
      "definition" : "Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Por Orden De",
      "definition" : "Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    }]
  }
}

```
