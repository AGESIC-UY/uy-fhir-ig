# Identificador documental HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Identificador documental HCEN 

**Usages:**

* Use this DataType Profile: [HCEN Documento de Consulta No Urgente](StructureDefinition-hcen-consulta-no-urgente-bundle.md), [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-document-identifier)

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

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-document-identifier.csv), [Excel](../StructureDefinition-hcen-document-identifier.xlsx), [Schematron](../StructureDefinition-hcen-document-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-document-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier",
  "version" : "0.1.0",
  "name" : "HCENDocumentIdentifier",
  "title" : "Identificador documental HCEN",
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
  "description" : "OID del documento clínico y de su versión, compartido por sus representaciones FHIR y CDA.",
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
      "short" : "Identificador documental HCEN",
      "definition" : "OID del documento clínico con use usual y system urn:ietf:rfc:3986."
    },
    {
      "id" : "Identifier.use",
      "path" : "Identifier.use",
      "short" : "Propósito del identificador: usual.",
      "definition" : "IHE MHD UniqueIdIdentifier requiere que use esté presente con el valor usual; este perfil lo fija explícitamente."
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
      "short" : "URI urn:oid:2.16.858.2.PRESTADOR.67430.AAAAMMDDHHmmss.EXTRAS",
      "definition" : "OID del documento clínico. El segmento temporal corresponde a la creación en hora local de Uruguay; los arcos adicionales aseguran unicidad.",
      "constraint" : [{
        "key" : "hcen-document-oid",
        "severity" : "error",
        "human" : "El identificador documental sigue la estructura OID HCEN, con prestador, fecha local de 14 dígitos y arcos adicionales.",
        "expression" : "matches('^urn:oid:2[.]16[.]858[.]2[.](0|[1-9][0-9]*)[.]67430[.][1-9][0-9]{13}([.](0|[1-9][0-9]*))+$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier"
      }]
    }]
  }
}

```
