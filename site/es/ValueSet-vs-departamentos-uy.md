# Departamentos de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Departamentos de Uruguay 

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
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Los 19 departamentos admitidos en Address.state.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hcen.gub.uy/CodeSystem/cs-departamentos-uy",
      "concept" : [{
        "code" : "Artigas",
        "display" : "Artigas"
      },
      {
        "code" : "Canelones",
        "display" : "Canelones"
      },
      {
        "code" : "Cerro Largo",
        "display" : "Cerro Largo"
      },
      {
        "code" : "Colonia",
        "display" : "Colonia"
      },
      {
        "code" : "Durazno",
        "display" : "Durazno"
      },
      {
        "code" : "Flores",
        "display" : "Flores"
      },
      {
        "code" : "Florida",
        "display" : "Florida"
      },
      {
        "code" : "Lavalleja",
        "display" : "Lavalleja"
      },
      {
        "code" : "Maldonado",
        "display" : "Maldonado"
      },
      {
        "code" : "Montevideo",
        "display" : "Montevideo"
      },
      {
        "code" : "Paysandú",
        "display" : "Paysandú"
      },
      {
        "code" : "Río Negro",
        "display" : "Río Negro"
      },
      {
        "code" : "Rivera",
        "display" : "Rivera"
      },
      {
        "code" : "Rocha",
        "display" : "Rocha"
      },
      {
        "code" : "Salto",
        "display" : "Salto"
      },
      {
        "code" : "San José",
        "display" : "San José"
      },
      {
        "code" : "Soriano",
        "display" : "Soriano"
      },
      {
        "code" : "Tacuarembó",
        "display" : "Tacuarembó"
      },
      {
        "code" : "Treinta y Tres",
        "display" : "Treinta y Tres"
      }]
    }]
  }
}

```
