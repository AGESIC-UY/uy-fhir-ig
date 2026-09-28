# Conjunto de Valores Tipo de Procedimiento (borrador) - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Tipo de Procedimiento (borrador) 

 
PENDIENTE: agrupador de tipo de procedimiento (p.ej. diagnóstico, terapéutico). Contiene un código de ejemplo mientras se define el listado oficial. 

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
  "id" : "vs-tipo-procedimiento",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-tipo-procedimiento",
  "version" : "0.1.0",
  "name" : "VSTipoProcedimiento",
  "title" : "Conjunto de Valores Tipo de Procedimiento (borrador)",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "PENDIENTE: agrupador de tipo de procedimiento (p.ej. diagnóstico, terapéutico). Contiene un código de ejemplo mientras se define el listado oficial.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "71388002",
        "display" : "Procedure (procedure)"
      }]
    }]
  }
}

```
