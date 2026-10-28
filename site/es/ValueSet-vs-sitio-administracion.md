# Conjunto de Valores Sitio de Administración (borrador) - Guía de Implementación FHIR de Uruguay v0.2.0

## ValueSet: Conjunto de Valores Sitio de Administración (borrador) 

 **Referencias** 

* [HCEN Dosificación](StructureDefinition-hcen-dosage.md)
* [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md)

### Definición lógica (CLD)

 

### Expansión

No hay expansión de este ValueSet (no admitida por las herramientas de publicación)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-sitio-administracion",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-sitio-administracion",
  "version" : "0.2.0",
  "name" : "VSSitioAdministracion",
  "title" : "Conjunto de Valores Sitio de Administración (borrador)",
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
  "description" : "PENDIENTE: subconjunto de códigos SNOMED CT para sitios anatómicos de administración de medicación. Contiene un código de ejemplo mientras se define el listado oficial.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "91723000",
        "display" : "Anatomical structure (body structure)"
      }]
    }]
  }
}

```
