# Conjunto de Valores Estado de la Consulta No Urgente - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Estado de la Consulta No Urgente 

 
Subconjunto de Composition.status permitido para HCENConsultaNoUrgente: final, amended y entered-in-error (excluye preliminary, que no tiene mapeo CDA aplicable). 

 **References** 

* [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

### Logical Definition (CLD)

 

### Expansión

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-composition-status-cnu",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-composition-status-cnu",
  "version" : "0.1.0",
  "name" : "VSCompositionStatusCNU",
  "title" : "Conjunto de Valores Estado de la Consulta No Urgente",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Subconjunto de Composition.status permitido para HCENConsultaNoUrgente: final, amended y entered-in-error (excluye preliminary, que no tiene mapeo CDA aplicable).",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/composition-status",
      "concept" : [{
        "code" : "final",
        "display" : "final"
      },
      {
        "code" : "amended",
        "display" : "amended"
      },
      {
        "code" : "entered-in-error",
        "display" : "entered-in-error"
      }]
    }]
  }
}

```
