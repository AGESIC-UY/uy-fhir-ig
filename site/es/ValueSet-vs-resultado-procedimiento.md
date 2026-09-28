# Conjunto de Valores Resultado de Procedimiento - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Resultado de Procedimiento 

 
Resultados posibles de un procedimiento (procedure.outcome). 

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
  "id" : "vs-resultado-procedimiento",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-resultado-procedimiento",
  "version" : "0.1.0",
  "name" : "VSResultadoProcedimiento",
  "title" : "Conjunto de Valores Resultado de Procedimiento",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Resultados posibles de un procedimiento (procedure.outcome).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "10828004",
        "display" : "positivo"
      },
      {
        "code" : "125154007",
        "display" : "espécimen insatisfactorio para evaluación"
      },
      {
        "code" : "260415000",
        "display" : "no detectado"
      },
      {
        "code" : "280413001",
        "display" : "resultado normal"
      },
      {
        "code" : "280415008",
        "display" : "resultado anormal"
      },
      {
        "code" : "41998400",
        "display" : "no concluyente"
      }]
    }]
  }
}

```
