# Conjunto de Valores Vía de Administración (borrador) - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Vía de Administración (borrador) 

 
PENDIENTE: subconjunto de códigos para vías de administración farmacológica (oral, intravenosa, intramuscular, subcutánea, inhalatoria, etc.). Contiene un código de ejemplo mientras se define el listado oficial. 

 **References** 

* [HCEN Dosificación](StructureDefinition-hcen-dosage.md)
* [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md)

### Logical Definition (CLD)

 

### Expansión

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-via-administracion",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-via-administracion",
  "version" : "0.1.0",
  "name" : "VSViaAdministracion",
  "title" : "Conjunto de Valores Vía de Administración (borrador)",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "PENDIENTE: subconjunto de códigos para vías de administración farmacológica (oral, intravenosa, intramuscular, subcutánea, inhalatoria, etc.). Contiene un código de ejemplo mientras se define el listado oficial.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration",
      "version" : "4.0.0",
      "concept" : [{
        "code" : "PO",
        "display" : "Oral"
      }]
    },
    {
      "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
      "concept" : [{
        "code" : "urn:hl7-org:sdwg:ccda-nonXMLBody:2.1",
        "display" : "C-CDA 2.1 con cuerpo no estructurado"
      }]
    }]
  }
}

```
