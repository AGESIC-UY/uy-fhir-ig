# Conjunto de Valores Diagnósticos - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Diagnósticos 

 **References** 

* [HCEN Diagnóstico](StructureDefinition-hcen-diagnostico.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-diagnostico-consulta",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-diagnostico-consulta",
  "version" : "0.1.0",
  "name" : "VSDiagnosticoConsulta",
  "title" : "Conjunto de Valores Diagnósticos",
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
  "description" : "Diagnósticos: listado de códigos SNOMED CT de prueba (docs/Códigos para prueba FHIR.xlsx, pestaña Dg).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/5631000179106/version/20260615",
      "concept" : [{
        "code" : "27337007",
        "display" : "extrasístoles ventriculares unifocales"
      },
      {
        "code" : "38341003",
        "display" : "hipertensión arterial (trastorno)"
      },
      {
        "code" : "302866003",
        "display" : "hipoglicemia (trastorno)"
      },
      {
        "code" : "235595009",
        "display" : "enfermedad por reflujo gastroesofágico (trastorno)"
      },
      {
        "code" : "446221000",
        "display" : "insuficiencia cardíaca con fracción de eyección conservada (trastorno)"
      },
      {
        "code" : "398057008",
        "display" : "cefalea de tipo tensional (trastorno)"
      },
      {
        "code" : "4556007",
        "display" : "gastritis (trastorno)"
      },
      {
        "code" : "413838009",
        "display" : "cardiopatía isquémica crónica (trastorno)"
      },
      {
        "code" : "1381430004",
        "display" : "angina de pecho sin obstrucción de arterias coronarias (trastorno)"
      },
      {
        "code" : "1085006",
        "display" : "candidiasis de la vulva (trastorno)"
      }]
    }]
  }
}

```
