# ID de Comunidad de Origen - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: ID de Comunidad de Origen 

**Contexto de uso**

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md) and [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md)
* Ejemplos de esta extensión: [Bundle/hcen-provide-document-bundle-cnu-asse](Bundle-hcen-provide-document-bundle-cnu-asse.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-home-community-id)

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

Extensión simple de tipo oid: Identificador de la comunidad de origen del documento o conjunto de envío. Mapea a DocumentEntry.homeCommunityId y SubmissionSet.homeCommunityId.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo oid: Identificador de la comunidad de origen del documento o conjunto de envío. Mapea a DocumentEntry.homeCommunityId y SubmissionSet.homeCommunityId.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-home-community-id.csv), [Excel](../StructureDefinition-ext-home-community-id.xlsx), [Schematron](../StructureDefinition-ext-home-community-id.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-home-community-id",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id",
  "version" : "0.2.0",
  "name" : "HomeCommunityId",
  "title" : "ID de Comunidad de Origen",
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
  "description" : "Identificador de la comunidad de origen del documento o conjunto de envío. Mapea a DocumentEntry.homeCommunityId y SubmissionSet.homeCommunityId.",
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
  },
  {
    "type" : "element",
    "expression" : "List"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "ID de Comunidad de Origen",
      "definition" : "Identificador de la comunidad de origen del documento o conjunto de envío."
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
      "definition" : "OID de la comunidad desde la cual se accede a los documentos.",
      "min" : 1,
      "type" : [{
        "code" : "oid"
      }],
      "fixedOid" : "urn:oid:2.16.858.2.10000675.73183.1"
    }]
  }
}

```
