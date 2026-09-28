# Códigos postales de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Códigos postales de Uruguay 

 
Códigos postales admitidos en Address.postalCode. 

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
  "id" : "vs-codigos-postales-uy",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-codigos-postales-uy",
  "version" : "0.1.0",
  "name" : "VSCodigosPostalesUY",
  "title" : "Códigos postales de Uruguay",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Códigos postales admitidos en Address.postalCode.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hcen.gub.uy/CodeSystem/cs-codigos-postales-uy"
    }]
  }
}

```
