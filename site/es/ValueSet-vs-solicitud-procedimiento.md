# Conjunto de Valores Solicitud de Procedimiento (borrador) - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Solicitud de Procedimiento (borrador) 

 
PENDIENTE: subconjunto de códigos SNOMED CT para solicitudes de servicio/procedimiento (refset uruguayo de solicitudes de procedimientos), utilizado en la validación del CDA. Contiene un código de ejemplo mientras se define el listado oficial. 

 **References** 

* [HCEN Solicitud de Servicio](StructureDefinition-hcen-service-request.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-solicitud-procedimiento",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-solicitud-procedimiento",
  "version" : "0.1.0",
  "name" : "VSSolicitudProcedimiento",
  "title" : "Conjunto de Valores Solicitud de Procedimiento (borrador)",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
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
