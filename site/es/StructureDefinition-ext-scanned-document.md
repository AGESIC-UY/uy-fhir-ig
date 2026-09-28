# Documento Escaneado - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensión: Documento Escaneado 

Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-scanned-document)

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

Simple Extension with the type boolean: Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument.

 **Vista diferencialDifferential View** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type boolean: Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-scanned-document.csv), [Excel](../StructureDefinition-ext-scanned-document.xlsx), [Schematron](../StructureDefinition-ext-scanned-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-scanned-document",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-scanned-document",
  "version" : "0.1.0",
  "name" : "ScannedDocument",
  "title" : "Documento Escaneado",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument.",
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
      "short" : "Documento Escaneado",
      "definition" : "Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-scanned-document"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Documento Escaneado",
      "definition" : "Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument.",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
