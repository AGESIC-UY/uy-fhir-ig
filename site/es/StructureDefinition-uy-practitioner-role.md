# Perfil Rol del Profesional de Salud para Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Rol del Profesional de Salud para Uruguay 

Este perfil representa la función de un profesional en un contexto organizacional. Los datos personales se mantienen en [UYPractitioner](StructureDefinition-uy-practitioner.md) y los de la institución en [UYOrganization](StructureDefinition-uy-organization.md). Esta separación permite representar distintas vinculaciones de un mismo profesional sin repetir sus datos personales.

**Usages:**

* Derived from this Profile: [Perfil Rol del Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner-role.md)
* Refer to this Profile: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)
* Examples for this Profile: [PractitionerRole/EjemploRolProfesionalUY](PractitionerRole-EjemploRolProfesionalUY.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-practitioner-role)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

** Summary **

**Structures**

This structure refers to these other structures:

* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of PractitionerRole.telecom

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) .

** Summary **

**Structures**

This structure refers to these other structures:

* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of PractitionerRole.telecom

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-practitioner-role.csv), [Excel](../StructureDefinition-uy-practitioner-role.xlsx), [Schematron](../StructureDefinition-uy-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-practitioner-role",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role",
  "version" : "0.1.0",
  "name" : "UYPractitionerRole",
  "title" : "Perfil Rol del Profesional de Salud para Uruguay",
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
      "id" : "PractitionerRole.id",
      "path" : "PractitionerRole.id",
      "short" : "ID lógico de este artefacto.",
      "definition" : "ID lógico de este artefacto.",
      "comment" : "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
    },
    {
      "id" : "PractitionerRole.meta",
      "path" : "PractitionerRole.meta",
      "short" : "Metadatos sobre el recurso.",
      "definition" : "Metadatos sobre el recurso."
    },
    {
      "id" : "PractitionerRole.implicitRules",
      "path" : "PractitionerRole.implicitRules",
      "short" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "definition" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "comment" : "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
    },
    {
      "id" : "PractitionerRole.language",
      "path" : "PractitionerRole.language",
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
      "id" : "PractitionerRole.text",
      "path" : "PractitionerRole.text",
      "short" : "Resumen del recurso en texto para interpretación humana.",
      "definition" : "Resumen del recurso en texto para interpretación humana."
    },
    {
      "id" : "PractitionerRole.contained",
      "path" : "PractitionerRole.contained",
      "short" : "Recursos inline.",
      "definition" : "Recursos inline."
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
      "short" : "Extensiones.",
      "definition" : "Extensiones."
    },
    {
      "id" : "PractitionerRole.modifierExtension",
      "path" : "PractitionerRole.modifierExtension",
      "short" : "Extensiones que no pueden ser ignoradas.",
      "definition" : "Extensiones que no pueden ser ignoradas."
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "short" : "Identificadores específicos para este rol/lugar.",
      "definition" : "Identificadores específicos para este rol/lugar."
    },
    {
      "id" : "PractitionerRole.active",
      "path" : "PractitionerRole.active",
      "short" : "Si el registro de este rol está activo.",
      "definition" : "Si el registro de este rol está activo.",
      "comment" : "Si el valor es false, period puede indicar cuándo estuvo activo el rol. Si no se informa period, no puede inferirse ese intervalo."
    },
    {
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "short" : "El periodo de tiempo durante el cual el profesional está autorizado a actuar en este rol.",
      "definition" : "El periodo de tiempo durante el cual el profesional está autorizado a actuar en este rol."
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Profesional que provee los servicios para la organización.",
      "definition" : "Profesional que provee los servicios para la organización.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "La organización donde se proveen los servicios.",
      "definition" : "La organización donde se proveen los servicios.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Roles que este profesional está autorizado a desempeñar.",
      "definition" : "Roles que este profesional está autorizado a desempeñar.",
      "comment" : "Una persona puede desempeñar más de un rol.",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-rol-profesional"
      }
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "short" : "Especialidades específicas que el profesional ejerce en este rol.",
      "definition" : "Especialidades específicas que el profesional ejerce en este rol.",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-especialidad-medica"
      }
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "short" : "Lugares físicos donde este profesional provee servicios.",
      "definition" : "Lugares físicos donde este profesional provee servicios."
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "short" : "Servicios de salud que este rol provee de forma específica.",
      "definition" : "Servicios de salud que este rol provee de forma específica."
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
      },
      "short" : "Detalles de contacto de la persona.",
      "definition" : "Detalles de contacto de la persona."
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
    },
    {
      "id" : "PractitionerRole.availableTime",
      "path" : "PractitionerRole.availableTime",
      "short" : "Tiempos en los que el lugar/servicio está disponible.",
      "definition" : "Tiempos en los que el lugar/servicio está disponible.",
      "comment" : "Los recursos Schedule y Slot asociados pueden proporcionar información más detallada sobre la disponibilidad."
    },
    {
      "id" : "PractitionerRole.availableTime.id",
      "path" : "PractitionerRole.availableTime.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "PractitionerRole.availableTime.extension",
      "path" : "PractitionerRole.availableTime.extension",
      "short" : "Contenido adicional definido mediante extensiones.",
      "definition" : "Contenido adicional definido mediante extensiones."
    },
    {
      "id" : "PractitionerRole.availableTime.modifierExtension",
      "path" : "PractitionerRole.availableTime.modifierExtension",
      "short" : "Extensiones que modifican el significado del elemento y no pueden ignorarse.",
      "definition" : "Extensiones que modifican el significado del elemento y no pueden ignorarse."
    },
    {
      "id" : "PractitionerRole.availableTime.daysOfWeek",
      "path" : "PractitionerRole.availableTime.daysOfWeek",
      "short" : "Días de la semana que aplica.",
      "definition" : "Días de la semana que aplica.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "DaysOfWeek"
        }],
        "strength" : "required",
        "description" : "Días de la semana en que se encuentra disponible.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/days-of-week|4.0.1"
      }
    },
    {
      "id" : "PractitionerRole.availableTime.allDay",
      "path" : "PractitionerRole.availableTime.allDay",
      "short" : "Si está disponible las 24 horas.",
      "definition" : "Si está disponible las 24 horas."
    },
    {
      "id" : "PractitionerRole.availableTime.availableStartTime",
      "path" : "PractitionerRole.availableTime.availableStartTime",
      "short" : "Hora de apertura.",
      "definition" : "Hora de apertura.",
      "comment" : "La zona horaria corresponde al lugar donde se presta el servicio."
    },
    {
      "id" : "PractitionerRole.availableTime.availableEndTime",
      "path" : "PractitionerRole.availableTime.availableEndTime",
      "short" : "Hora de cierre.",
      "definition" : "Hora de cierre."
    },
    {
      "id" : "PractitionerRole.notAvailable",
      "path" : "PractitionerRole.notAvailable",
      "short" : "Periodos en los que no está disponible por razones específicas.",
      "definition" : "Periodos en los que no está disponible por razones específicas."
    },
    {
      "id" : "PractitionerRole.notAvailable.id",
      "path" : "PractitionerRole.notAvailable.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "PractitionerRole.notAvailable.extension",
      "path" : "PractitionerRole.notAvailable.extension",
      "short" : "Contenido adicional definido mediante extensiones.",
      "definition" : "Contenido adicional definido mediante extensiones."
    },
    {
      "id" : "PractitionerRole.notAvailable.modifierExtension",
      "path" : "PractitionerRole.notAvailable.modifierExtension",
      "short" : "Extensiones que modifican el significado del elemento y no pueden ignorarse.",
      "definition" : "Extensiones que modifican el significado del elemento y no pueden ignorarse."
    },
    {
      "id" : "PractitionerRole.notAvailable.description",
      "path" : "PractitionerRole.notAvailable.description",
      "short" : "Razón por la que no está disponible.",
      "definition" : "Razón por la que no está disponible."
    },
    {
      "id" : "PractitionerRole.notAvailable.during",
      "path" : "PractitionerRole.notAvailable.during",
      "short" : "Periodo de tiempo de no disponibilidad.",
      "definition" : "Periodo de tiempo de no disponibilidad."
    },
    {
      "id" : "PractitionerRole.availabilityExceptions",
      "path" : "PractitionerRole.availabilityExceptions",
      "short" : "Descripción textual de anomalías en la disponibilidad.",
      "definition" : "Descripción textual de anomalías en la disponibilidad."
    },
    {
      "id" : "PractitionerRole.endpoint",
      "path" : "PractitionerRole.endpoint",
      "short" : "Endpoints técnicos que proveen acceso a servicios para este rol.",
      "definition" : "Endpoints técnicos que proveen acceso a servicios para este rol."
    }]
  }
}

```
