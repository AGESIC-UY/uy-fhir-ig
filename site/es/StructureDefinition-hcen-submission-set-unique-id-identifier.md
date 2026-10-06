# Identificador global del conjunto de envío HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Identificador global del conjunto de envío HCEN 

**Usages:**

* Use this DataType Profile: [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-submission-set-unique-id-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.UniqueIdIdentifier.html) .

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.UniqueIdIdentifier.html) .

** Summary **

Fixed: 1 element

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.UniqueIdIdentifier.html) .

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UniqueIdIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.UniqueIdIdentifier.html) .

** Summary **

Fixed: 1 element

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-submission-set-unique-id-identifier.csv), [Excel](../StructureDefinition-hcen-submission-set-unique-id-identifier.xlsx), [Schematron](../StructureDefinition-hcen-submission-set-unique-id-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-submission-set-unique-id-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-unique-id-identifier",
  "version" : "0.1.0",
  "name" : "HCENSubmissionSetUniqueIdIdentifier",
  "title" : "Identificador global del conjunto de envío HCEN",
  "status" : "draft",
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "OID global S propio del SubmissionSet, distinto del identificador documental [oid_documento_clinico] y sin imponer una estructura documental.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Identificador global del conjunto HCEN",
      "definition" : "OID global S del SubmissionSet con use usual y system urn:ietf:rfc:3986, basado en IHE MHD UniqueId Identifier."
    },
    {
      "id" : "Identifier.use",
      "path" : "Identifier.use",
      "short" : "Propósito del identificador: usual.",
      "definition" : "IHE MHD UniqueIdIdentifier requiere que use esté presente con el valor usual."
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "Sistema URI de identificación: urn:ietf:rfc:3986.",
      "definition" : "Sistema URI de identificación: urn:ietf:rfc:3986.",
      "fixedUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "OID global S del SubmissionSet en formato urn:oid.",
      "definition" : "Identificador global propio del SubmissionSet como URI urn:oid con arcos numéricos válidos. S es distinto de [oid_documento_clinico] y no exige la estructura OID de los documentos clínicos.",
      "constraint" : [{
        "key" : "hcen-oid-uri",
        "severity" : "error",
        "human" : "El identificador debe ser una URI urn:oid: con arcos numéricos válidos. La autorización del OID se verifica por separado.",
        "expression" : "matches('^urn:oid:([01][.]([0-9]|[1-3][0-9])|2[.](0|[1-9][0-9]*))([.](0|[1-9][0-9]*))*$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-unique-id-identifier"
      }]
    }]
  }
}

```
