# Sistema de códigos de departamentos de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## CodeSystem: Sistema de códigos de departamentos de Uruguay 

Se hace referencia a este sistema de códigos en la definición de los siguientes conjuntos de valores:

* [VSDepartamentosUY](ValueSet-vs-departamentos-uy.md)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-departamentos-uy",
  "url" : "http://fhir.hcen.gub.uy/CodeSystem/cs-departamentos-uy",
  "version" : "0.1.0",
  "name" : "CSDepartamentosUY",
  "title" : "Sistema de códigos de departamentos de Uruguay",
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
  "description" : "Los 19 departamentos de la República Oriental del Uruguay.",
  "copyright" : "Fuente: Correo Uruguayo, departamentos del listado nacional de códigos postales consultado el 2026-09-21.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 19,
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
}

```
