# Pronombres personales en Uruguay - Guía de Implementación FHIR de Uruguay v0.2.0

## ValueSet: Pronombres personales en Uruguay 

 **Referencias** 

* [Pronombres](StructureDefinition-ext-pronombres.md)

Este conjunto de valores es una versión borrador, sujeta a cambios. Su contenido aún no está establecido de forma definitiva y admite modificaciones durante su revisión.

### Definición lógica (CLD)

 

### Expansión

No hay expansión de este ValueSet (no admitida por las herramientas de publicación)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-pronombres-uy",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-pronombres-uy",
  "version" : "0.2.0",
  "name" : "VSPronombresUY",
  "title" : "Pronombres personales en Uruguay",
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
  "description" : "Pronombres personales: listado de códigos.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA29518-0",
        "display" : "he/him/his/his/himself",
        "designation" : [{
          "language" : "es-UY",
          "value" : "él/lo/su/suyo/sí mismo"
        }]
      },
      {
        "code" : "LA29519-8",
        "display" : "she/her/her/hers/herself",
        "designation" : [{
          "language" : "es-UY",
          "value" : "ella/la/su/suya/sí misma"
        }]
      },
      {
        "code" : "LA29520-6",
        "display" : "they/them/their/theirs/themselves",
        "designation" : [{
          "language" : "es-UY",
          "value" : "elle/le/su/suye/sí mismx"
        }]
      }]
    }]
  }
}

```
