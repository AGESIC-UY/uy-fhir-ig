# Perfil Rol del Profesional de Salud para HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Rol del Profesional de Salud para HCEN 

El rol vincula obligatoriamente un [HCENPractitioner](StructureDefinition-hcen-practitioner.md) mediante `practitioner` y una [HCENOrganization](StructureDefinition-hcen-organization.md) mediante `organization`.

`code`, `specialty` y `location` son Must Support y se informan cuando se conocen, conforme a las [reglas de HCEN](hcen-conformidad.md#must-support). En una publicación, el rol utilizado en la autoría y los recursos del profesional y de la organización deben formar parte del [Bundle de publicación](StructureDefinition-hcen-provide-document-bundle.md).

**Usos:**

* Utilizar este perfil: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Referencia a este perfil: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md), [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md), [HCEN Prescripción de Medicación](StructureDefinition-hcen-medication-request.md), [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)
* Ejemplos de este perfil: [PractitionerRole/hcen-rol-medicina-general-rodriguez-asse](PractitionerRole-hcen-rol-medicina-general-rodriguez-asse.md) and [PractitionerRole/hcen-rol-traumatologia-sousa](PractitionerRole-hcen-rol-traumatologia-sousa.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-practitioner-role)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

** Resumen **

Obligatorios: 2 elementos
 Must-Support: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPractitionerRole](StructureDefinition-uy-practitioner-role.md) .

** Resumen **

Obligatorios: 2 elementos
 Must-Support: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-practitioner-role.csv), [Excel](../StructureDefinition-hcen-practitioner-role.xlsx), [Schematron](../StructureDefinition-hcen-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-practitioner-role",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role",
  "version" : "0.2.0",
  "name" : "HCENPractitionerRole",
  "title" : "Perfil Rol del Profesional de Salud para HCEN",
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
  "description" : "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENPractitionerRoleToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2. El rol corresponde al autor asignado del documento: vincula a la persona (assignedPerson) con la organización a la que representa (representedOrganization)."
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole",
      "short" : "Perfil Rol del Profesional de Salud para HCEN",
      "mapping" : [{
        "identity" : "HCENPractitionerRoleToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor"
      }]
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner"]
      }],
      "mapping" : [{
        "identity" : "HCENPractitionerRoleToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/assignedPerson",
        "comment" : "Referencia al HCENPractitioner construido con assignedAuthor/id y assignedPerson."
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }],
      "mapping" : [{
        "identity" : "HCENPractitionerRoleToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization",
        "comment" : "Referencia a la HCENOrganization construida con representedOrganization."
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "mustSupport" : true
    }]
  }
}

```
