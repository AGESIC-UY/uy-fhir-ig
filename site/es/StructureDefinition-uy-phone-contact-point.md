# Contacto Telefónico (Uruguay) - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Contacto Telefónico (Uruguay) 

**Usages:**

* Use this DataType Profile: [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md), [Perfil Rol del Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner-role.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-phone-contact-point)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

** Summary **

Mandatory: 2 elements
 Fixed: 1 element

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

** Summary **

Mandatory: 2 elements
 Fixed: 1 element

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-phone-contact-point.csv), [Excel](../StructureDefinition-uy-phone-contact-point.xlsx), [Schematron](../StructureDefinition-uy-phone-contact-point.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-phone-contact-point",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point",
  "version" : "0.1.0",
  "name" : "UYPhoneContactPoint",
  "title" : "Contacto Telefónico (Uruguay)",
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
  "description" : "Detalles de contacto telefónico de una persona u organización.",
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
  "type" : "ContactPoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ContactPoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint",
      "short" : "Contacto Telefónico (Uruguay)",
      "definition" : "Detalles de contacto telefónico de una persona u organización."
    },
    {
      "id" : "ContactPoint.id",
      "path" : "ContactPoint.id",
      "short" : "ID único del elemento dentro del recurso.",
      "definition" : "ID único del elemento dentro del recurso."
    },
    {
      "id" : "ContactPoint.extension",
      "path" : "ContactPoint.extension",
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones."
    },
    {
      "id" : "ContactPoint.system",
      "path" : "ContactPoint.system",
      "short" : "Tipo de sistema de comunicación.",
      "definition" : "Tipo de sistema de comunicación.",
      "min" : 1,
      "fixedCode" : "phone",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "ContactPointSystem"
        }],
        "strength" : "required",
        "description" : "Medio de comunicación utilizado.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/contact-point-system|4.0.1"
      }
    },
    {
      "id" : "ContactPoint.value",
      "path" : "ContactPoint.value",
      "short" : "Número de teléfono específico.",
      "definition" : "Número de teléfono específico.",
      "comment" : "El valor puede incluir información adicional, como un número de extensión telefónica o notas sobre el uso del contacto.",
      "min" : 1
    },
    {
      "id" : "ContactPoint.use",
      "path" : "ContactPoint.use",
      "short" : "Propósito del contacto: home | work | temp | old | mobile.",
      "definition" : "Propósito o contexto de uso del contacto: hogar, trabajo, temporal, anterior o móvil.",
      "comment" : "Las aplicaciones pueden considerar vigente un contacto salvo que se indique explícitamente que es temporal o anterior.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "ContactPointUse"
        }],
        "strength" : "required",
        "description" : "Propósito de uso del dato de contacto.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/contact-point-use|4.0.1"
      }
    },
    {
      "id" : "ContactPoint.rank",
      "path" : "ContactPoint.rank",
      "short" : "Especifica un orden de preferencia de uso. Una prioridad más baja (1) indica mayor preferencia de uso.",
      "definition" : "Especifica un orden de preferencia de uso. Una prioridad más baja (1) indica mayor preferencia de uso.",
      "comment" : "El orden de preferencia indicado por rank no necesariamente coincide con el orden de los contactos en la instancia."
    },
    {
      "id" : "ContactPoint.period",
      "path" : "ContactPoint.period",
      "short" : "Periodo de validez del contacto.",
      "definition" : "Periodo de validez del contacto."
    }]
  }
}

```
