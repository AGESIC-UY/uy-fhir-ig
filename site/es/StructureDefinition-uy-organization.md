# Perfil Organización para Uruguay - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Organización para Uruguay 

**Usos:**

* Derived from this Profile: [Perfil Organización para HCEN](StructureDefinition-hcen-organization.md)
* Referencia a este perfil: [Identificador MRN](StructureDefinition-uy-mrn-identifier.md), [Identificador de Organización](StructureDefinition-uy-org-identifier.md), [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)... Show 3 more, [Identificador Pasaporte](StructureDefinition-uy-ppn-identifier.md), [Perfil Rol del Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner-role.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)
* Ejemplos de este perfil: [Organización ABC](Organization-uy-organizacion-abc-completa.md) and [Organización ABC](Organization-uy-organizacion-abc.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-organization)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Restricciones

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

** Resumen **

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador de Organización (http://fhir.hcen.gub.uy/StructureDefinition/uy-org-identifier)](StructureDefinition-uy-org-identifier.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Organization.identifier
* El elemento 1 se divide en slices según el valor de Organization.telecom
* El elemento 1 se divide en slices según el valor de Organization.address
* El elemento 1 se divide en slices según el valor de Organization.contact.telecom

 **Vista de elementos clave** 

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

** Resumen **

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador de Organización (http://fhir.hcen.gub.uy/StructureDefinition/uy-org-identifier)](StructureDefinition-uy-org-identifier.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Organization.identifier
* El elemento 1 se divide en slices según el valor de Organization.telecom
* El elemento 1 se divide en slices según el valor de Organization.address
* El elemento 1 se divide en slices según el valor de Organization.contact.telecom

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-organization.csv), [Excel](../StructureDefinition-uy-organization.xlsx), [Schematron](../StructureDefinition-uy-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-organization",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-organization",
  "version" : "0.2.0",
  "name" : "UYOrganization",
  "title" : "Perfil Organización para Uruguay",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "short" : "Perfil Organización para Uruguay",
      "definition" : "Una agrupación de personas u organizaciones con un propósito común."
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.identifier:organizationId",
      "path" : "Organization.identifier",
      "sliceName" : "organizationId",
      "short" : "Identificador de la organización.",
      "definition" : "Identificador de la organización.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-org-identifier"]
      }]
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.telecom:phone",
      "path" : "Organization.telecom",
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
      "id" : "Organization.telecom:email",
      "path" : "Organization.telecom",
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
      "id" : "Organization.address",
      "path" : "Organization.address",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.address:uyAddress",
      "path" : "Organization.address",
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
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name"]
      }]
    },
    {
      "id" : "Organization.contact.telecom",
      "path" : "Organization.contact.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.contact.telecom:phone",
      "path" : "Organization.contact.telecom",
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
      "id" : "Organization.contact.telecom:email",
      "path" : "Organization.contact.telecom",
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
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "short" : "Dirección física en Uruguay.",
      "definition" : "Dirección física en Uruguay.",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-address"]
      }]
    }]
  }
}

```
