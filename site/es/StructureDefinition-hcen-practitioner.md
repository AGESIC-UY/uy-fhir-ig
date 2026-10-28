# Perfil Profesional de Salud para HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Profesional de Salud para HCEN 

El profesional se identifica mediante la CI HCEN obligatoria (`identifier[ci]`, `1..1`), con [HCENCIIdentifier](StructureDefinition-hcen-ci-identifier.md), y debe incluir al menos un nombre. El DNI nacional heredado es opcional y no sustituye la CI HCEN. No se admite `photo`.

La participación del profesional en una organización se expresa mediante [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.md). Este rol se utiliza en la autoría documental. Las convenciones compartidas de los identificadores se explican en [Identificadores HCEN](hcen-identificadores.md).

Las extensiones de [certificación](StructureDefinition-ext-practitioner-certification.md) y [notificación obligatoria](StructureDefinition-ext-practitioner-eno.md) se mantienen definidas, pero no se incorporan a este perfil ni a otro hasta que se acuerde cómo representar su contexto documental.

Los apellidos y las extensiones comunes de personas se consultan en el [Core](extensiones.md).

**Usos:**

* Utilizar este perfil: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Referencia a este perfil: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md) and [Perfil Rol del Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner-role.md)
* Ejemplos de este perfil: [Practitioner/hcen-practitioner-sousa](Practitioner-hcen-practitioner-sousa.md) and [Practitioner/hcen-profesional-rodriguez](Practitioner-hcen-profesional-rodriguez.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-practitioner)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

** Resumen **

Obligatorios: 3 elementos
 Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/hcen-ci-identifier)](StructureDefinition-hcen-ci-identifier.md)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPractitioner](StructureDefinition-uy-practitioner.md) .

** Resumen **

Obligatorios: 3 elementos
 Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/hcen-ci-identifier)](StructureDefinition-hcen-ci-identifier.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-practitioner.csv), [Excel](../StructureDefinition-hcen-practitioner.xlsx), [Schematron](../StructureDefinition-hcen-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-practitioner",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner",
  "version" : "0.2.0",
  "name" : "HCENPractitioner",
  "title" : "Perfil Profesional de Salud para HCEN",
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
  "description" : "Una persona que está directa o indirectamente involucrada en la provisión de atención médica.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENPractitionerToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2. El profesional corresponde a la persona asignada como autor del documento."
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
  "type" : "Practitioner",
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "short" : "Perfil Profesional de Salud para HCEN",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor"
      }]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:ci",
      "path" : "Practitioner.identifier",
      "sliceName" : "ci",
      "short" : "Cédula de identidad del profesional.",
      "definition" : "Cédula de identidad del profesional.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-ci-identifier"]
      }],
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/id",
        "comment" : "Cédula de identidad del profesional."
      }]
    },
    {
      "id" : "Practitioner.identifier:ci.system",
      "path" : "Practitioner.identifier.system",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/id/@root",
        "comment" : "El system FHIR contiene urn:oid:2.16.858.2.10000675.68909; CDA @root contiene el OID sin el prefijo urn:oid:."
      }]
    },
    {
      "id" : "Practitioner.identifier:ci.value",
      "path" : "Practitioner.identifier.value",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/id/@extension",
        "comment" : "Número de cédula."
      }]
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "min" : 1,
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/assignedPerson/name"
      }]
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family",
        "comment" : "Apellidos, en el orden en que aparecen en el CDA."
      }]
    },
    {
      "id" : "Practitioner.name.family.extension:primerApellido",
      "path" : "Practitioner.name.family.extension",
      "sliceName" : "primerApellido",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family[1]",
        "comment" : "Primer elemento family."
      }]
    },
    {
      "id" : "Practitioner.name.family.extension:segundoApellido",
      "path" : "Practitioner.name.family.extension",
      "sliceName" : "segundoApellido",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family[2]",
        "comment" : "Segundo elemento family, si existe."
      }]
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/assignedPerson/name/given"
      }]
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "mapping" : [{
        "identity" : "HCENPractitionerToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/addr"
      }]
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "max" : "0"
    }]
  }
}

```
