# Conjunto de Valores Solicitud de Procedimiento (borrador) - Guía de Implementación FHIR de Uruguay v0.2.0

## ValueSet: Conjunto de Valores Solicitud de Procedimiento (borrador) 

 **Referencias** 

* [HCEN Solicitud de Servicio](StructureDefinition-hcen-service-request.md)

### Definición lógica (CLD)

 

### Expansión

No hay expansión de este ValueSet (no admitida por las herramientas de publicación)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-solicitud-procedimiento",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-solicitud-procedimiento",
  "version" : "0.2.0",
  "name" : "VSSolicitudProcedimiento",
  "title" : "Conjunto de Valores Solicitud de Procedimiento (borrador)",
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
  "description" : "PENDIENTE: subconjunto de códigos SNOMED CT para solicitudes de servicio/procedimiento (refset uruguayo de solicitudes de procedimientos), utilizado en la validación del CDA. Contiene un código de ejemplo mientras se define el listado oficial.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "71388002",
        "display" : "Procedure (procedure)"
      }]
    }]
  }
}

```
