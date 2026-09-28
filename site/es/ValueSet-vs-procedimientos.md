# Conjunto de Valores Procedimientos - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Procedimientos 

 
Procedimientos: miembros de los refsets SNOMED CT-UY 268951000179107 y 231971000179103 (SNOMED CT edición Uruguay). 

 **References** 

* [HCEN Procedimiento](StructureDefinition-hcen-procedimiento.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-procedimientos",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-procedimientos",
  "version" : "0.1.0",
  "name" : "VSProcedimientos",
  "title" : "Conjunto de Valores Procedimientos",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Procedimientos: miembros de los refsets SNOMED CT-UY 268951000179107 y 231971000179103 (SNOMED CT edición Uruguay).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "in",
        "value" : "268951000179107"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "in",
        "value" : "231971000179103"
      }]
    }]
  }
}

```
