# Conjunto de Valores Sexo Biológico - Guía de Implementación FHIR de Uruguay v0.2.0

## ValueSet: Conjunto de Valores Sexo Biológico 

 **Referencias** 

* [Sexo al nacer](StructureDefinition-ext-sexo-al-nacer.md)

### Definición lógica (CLD)

 

### Expansión

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-sexo-biologico",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-sexo-biologico",
  "version" : "0.2.0",
  "name" : "VSSexoBiologico",
  "title" : "Conjunto de Valores Sexo Biológico",
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
  "description" : "Sexo biológico: listado de códigos.",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/administrative-gender",
      "concept" : [{
        "code" : "male",
        "display" : "Male"
      },
      {
        "code" : "female",
        "display" : "Female"
      }]
    }]
  }
}

```
