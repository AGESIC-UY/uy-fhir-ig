# Perfil Organización para HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Organización para HCEN 

**Usos:**

* Utilizar este perfil: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Referencia a este perfil: [Por Orden De](StructureDefinition-ext-by-order-of.md), [Organización Financiadora](StructureDefinition-ext-funder.md), [Identificador Cédula de Identidad](StructureDefinition-hcen-ci-identifier.md), [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)... Show 5 more, [HCEN Evento Clínico](StructureDefinition-hcen-encounter.md), [Identificador MRN para HCEN](StructureDefinition-hcen-mrn-identifier.md), [Identificador de Organización para HCEN](StructureDefinition-hcen-org-identifier.md), [Perfil Rol del Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner-role.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)
* Ejemplos de este perfil: [Administración de los Servicios de Salud del Estado](Organization-hcen-organizacion-asse.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-organization)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

** Resumen **

Obligatorios: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador de Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier)](StructureDefinition-hcen-org-identifier.md)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYOrganization](StructureDefinition-uy-organization.md) .

** Resumen **

Obligatorios: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador de Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier)](StructureDefinition-hcen-org-identifier.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-organization.csv), [Excel](../StructureDefinition-hcen-organization.xlsx), [Schematron](../StructureDefinition-hcen-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-organization",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization",
  "version" : "0.2.0",
  "name" : "HCENOrganization",
  "title" : "Perfil Organización para HCEN",
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
  "description" : "Una agrupación de personas u organizaciones con un propósito común.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENOrganizationToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2. La organización se toma de representedOrganization cuando se referencia desde el rol del autor, y de representedCustodianOrganization cuando es la custodia del documento (Composition.custodian)."
  },
  {
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "mapping" : [{
        "identity" : "HCENOrganizationToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization"
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:organizationId",
      "path" : "Organization.identifier",
      "sliceName" : "organizationId",
      "min" : 1,
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier"]
      }],
      "mapping" : [{
        "identity" : "HCENOrganizationToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization/id | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id",
        "comment" : "Identificador de la organización definido por la UNAOID."
      }]
    },
    {
      "id" : "Organization.identifier:organizationId.system",
      "path" : "Organization.identifier.system",
      "mapping" : [{
        "identity" : "HCENOrganizationToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization/id | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id",
        "comment" : "Valor fijo urn:ietf:rfc:3986."
      }]
    },
    {
      "id" : "Organization.identifier:organizationId.value",
      "path" : "Organization.identifier.value",
      "mapping" : [{
        "identity" : "HCENOrganizationToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization/id/@root | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id/@root",
        "comment" : "El value FHIR contiene la URI urn:oid: completa; CDA @root contiene el OID sin ese prefijo."
      }]
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mapping" : [{
        "identity" : "HCENOrganizationToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization/name | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name"
      }]
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "mapping" : [{
        "identity" : "HCENOrganizationToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization/addr | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr"
      }]
    }]
  }
}

```
