# Perfil Organización para Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Organización para Uruguay 

 
Una agrupación de personas u organizaciones con un propósito común. 

**Usages:**

* Derived from this Profile: [Perfil Organización para HCEN](StructureDefinition-hcen-organization.md)
* Refer to this Profile: [Identificador de Organización](StructureDefinition-uy-aa-identifier.md), [Identificador Cédula de Identidad](StructureDefinition-uy-ci-identifier.md), [Identificador Nacional Extranjero](StructureDefinition-uy-fni-identifier.md), [Identificador MRN](StructureDefinition-uy-mrn-identifier.md)... Show 5 more, [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md), [Identificador Pasaporte](StructureDefinition-uy-ppn-identifier.md), [Perfil Rol del Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner-role.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)
* Examples for this Profile: [Organización de ejemplo CORE UY](Organization-EjemploOrganizacionUY.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-organization)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

** Summary **

**Structures**

This structure refers to these other structures:

* [Identificador de Organización (http://fhir.hcen.gub.uy/StructureDefinition/uy-aa-identifier)](StructureDefinition-uy-aa-identifier.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier
* The element 1 is sliced based on the value of Organization.telecom
* The element 1 is sliced based on the value of Organization.address
* The element 1 is sliced based on the value of Organization.contact.telecom

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Organization](http://hl7.org/fhir/R4/organization.html) .

** Summary **

**Structures**

This structure refers to these other structures:

* [Identificador de Organización (http://fhir.hcen.gub.uy/StructureDefinition/uy-aa-identifier)](StructureDefinition-uy-aa-identifier.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier
* The element 1 is sliced based on the value of Organization.telecom
* The element 1 is sliced based on the value of Organization.address
* The element 1 is sliced based on the value of Organization.contact.telecom

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-organization.csv), [Excel](../StructureDefinition-uy-organization.xlsx), [Schematron](../StructureDefinition-uy-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-organization",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-organization",
  "version" : "0.1.0",
  "name" : "UYOrganization",
  "title" : "Perfil Organización para Uruguay",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
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
      "id" : "Organization.id",
      "path" : "Organization.id",
      "short" : "ID lógico de este artefacto.",
      "definition" : "ID lógico de este artefacto.",
      "comment" : "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
    },
    {
      "id" : "Organization.meta",
      "path" : "Organization.meta",
      "short" : "Metadatos sobre el recurso.",
      "definition" : "Metadatos sobre el recurso."
    },
    {
      "id" : "Organization.implicitRules",
      "path" : "Organization.implicitRules",
      "short" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "definition" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "comment" : "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
    },
    {
      "id" : "Organization.language",
      "path" : "Organization.language",
      "short" : "Idioma del contenido del recurso.",
      "definition" : "Idioma del contenido del recurso.",
      "comment" : "El idioma facilita la indexación y la accesibilidad. No todo el contenido debe estar en el idioma principal. El idioma de la narrativa se indica también en el atributo lang de su elemento div; no se deduce automáticamente de Resource.language.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet",
          "valueCanonical" : "http://hl7.org/fhir/ValueSet/all-languages"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "Language"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
          "valueBoolean" : true
        }],
        "strength" : "preferred",
        "description" : "Idioma humano del contenido.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/languages"
      }
    },
    {
      "id" : "Organization.text",
      "path" : "Organization.text",
      "short" : "Resumen del recurso en texto para interpretación humana.",
      "definition" : "Resumen del recurso en texto para interpretación humana."
    },
    {
      "id" : "Organization.contained",
      "path" : "Organization.contained",
      "short" : "Recursos inline.",
      "definition" : "Recursos inline."
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
      "short" : "Extensiones.",
      "definition" : "Extensiones."
    },
    {
      "id" : "Organization.modifierExtension",
      "path" : "Organization.modifierExtension",
      "short" : "Extensiones que no pueden ser ignoradas.",
      "definition" : "Extensiones que no pueden ser ignoradas."
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
      },
      "short" : "Identificadores de la organización.",
      "definition" : "Identificadores de la organización."
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
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-aa-identifier"]
      }]
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Si el registro de la organización sigue activo.",
      "definition" : "Si el registro de la organización sigue activo."
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Tipo de organización.",
      "definition" : "Tipo de organización.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "OrganizationType"
        }],
        "strength" : "example",
        "description" : "Clasificación de la organización.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/organization-type"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Nombre utilizado para la organización.",
      "definition" : "Nombre utilizado para la organización.",
      "comment" : "Si cambia el nombre de la organización, puede conservarse el anterior en alias para facilitar las búsquedas."
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "short" : "Lista de nombres alternativos de la organización.",
      "definition" : "Lista de nombres alternativos de la organización.",
      "comment" : "Los nombres alternativos o históricos no incluyen fechas: facilitan las búsquedas, pero no registran los periodos durante los que se utilizaron."
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
      },
      "short" : "Datos de contacto de la organización.",
      "definition" : "Datos de contacto de la organización.",
      "comment" : "No se utiliza el código home. Estos datos corresponden al contacto oficial de la organización, no a las personas que trabajan en ella o la representan."
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
      },
      "short" : "Direcciones físicas o postales de la organización.",
      "definition" : "Direcciones físicas o postales de la organización.",
      "comment" : "La organización puede tener varias direcciones con distintos usos o periodos de aplicación. No se utiliza el código home."
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
      "short" : "Organización de la cual forma parte esta organización.",
      "definition" : "Organización de la cual forma parte esta organización.",
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
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "short" : "Contacto de la organización para un propósito específico.",
      "definition" : "Contacto de la organización para un propósito específico."
    },
    {
      "id" : "Organization.contact.id",
      "path" : "Organization.contact.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "Organization.contact.extension",
      "path" : "Organization.contact.extension",
      "short" : "Contenido adicional definido mediante extensiones.",
      "definition" : "Contenido adicional definido mediante extensiones."
    },
    {
      "id" : "Organization.contact.modifierExtension",
      "path" : "Organization.contact.modifierExtension",
      "short" : "Extensiones que modifican el significado del elemento y no pueden ignorarse.",
      "definition" : "Extensiones que modifican el significado del elemento y no pueden ignorarse."
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "short" : "El tipo de propósito del contacto.",
      "definition" : "El tipo de propósito del contacto.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "ContactPartyType"
        }],
        "strength" : "extensible",
        "description" : "Propósito para el que se contacta a esta persona.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/contactentity-type"
      }
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "short" : "Nombre asociado con el contacto.",
      "definition" : "Nombre asociado con el contacto.",
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
      },
      "short" : "Detalles de contacto de la persona.",
      "definition" : "Detalles de contacto de la persona."
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
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "short" : "Endpoints técnicos que proveen acceso a servicios operados por la organización.",
      "definition" : "Endpoints técnicos que proveen acceso a servicios operados por la organización."
    }]
  }
}

```
