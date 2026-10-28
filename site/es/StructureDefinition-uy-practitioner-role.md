# Perfil Rol del Profesional de Salud para Uruguay - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Rol del Profesional de Salud para Uruguay 

Este perfil representa la función de un profesional en el contexto de una organización puntual. Los datos personales se mantienen en [UYPractitioner](StructureDefinition-uy-practitioner.md) y los de la institución en [UYOrganization](StructureDefinition-uy-organization.md).

**Usos:**

* Derived from this Profile: [Perfil Rol del Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner-role.md)
* Referencia a este perfil: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)
* Ejemplos de este perfil: [PractitionerRole/uy-rol-medicina-general-sanchez-abc](PractitionerRole-uy-rol-medicina-general-sanchez-abc.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-practitioner-role)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

#### Bindings terminológicos (diferencial)

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

** Resumen **

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de PractitionerRole.telecom

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

#### Bindings terminológicos (diferencial)

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

** Resumen **

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de PractitionerRole.telecom

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-practitioner-role.csv), [Excel](../StructureDefinition-uy-practitioner-role.xlsx), [Schematron](../StructureDefinition-uy-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-practitioner-role",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role",
  "version" : "0.2.0",
  "name" : "UYPractitionerRole",
  "title" : "Perfil Rol del Profesional de Salud para Uruguay",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole",
      "short" : "Perfil Rol del Profesional de Salud para Uruguay",
      "definition" : "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios."
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-rol-profesional"
      }
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-especialidad-medica"
      }
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.telecom:phone",
      "path" : "PractitionerRole.telecom",
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
      "id" : "PractitionerRole.telecom:email",
      "path" : "PractitionerRole.telecom",
      "sliceName" : "email",
      "short" : "Detalles de correo electrónico de contacto.",
      "definition" : "Detalles de correo electrónico de contacto.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point"]
      }]
    }]
  }
}

```
