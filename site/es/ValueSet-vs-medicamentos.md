# Conjunto de Valores Medicamentos (borrador) - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Medicamentos (borrador) 

 
PENDIENTE: subconjunto de códigos SNOMED CT para medicamentos, utilizado en la validación del CDA. Contiene un código de ejemplo mientras se define el listado oficial. 

 **References** 

* [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md)
* [HCEN Prescripción de Medicación](StructureDefinition-hcen-medication-request.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-medicamentos",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-medicamentos",
  "version" : "0.1.0",
  "name" : "VSMedicamentos",
  "title" : "Conjunto de Valores Medicamentos (borrador)",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
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
