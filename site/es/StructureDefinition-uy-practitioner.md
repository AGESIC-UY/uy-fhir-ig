# Perfil Profesional de Salud para Uruguay - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Profesional de Salud para Uruguay 

### Identificadores

La pertenencia a cada slice de `identifier` se determina por la conformidad del contenido del identificador con el perfil correspondiente, sin exigir URLs de perfil dentro de cada `Identifier`. La lista permanece abierta para otros identificadores.

**Usos:**

* Derived from this Profile: [Perfil Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner.md)
* Referencia a este perfil: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md) and [Perfil Rol del Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner-role.md)
* Ejemplos de este perfil: [Practitioner/uy-profesional-sanchez-completo](Practitioner-uy-profesional-sanchez-completo.md) and [Practitioner/uy-profesional-sanchez](Practitioner-uy-profesional-sanchez.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-practitioner)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Restricciones

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

** Resumen **

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Documento Nacional de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier)](StructureDefinition-uy-dni-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Practitioner.identifier
* El elemento 1 se divide en slices según el valor de Practitioner.telecom
* El elemento 1 se divide en slices según el valor de Practitioner.address

 **Vista de elementos clave** 

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

** Resumen **

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Documento Nacional de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier)](StructureDefinition-uy-dni-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Practitioner.identifier
* El elemento 1 se divide en slices según el valor de Practitioner.telecom
* El elemento 1 se divide en slices según el valor de Practitioner.address

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-practitioner.csv), [Excel](../StructureDefinition-uy-practitioner.xlsx), [Schematron](../StructureDefinition-uy-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-practitioner",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner",
  "version" : "0.2.0",
  "name" : "UYPractitioner",
  "title" : "Perfil Profesional de Salud para Uruguay",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "short" : "Perfil Profesional de Salud para Uruguay",
      "definition" : "Una persona que está directa o indirectamente involucrada en la provisión de atención médica."
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.identifier:dni",
      "path" : "Practitioner.identifier",
      "sliceName" : "dni",
      "short" : "Documento nacional de identidad del profesional, según el país emisor.",
      "definition" : "Documento nacional de identidad del profesional, según el país emisor.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier"]
      }]
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name"]
      }]
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.telecom:phone",
      "path" : "Practitioner.telecom",
      "sliceName" : "phone",
      "short" : "Detalles de teléfono de contacto.",
      "definition" : "Detalles de teléfono de contacto.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point"]
      }]
    },
    {
      "id" : "Practitioner.telecom:email",
      "path" : "Practitioner.telecom",
      "sliceName" : "email",
      "short" : "Detalles de correo electrónico de contacto.",
      "definition" : "Detalles de correo electrónico de contacto.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point"]
      }]
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.address:uyAddress",
      "path" : "Practitioner.address",
      "sliceName" : "uyAddress",
      "short" : "Dirección física en Uruguay.",
      "definition" : "Dirección física en Uruguay.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-address"]
      }]
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    }]
  }
}

```
