# Conjunto de Valores Motivos de Consulta - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Motivos de Consulta 

 **References** 

* [HCEN Motivo de Consulta](StructureDefinition-hcen-motivo-consulta.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-motivos-consulta",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-motivos-consulta",
  "version" : "0.1.0",
  "name" : "VSMotivosConsulta",
  "title" : "Conjunto de Valores Motivos de Consulta",
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
  "description" : "Motivos de consulta: listado de códigos SNOMED CT de prueba (docs/Códigos para prueba FHIR.xlsx, pestaña MC).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/5631000179106/version/20260615",
      "concept" : [{
        "code" : "80313002",
        "display" : "palpitaciones (hallazgo)"
      },
      {
        "code" : "185349003",
        "display" : "control de salud (procedimiento)"
      },
      {
        "code" : "248228001",
        "display" : "lipotimia (hallazgo)"
      },
      {
        "code" : "68154008",
        "display" : "tos crónica"
      },
      {
        "code" : "60845006",
        "display" : "disnea de esfuerzo"
      },
      {
        "code" : "25064002",
        "display" : "cefalea (hallazgo)"
      },
      {
        "code" : "21522001",
        "display" : "dolor abdominal (hallazgo)"
      },
      {
        "code" : "300995000",
        "display" : "angina de esfuerzo (trastorno)"
      },
      {
        "code" : "371807002",
        "display" : "angina de pecho atípica (trastorno)"
      },
      {
        "code" : "67882000",
        "display" : "prurito de la vulva (trastorno)"
      }]
    }]
  }
}

```
