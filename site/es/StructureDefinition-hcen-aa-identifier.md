# Identificador de institución para HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Identificador de institución para HCEN 

 
Identificador de una institución admitida en HCEN, representado como un OID del catálogo institucional. 

**Usages:**

* Use this DataType Profile: [Perfil Organización para HCEN](StructureDefinition-hcen-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-aa-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYAAIdentifier](StructureDefinition-uy-aa-identifier.md) .

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYAAIdentifier](StructureDefinition-uy-aa-identifier.md) .

** Summary **

Fixed: 1 element

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [UYAAIdentifier](StructureDefinition-uy-aa-identifier.md) .

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYAAIdentifier](StructureDefinition-uy-aa-identifier.md) .

** Summary **

Fixed: 1 element

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-aa-identifier.csv), [Excel](../StructureDefinition-hcen-aa-identifier.xlsx), [Schematron](../StructureDefinition-hcen-aa-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-aa-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-aa-identifier",
  "version" : "0.1.0",
  "name" : "HCENAAIdentifier",
  "title" : "Identificador de institución para HCEN",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Identificador de una institución admitida en HCEN, representado como un OID del catálogo institucional.",
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
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-aa-identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Identificador institucional HCEN",
      "definition" : "Identificador de organización que fija el sistema RFC 3986 y exige un OID incluido en el catálogo institucional HCEN."
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "Sistema URI de identificación: urn:ietf:rfc:3986.",
      "definition" : "Sistema fijo que permite representar el OID institucional como una URI en Identifier.value.",
      "fixedUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "OID de la institución.",
      "definition" : "OID institucional con forma urn:oid: y perteneciente al catálogo HCEN.",
      "constraint" : [{
        "key" : "hcen-oid-uri",
        "severity" : "error",
        "human" : "El dominio debe ser una URI urn:oid: con arcos numéricos válidos. La autorización del OID se verifica por separado.",
        "expression" : "matches('^urn:oid:([01][.]([0-9]|[1-3][0-9])|2[.](0|[1-9][0-9]*))([.](0|[1-9][0-9]*))*$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-aa-identifier"
      },
      {
        "key" : "hcen-institution-oid",
        "severity" : "error",
        "human" : "El OID de la institución debe pertenecer al catálogo HCEN publicado.",
        "expression" : "value.memberOf('http://fhir.hcen.gub.uy/ValueSet/vs-prestador-oid-mrn')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-aa-identifier"
      }]
    }]
  }
}

```
