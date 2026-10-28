# Conjunto de Valores Medicamentos (borrador) - Guía de Implementación FHIR de Uruguay v0.2.0

## ValueSet: Conjunto de Valores Medicamentos (borrador) 

 **Referencias** 

* [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md)
* [HCEN Prescripción de Medicación](StructureDefinition-hcen-medication-request.md)

### Definición lógica (CLD)

 

### Expansión

No hay expansión de este ValueSet (no admitida por las herramientas de publicación)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-medicamentos",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-medicamentos",
  "version" : "0.2.0",
  "name" : "VSMedicamentos",
  "title" : "Conjunto de Valores Medicamentos (borrador)",
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
  "description" : "PENDIENTE: subconjunto de códigos SNOMED CT para medicamentos, utilizado en la validación del CDA. Contiene un código de ejemplo mientras se define el listado oficial.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "763158003",
        "display" : "Medicinal product (product)"
      }]
    }]
  }
}

```
