# HCEN Documento de Consulta No Urgente - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: HCEN Documento de Consulta No Urgente 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-consulta-no-urgente-bundle)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

** Summary **

Mandatory: 6 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [Identificador documental HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier)](StructureDefinition-hcen-document-identifier.md)
* [HCEN Consulta No Urgente (http://fhir.hcen.gub.uy/StructureDefinition/uy-consulta-no-urgente)](StructureDefinition-uy-consulta-no-urgente.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Bundle.entry

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

** Summary **

Mandatory: 6 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [Identificador documental HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier)](StructureDefinition-hcen-document-identifier.md)
* [HCEN Consulta No Urgente (http://fhir.hcen.gub.uy/StructureDefinition/uy-consulta-no-urgente)](StructureDefinition-uy-consulta-no-urgente.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Bundle.entry

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-consulta-no-urgente-bundle.csv), [Excel](../StructureDefinition-hcen-consulta-no-urgente-bundle.xlsx), [Schematron](../StructureDefinition-hcen-consulta-no-urgente-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-consulta-no-urgente-bundle",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-consulta-no-urgente-bundle",
  "version" : "0.1.0",
  "name" : "HCENConsultaNoUrgenteBundle",
  "title" : "HCEN Documento de Consulta No Urgente",
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
  "description" : "Bundle de tipo document que transporta la Composition HCENConsultaNoUrgente y los recursos administrativos y clínicos que referencia, como representación FHIR intercambiable del documento de Consulta No Urgente.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "short" : "Documento FHIR de Consulta No Urgente para HCEN",
      "definition" : "Bundle document con una única Composition HCENConsultaNoUrgente raíz y los recursos por valor que referencia. bdl-11 exige Composition primera; la regla local exige una sola Composition; el slice compositionCNU 1..1 identifica esa única Composition como CNU.",
      "constraint" : [{
        "key" : "hcen-fullurl-unique",
        "severity" : "error",
        "human" : "Regla local HCEN: cada fullUrl debe ser único, incluso entre recursos con meta.versionId diferentes.",
        "expression" : "entry.fullUrl.select(toString()).isDistinct()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-consulta-no-urgente-bundle"
      },
      {
        "key" : "hcen-cnu-single-composition",
        "severity" : "error",
        "human" : "El Bundle documental CNU contiene una única Composition. Junto con bdl-11 y el slice compositionCNU 1..1, esa Composition única es necesariamente la HCENConsultaNoUrgente raíz y ocupa la primera entrada.",
        "expression" : "entry.resource.ofType(Composition).count() = 1",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-consulta-no-urgente-bundle"
      },
      {
        "key" : "hcen-cnu-document-identifier",
        "severity" : "error",
        "human" : "La Composition CNU raíz y su Bundle comparten el identificador documental [oid_documento_clinico], comparado exclusivamente por system y value.",
        "expression" : "identifier.system.select(toString()) = entry.resource.ofType(Composition).identifier.system.select(toString()) and identifier.value.select(toString()) = entry.resource.ofType(Composition).identifier.value.select(toString())",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-consulta-no-urgente-bundle"
      }]
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Identificador de la versión del documento — igual a HCENConsultaNoUrgente.identifier",
      "definition" : "Identificador de la versión del documento — igual a HCENConsultaNoUrgente.identifier",
      "min" : 1,
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier"]
      }]
    },
    {
      "id" : "Bundle.identifier.value",
      "path" : "Bundle.identifier.value",
      "short" : "Valor único, formato urn:oid:<OID_DOCUMENTO>",
      "definition" : "Valor único, formato urn:oid:<OID_DOCUMENTO>"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Documento — fijo a document",
      "fixedCode" : "document"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "Fecha y hora de ensamblado del documento",
      "definition" : "Fecha y hora de ensamblado del documento",
      "min" : 1
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "short" : "Una única Composition CNU raíz y sus recursos referenciados",
      "definition" : "La primera entrada es Composition por bdl-11. La regla local exige una sola Composition y el slice compositionCNU 1..1 exige que sea HCENConsultaNoUrgente. Las restantes entradas contienen recursos administrativos y clínicos referenciados.",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:compositionCNU",
      "path" : "Bundle.entry",
      "sliceName" : "compositionCNU",
      "short" : "HCENConsultaNoUrgente — documento clínico raíz",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:compositionCNU.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Composition",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-consulta-no-urgente"]
      }]
    }]
  }
}

```
