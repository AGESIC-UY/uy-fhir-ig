# Representación CDA de un documento HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Representación CDA de un documento HCEN 

**Usages:**

* Refer to this Profile: [ID del Recurso Binario](StructureDefinition-ext-binary-resource-id.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-cda-binary)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Binary](http://hl7.org/fhir/R4/binary.html) .

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Binary](http://hl7.org/fhir/R4/binary.html) .

** Summary **

Mandatory: 1 element

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Binary](http://hl7.org/fhir/R4/binary.html) .

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Binary](http://hl7.org/fhir/R4/binary.html) .

** Summary **

Mandatory: 1 element

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-cda-binary.csv), [Excel](../StructureDefinition-hcen-cda-binary.xlsx), [Schematron](../StructureDefinition-hcen-cda-binary.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-cda-binary",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-cda-binary",
  "version" : "0.1.0",
  "name" : "HCENCdaBinary",
  "title" : "Representación CDA de un documento HCEN",
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
  "description" : "Recurso Binary con el CDA de nivel 1 o 3 codificado en base64. El perfil exige el contenido; no valida la estructura interna del XML ni su equivalencia con el documento FHIR.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Binary",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Binary",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Binary",
      "path" : "Binary",
      "short" : "CDA encapsulado para HCEN",
      "definition" : "Representación CDA intercambiada como recurso Binary FHIR."
    },
    {
      "id" : "Binary.contentType",
      "path" : "Binary.contentType",
      "short" : "Tipo MIME del CDA encapsulado",
      "definition" : "text/xml identifica el contenido CDA; el encabezado HTTP Content-Type identifica la serialización FHIR del Binary.",
      "patternCode" : "text/xml"
    },
    {
      "id" : "Binary.data",
      "path" : "Binary.data",
      "short" : "Documento CDA codificado en base64",
      "definition" : "CDA completo del mismo documento clínico y versión que la representación FHIR. Un PDF debe estar embebido en un CDA nivel 1.",
      "min" : 1
    }]
  }
}

```
