# Conjunto de Valores Procedimientos - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Procedimientos 

 **References** 

* [HCEN Procedimiento](StructureDefinition-hcen-procedimiento.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (Unsupported Code System Version)

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
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Procedimientos: listado de códigos SNOMED CT de prueba (docs/Códigos para prueba FHIR.xlsx, pestaña Procedimiento).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/5631000179106/version/20260615",
      "concept" : [{
        "code" : "29303009",
        "display" : "procedimiento electrocardiográfico (procedimiento)"
      },
      {
        "code" : "46973005",
        "display" : "medir la presión arterial (procedimiento)"
      },
      {
        "code" : "166900001",
        "display" : "determinación de glicemia por medidor de glucosa (procedimiento)"
      }]
    }]
  }
}

```
