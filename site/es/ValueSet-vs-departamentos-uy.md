# Departamentos de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Departamentos de Uruguay 

 
Los 19 departamentos admitidos en Address.state. 

 **References** 

* [Dirección (Uruguay)](StructureDefinition-uy-address.md)

### Logical Definition (CLD)

 

### Expansión

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-departamentos-uy",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-departamentos-uy",
  "version" : "0.1.0",
  "name" : "VSDepartamentosUY",
  "title" : "Departamentos de Uruguay",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Los 19 departamentos admitidos en Address.state.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hcen.gub.uy/CodeSystem/cs-departamentos-uy"
    }]
  }
}

```
