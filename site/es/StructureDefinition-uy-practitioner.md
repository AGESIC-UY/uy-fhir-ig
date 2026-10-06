# Perfil Profesional de Salud para Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Profesional de Salud para Uruguay 

**Usages:**

* Derived from this Profile: [Perfil Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner.md)
* Refer to this Profile: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md) and [Perfil Rol del Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner-role.md)
* Examples for this Profile: [Practitioner/EjemploProfesionalUY](Practitioner-EjemploProfesionalUY.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-practitioner)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

** Summary **

**Structures**

This structure refers to these other structures:

* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-ci-identifier)](StructureDefinition-uy-ci-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Practitioner.identifier
* The element 1 is sliced based on the value of Practitioner.telecom
* The element 1 is sliced based on the value of Practitioner.address

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) .

** Summary **

**Structures**

This structure refers to these other structures:

* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-ci-identifier)](StructureDefinition-uy-ci-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Practitioner.identifier
* The element 1 is sliced based on the value of Practitioner.telecom
* The element 1 is sliced based on the value of Practitioner.address

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-practitioner.csv), [Excel](../StructureDefinition-uy-practitioner.xlsx), [Schematron](../StructureDefinition-uy-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-practitioner",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner",
  "version" : "0.1.0",
  "name" : "UYPractitioner",
  "title" : "Perfil Profesional de Salud para Uruguay",
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
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "short" : "ID lógico de este artefacto.",
      "definition" : "ID lógico de este artefacto.",
      "comment" : "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
    },
    {
      "id" : "Practitioner.meta",
      "path" : "Practitioner.meta",
      "short" : "Metadatos sobre el recurso.",
      "definition" : "Metadatos sobre el recurso."
    },
    {
      "id" : "Practitioner.implicitRules",
      "path" : "Practitioner.implicitRules",
      "short" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "definition" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "comment" : "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
    },
    {
      "id" : "Practitioner.language",
      "path" : "Practitioner.language",
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
      "id" : "Practitioner.text",
      "path" : "Practitioner.text",
      "short" : "Resumen del recurso en texto para interpretación humana.",
      "definition" : "Resumen del recurso en texto para interpretación humana."
    },
    {
      "id" : "Practitioner.contained",
      "path" : "Practitioner.contained",
      "short" : "Recursos inline.",
      "definition" : "Recursos inline."
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones."
    },
    {
      "id" : "Practitioner.modifierExtension",
      "path" : "Practitioner.modifierExtension",
      "short" : "Extensiones que no pueden ser ignoradas.",
      "definition" : "Extensiones que no pueden ser ignoradas."
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Un identificador para esta persona en este rol.",
      "definition" : "Un identificador para esta persona en este rol."
    },
    {
      "id" : "Practitioner.identifier:ci",
      "path" : "Practitioner.identifier",
      "sliceName" : "ci",
      "short" : "Cédula de identidad del profesional.",
      "definition" : "Cédula de identidad del profesional.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-ci-identifier"]
      }]
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "short" : "Si el registro de este profesional está activo.",
      "definition" : "Si el registro de este profesional está activo."
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "El nombre o nombres asociados con el profesional.",
      "definition" : "El nombre o nombres asociados con el profesional.",
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
      },
      "short" : "Detalles de contacto de la persona.",
      "definition" : "Detalles de contacto de la persona."
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
      },
      "short" : "Una o más direcciones para el individuo.",
      "definition" : "Una o más direcciones para el individuo.",
      "comment" : "PractitionerRole no contiene una dirección propia; para ese contexto se utiliza location, que puede tener una dirección."
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
      "id" : "Practitioner.gender",
      "path" : "Practitioner.gender",
      "short" : "Sexo administrativo.",
      "definition" : "Sexo administrativo.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "AdministrativeGender"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
          "valueBoolean" : true
        }],
        "strength" : "required",
        "description" : "Sexo o género administrativo registrado.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1"
      }
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "short" : "La fecha de nacimiento del profesional.",
      "definition" : "La fecha de nacimiento del profesional."
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "short" : "Imagen del profesional.",
      "definition" : "Imagen del profesional."
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "short" : "Certificaciones oficiales, títulos, licencias o matrículas del profesional.",
      "definition" : "Certificaciones oficiales, títulos, licencias o matrículas del profesional."
    },
    {
      "id" : "Practitioner.qualification.id",
      "path" : "Practitioner.qualification.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "Practitioner.qualification.extension",
      "path" : "Practitioner.qualification.extension",
      "short" : "Contenido adicional definido mediante extensiones.",
      "definition" : "Contenido adicional definido mediante extensiones."
    },
    {
      "id" : "Practitioner.qualification.modifierExtension",
      "path" : "Practitioner.qualification.modifierExtension",
      "short" : "Extensiones que modifican el significado del elemento y no pueden ignorarse.",
      "definition" : "Extensiones que modifican el significado del elemento y no pueden ignorarse."
    },
    {
      "id" : "Practitioner.qualification.identifier",
      "path" : "Practitioner.qualification.identifier",
      "short" : "Identificador oficial de la cualificación o matrícula.",
      "definition" : "Identificador oficial de la cualificación o matrícula."
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "short" : "Codificación de la cualificación.",
      "definition" : "Codificación de la cualificación.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "Qualification"
        }],
        "strength" : "example",
        "description" : "Cualificación del profesional para prestar un servicio.",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-2.7-0360"
      }
    },
    {
      "id" : "Practitioner.qualification.period",
      "path" : "Practitioner.qualification.period",
      "short" : "Periodo durante el cual la cualificación es válida.",
      "definition" : "Periodo durante el cual la cualificación es válida."
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "Organización que otorgó o regula la cualificación.",
      "definition" : "Organización que otorgó o regula la cualificación.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "short" : "Idiomas que el profesional puede usar para comunicarse con los pacientes.",
      "definition" : "Idiomas que el profesional puede usar para comunicarse con los pacientes.",
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
        "description" : "Idiomas que utiliza el profesional para comunicarse.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/languages"
      }
    }]
  }
}

```
