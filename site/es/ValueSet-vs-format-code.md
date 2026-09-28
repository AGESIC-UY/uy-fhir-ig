# Formato del documento FHIR HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Formato del documento FHIR HCEN (Experimental) 

 
Formato técnico de la representación FHIR referenciada por DocumentReference.content.attachment.url. La selección inicial utiliza el código IHE para indicar que el tipo MIME es suficiente; no declara perfiles clínicos CDA ni C-CDA. 

 **References** 

* [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

### Logical Definition (CLD)

 

### Expansión

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-format-code",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-format-code",
  "version" : "0.1.0",
  "name" : "FormatCode",
  "title" : "Formato del documento FHIR HCEN",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Formato técnico de la representación FHIR referenciada por DocumentReference.content.attachment.url. La selección inicial utiliza el código IHE para indicar que el tipo MIME es suficiente; no declara perfiles clínicos CDA ni C-CDA.",
  "compose" : {
    "include" : [{
      "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
      "concept" : [{
        "code" : "urn:ihe:iti:xds:2017:mimeTypeSufficient"
      }]
    }]
  }
}

```
