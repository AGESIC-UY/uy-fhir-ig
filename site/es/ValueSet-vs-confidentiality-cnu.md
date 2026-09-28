# Conjunto de Valores Confidencialidad de la Consulta No Urgente - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Confidencialidad de la Consulta No Urgente 

 
Subconjunto de Composition.confidentiality permitido para HCENConsultaNoUrgente: N (normal), R (restricted) y V (very restricted). 

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
  "id" : "vs-confidentiality-cnu",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-confidentiality-cnu",
  "version" : "0.1.0",
  "name" : "VSConfidentialityCNU",
  "title" : "Conjunto de Valores Confidencialidad de la Consulta No Urgente",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Subconjunto de Composition.confidentiality permitido para HCENConsultaNoUrgente: N (normal), R (restricted) y V (very restricted).",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
      "version" : "5.0.0",
      "concept" : [{
        "code" : "N",
        "display" : "normal"
      },
      {
        "code" : "R",
        "display" : "restricted"
      },
      {
        "code" : "V",
        "display" : "very restricted"
      }]
    }]
  }
}

```
