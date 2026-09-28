# Barrios y localidades postales de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Barrios y localidades postales de Uruguay 

 
Barrios y localidades del listado del Correo Uruguayo, para vincular Address.district. 

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
  "id" : "vs-barrios-localidades-uy",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-barrios-localidades-uy",
  "version" : "0.1.0",
  "name" : "VSBarriosLocalidadesUY",
  "title" : "Barrios y localidades postales de Uruguay",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Barrios y localidades del listado del Correo Uruguayo, para vincular Address.district.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hcen.gub.uy/CodeSystem/cs-barrios-localidades-uy"
    }]
  }
}

```
