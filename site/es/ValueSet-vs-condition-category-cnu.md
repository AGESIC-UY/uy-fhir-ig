# Conjunto de Valores Categoría de Condition (CNU) - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Categoría de Condition (CNU) 

 
Extiende el conjunto de valores base de Condition.category (problem-list-item, encounter-diagnosis) con los códigos SNOMED CT locales usados para motivo de consulta y diagnóstico en la Hoja de Consulta No Urgente. 

 **References** 

* [HCEN Diagnóstico](StructureDefinition-hcen-diagnostico.md)
* [HCEN Motivo de Consulta](StructureDefinition-hcen-motivo-consulta.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-condition-category-cnu",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-condition-category-cnu",
  "version" : "0.1.0",
  "name" : "VSConditionCategoryCNU",
  "title" : "Conjunto de Valores Categoría de Condition (CNU)",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Extiende el conjunto de valores base de Condition.category (problem-list-item, encounter-diagnosis) con los códigos SNOMED CT locales usados para motivo de consulta y diagnóstico en la Hoja de Consulta No Urgente.",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/ValueSet/condition-category"]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "7611000179107",
        "display" : "motivo-consulta"
      },
      {
        "code" : "439401001",
        "display" : "diagnostico"
      }]
    }]
  }
}

```
