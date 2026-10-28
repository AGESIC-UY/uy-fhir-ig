# Identificador de Organización para HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: Identificador de Organización para HCEN 

**Usos:**

* Utilizar este perfil de tipo de datos: [Perfil Organización para HCEN](StructureDefinition-hcen-organization.md) and [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-org-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYOrgIdentifier](StructureDefinition-uy-org-identifier.md) .

#### Restricciones

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYOrgIdentifier](StructureDefinition-uy-org-identifier.md) .

** Resumen **

Fijos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [UYOrgIdentifier](StructureDefinition-uy-org-identifier.md) .

#### Restricciones

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYOrgIdentifier](StructureDefinition-uy-org-identifier.md) .

** Resumen **

Fijos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-org-identifier.csv), [Excel](../StructureDefinition-hcen-org-identifier.xlsx), [Schematron](../StructureDefinition-hcen-org-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-org-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier",
  "version" : "0.2.0",
  "name" : "HCENOrgIdentifier",
  "title" : "Identificador de Organización para HCEN",
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
  "description" : "Identificador URI OID de una organización uruguaya para los intercambios HCEN.",
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
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-org-identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Identificador de Organización para HCEN",
      "definition" : "Identificador URI OID de una organización uruguaya para los intercambios HCEN."
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "Sistema de identificación por URI",
      "definition" : "Valor fijo urn:ietf:rfc:3986; la URI OID completa de la organización se informa en value.",
      "fixedUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "URI OID de la organización uruguaya",
      "definition" : "OID completo con prefijo urn:oid:, bajo las ramas de organizaciones de UNA-OID: 2.16.858.0.0 (Estado), 2.16.858.0.1 (personas públicas no estatales) o 2.16.858.0.2 (empresas y organizaciones privadas). La invariante comprueba la estructura de los arcos; la asignación y autorización se verifican por separado.",
      "constraint" : [{
        "key" : "hcen-org-oid",
        "severity" : "error",
        "human" : "El value debe ser una URI OID descendiente de las ramas de organizaciones UNAOID 2.16.858.0.0 (Estado), 2.16.858.0.1 (personas públicas no estatales) o 2.16.858.0.2 (empresas y organizaciones privadas). El formato no acredita asignación ni autorización del OID.",
        "expression" : "matches('^urn:oid:2[.]16[.]858[.]0[.][012]([.](0|[1-9][0-9]*))+$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier"
      }]
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    }]
  }
}

```
