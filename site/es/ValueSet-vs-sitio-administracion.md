# Conjunto de Valores Sitio de Administración (borrador) - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Sitio de Administración (borrador) 

 
PENDIENTE: subconjunto de códigos SNOMED CT para sitios anatómicos de administración de medicación. Contiene un código de ejemplo mientras se define el listado oficial. 

 **References** 

* [HCEN Dosificación](StructureDefinition-hcen-dosage.md)
* [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-sitio-administracion",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-sitio-administracion",
  "version" : "0.1.0",
  "name" : "VSSitioAdministracion",
  "title" : "Conjunto de Valores Sitio de Administración (borrador)",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
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
