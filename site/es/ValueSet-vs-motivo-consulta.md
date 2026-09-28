# Conjunto de Valores Motivos de Consulta - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Motivos de Consulta 

 
Motivos de consulta: miembros del refset SNOMED CT-UY 261341000179103 (SNOMED CT edición Uruguay). El listado completo de conceptos puede consultarse en el [navegador SNOMED CT-UY](https://snomedbrowser.org/?perspective=full&conceptId1=261341000179103&edition=MAIN/SNOMEDCT-ES/SNOMEDCT-UY/2026-06-15&release=&languages=es,en). 

 **References** 

* [HCEN Motivo de Consulta](StructureDefinition-hcen-motivo-consulta.md)

Este conjunto de valores incluye los conceptos SNOMED CT miembros del refset SNOMED CT-UY `261341000179103`. Por su tamaño, los conceptos no se listan en esta guía.

Consultar el listado completo en el [navegador SNOMED CT-UY](https://snomedbrowser.org/?perspective=full&conceptId1=261341000179103&edition=MAIN/SNOMEDCT-ES/SNOMEDCT-UY/2026-06-15&release=&languages=es,en).

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-motivo-consulta",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-motivo-consulta",
  "version" : "0.1.0",
  "name" : "VSMotivoConsulta",
  "title" : "Conjunto de Valores Motivos de Consulta",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Motivos de consulta: miembros del refset SNOMED CT-UY 261341000179103 (SNOMED CT edición Uruguay).\nEl listado completo de conceptos puede consultarse en el [navegador SNOMED CT-UY](https://snomedbrowser.org/?perspective=full&conceptId1=261341000179103&edition=MAIN/SNOMEDCT-ES/SNOMEDCT-UY/2026-06-15&release=&languages=es,en).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "in",
        "value" : "261341000179103"
      }]
    }]
  }
}

```
