# Tipos MIME de documentos FHIR HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Tipos MIME de documentos FHIR HCEN (Experimental) 

 **References** 

* [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (Unknown Code System)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "hcen-fhir-serialization",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/hcen-fhir-serialization",
  "version" : "0.1.0",
  "name" : "HCENFHIRSerialization",
  "title" : "Tipos MIME de documentos FHIR HCEN",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Serializaciones FHIR JSON y XML para la representación Bundle documental. No identifica el formato del CDA encapsulado.",
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:bcp:13",
      "concept" : [{
        "code" : "application/fhir+json"
      },
      {
        "code" : "application/fhir+xml"
      }]
    }]
  }
}

```
