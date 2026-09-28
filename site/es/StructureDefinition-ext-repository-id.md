# ID Único del Repositorio - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensión: ID Único del Repositorio 

Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)
* Examples for this Extension: [Bundle/hcen-consulta-ejemplo](Bundle-hcen-consulta-ejemplo.md), [Bundle/hcen-publicacion-ejemplo](Bundle-hcen-publicacion-ejemplo.md) and [DocumentReference/hcen-referencia-ejemplo](DocumentReference-hcen-referencia-ejemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-repository-id)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type Identifier: Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS.

 **Vista diferencialDifferential View** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

#### Constraints

 **Vista instantánea** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type Identifier: Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-repository-id.csv), [Excel](../StructureDefinition-ext-repository-id.xlsx), [Schematron](../StructureDefinition-ext-repository-id.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-repository-id",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id",
  "version" : "0.1.0",
  "name" : "RepositoryId",
  "title" : "ID Único del Repositorio",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS.",
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
      "short" : "ID Único del Repositorio",
      "definition" : "Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "ID Único del Repositorio",
      "definition" : "Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS.",
      "min" : 1,
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "min" : 1,
      "fixedUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Extension.value[x].value",
      "path" : "Extension.value[x].value",
      "short" : "OID del repositorio asignado a la institución, expresado como urn:oid:...",
      "min" : 1,
      "constraint" : [{
        "key" : "hcen-oid-uri",
        "severity" : "error",
        "human" : "El dominio debe ser una URI urn:oid: con arcos numéricos válidos. La autorización del OID se verifica por separado.",
        "expression" : "matches('^urn:oid:([01][.]([0-9]|[1-3][0-9])|2[.](0|[1-9][0-9]*))([.](0|[1-9][0-9]*))*$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id"
      }]
    }]
  }
}

```
