# Localidades de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Localidades de Uruguay 

 
Localidades de Uruguay publicadas en el catálogo de OSE, para vincular Address.city. 

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
  "id" : "vs-localidades-uy",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-localidades-uy",
  "version" : "0.1.0",
  "name" : "VSLocalidadesUY",
  "title" : "Localidades de Uruguay",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Localidades de Uruguay publicadas en el catálogo de OSE, para vincular Address.city.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hcen.gub.uy/CodeSystem/cs-localidades-uy"
    }]
  }
}

```
