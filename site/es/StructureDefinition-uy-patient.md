# Perfil Paciente para Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Paciente para Uruguay 

**Usages:**

* Derived from this Profile: [Perfil Paciente para HCEN](StructureDefinition-hcen-patient.md)
* Refer to this Profile: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)
* Examples for this Profile: [Patient/EjemploPacienteUY](Patient-EjemploPacienteUY.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-patient)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

** Summary **

Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Identificador MRN (http://fhir.hcen.gub.uy/StructureDefinition/uy-mrn-identifier)](StructureDefinition-uy-mrn-identifier.md)
* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-ci-identifier)](StructureDefinition-uy-ci-identifier.md)
* [Identificador Pasaporte (http://fhir.hcen.gub.uy/StructureDefinition/uy-ppn-identifier)](StructureDefinition-uy-ppn-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Rol del Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role)](StructureDefinition-uy-practitioner-role.md)
* [Perfil Paciente para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-patient)](StructureDefinition-uy-patient.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/individual-genderIdentity](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-genderIdentity.html)
* [http://hl7.org/fhir/StructureDefinition/individual-pronouns](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-pronouns.html)
* [http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-recordedSexOrGender.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.telecom
* The element 1 is sliced based on the value of Patient.address
* The element 1 is sliced based on the value of Patient.contact.telecom

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

** Summary **

Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Identificador MRN (http://fhir.hcen.gub.uy/StructureDefinition/uy-mrn-identifier)](StructureDefinition-uy-mrn-identifier.md)
* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-ci-identifier)](StructureDefinition-uy-ci-identifier.md)
* [Identificador Pasaporte (http://fhir.hcen.gub.uy/StructureDefinition/uy-ppn-identifier)](StructureDefinition-uy-ppn-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Rol del Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role)](StructureDefinition-uy-practitioner-role.md)
* [Perfil Paciente para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-patient)](StructureDefinition-uy-patient.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/individual-genderIdentity](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-genderIdentity.html)
* [http://hl7.org/fhir/StructureDefinition/individual-pronouns](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-pronouns.html)
* [http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-recordedSexOrGender.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.telecom
* The element 1 is sliced based on the value of Patient.address
* The element 1 is sliced based on the value of Patient.contact.telecom

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-patient.csv), [Excel](../StructureDefinition-uy-patient.xlsx), [Schematron](../StructureDefinition-uy-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-patient",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-patient",
  "version" : "0.1.0",
  "name" : "UYPatient",
  "title" : "Perfil Paciente para Uruguay",
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
  "description" : "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "short" : "Perfil Paciente para Uruguay",
      "definition" : "Datos demográficos y administrativos sobre una persona que recibe atención médica o servicios relacionados."
    },
    {
      "id" : "Patient.id",
      "path" : "Patient.id",
      "short" : "ID lógico de este artefacto.",
      "definition" : "ID lógico de este artefacto.",
      "comment" : "El recurso puede no tener identificador lógico cuando se envía al servidor mediante una operación de creación."
    },
    {
      "id" : "Patient.meta",
      "path" : "Patient.meta",
      "short" : "Metadatos sobre el recurso.",
      "definition" : "Metadatos sobre el recurso."
    },
    {
      "id" : "Patient.implicitRules",
      "path" : "Patient.implicitRules",
      "short" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "definition" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "comment" : "Este elemento limita la interpretación del contenido a los sistemas que conocen las reglas indicadas y puede reducir la interoperabilidad. Debe evitarse cuando sea posible. Habitualmente referencia una guía que explica las reglas adicionales."
    },
    {
      "id" : "Patient.language",
      "path" : "Patient.language",
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
      "id" : "Patient.text",
      "path" : "Patient.text",
      "short" : "Resumen del recurso en texto para interpretación humana.",
      "definition" : "Resumen del recurso en texto para interpretación humana."
    },
    {
      "id" : "Patient.contained",
      "path" : "Patient.contained",
      "short" : "Recursos integrados en línea (inline).",
      "definition" : "Recursos integrados en línea (inline)."
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones."
    },
    {
      "id" : "Patient.extension:genderIdentity",
      "path" : "Patient.extension",
      "sliceName" : "genderIdentity",
      "short" : "Identidad de género.",
      "definition" : "Identidad de género.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"]
      }]
    },
    {
      "id" : "Patient.extension:pronouns",
      "path" : "Patient.extension",
      "sliceName" : "pronouns",
      "short" : "Pronombres con los que se debe referir al paciente.",
      "definition" : "Pronombres con los que se debe referir al paciente.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-pronouns"]
      }]
    },
    {
      "id" : "Patient.extension:recordedSexOrGender",
      "path" : "Patient.extension",
      "sliceName" : "recordedSexOrGender",
      "short" : "Conceptos de sexo asignado al nacer",
      "definition" : "Conceptos de sexo asignado al nacer",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"]
      }]
    },
    {
      "id" : "Patient.modifierExtension",
      "path" : "Patient.modifierExtension",
      "short" : "Extensiones que no pueden ser ignoradas si no se entienden.",
      "definition" : "Extensiones que no pueden ser ignoradas si no se entienden.",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "short" : "Identificadores para este paciente.",
      "definition" : "Identificadores para este paciente."
    },
    {
      "id" : "Patient.identifier:mrn",
      "path" : "Patient.identifier",
      "sliceName" : "mrn",
      "short" : "Identificador interno del paciente en la organización.",
      "definition" : "Identificador interno del paciente en la organización.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-mrn-identifier"]
      }]
    },
    {
      "id" : "Patient.identifier:ci",
      "path" : "Patient.identifier",
      "sliceName" : "ci",
      "short" : "Cédula de identidad del paciente.",
      "definition" : "Cédula de identidad del paciente.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-ci-identifier"]
      }]
    },
    {
      "id" : "Patient.identifier:ppn",
      "path" : "Patient.identifier",
      "sliceName" : "ppn",
      "short" : "Pasaporte del paciente.",
      "definition" : "Pasaporte del paciente.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-ppn-identifier"]
      }]
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "short" : "Si el registro de este paciente está activo o no.",
      "definition" : "Si el registro de este paciente está activo o no."
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "Nombre o nombres asociados con el paciente.",
      "definition" : "Nombre o nombres asociados con el paciente.",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name"]
      }]
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
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
      "id" : "Patient.telecom:phone",
      "path" : "Patient.telecom",
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
      "id" : "Patient.telecom:email",
      "path" : "Patient.telecom",
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
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Sexo administrativo del paciente.",
      "definition" : "Sexo administrativo del paciente.",
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
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "La fecha de nacimiento del individuo.",
      "definition" : "La fecha de nacimiento del individuo."
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "short" : "Indica si el individuo ha fallecido o no.",
      "definition" : "Indica si el individuo ha fallecido o no.",
      "comment" : "La ausencia de este elemento no expresa si la persona ha fallecido. Muchos sistemas interpretan esa ausencia como indicio de que está viva."
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Una o más direcciones para el individuo.",
      "definition" : "Una o más direcciones para el individuo.",
      "comment" : "El paciente puede tener varias direcciones con distintos usos o periodos de aplicación."
    },
    {
      "id" : "Patient.address:uyAddress",
      "path" : "Patient.address",
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
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "short" : "Estado civil legal u oficial del paciente.",
      "definition" : "Estado civil legal u oficial del paciente.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "MaritalStatus"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
          "valueBoolean" : true
        }],
        "strength" : "extensible",
        "description" : "Estado civil o situación de pareja de la persona.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/marital-status"
      }
    },
    {
      "id" : "Patient.multipleBirth[x]",
      "path" : "Patient.multipleBirth[x]",
      "short" : "Indica si el paciente forma parte de un parto múltiple (gemelo, trillizo, etc.).",
      "definition" : "Indica si el paciente forma parte de un parto múltiple (gemelo, trillizo, etc.)."
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "short" : "Imagen o fotografía del paciente.",
      "definition" : "Imagen o fotografía del paciente.",
      "comment" : "Utilizar fotografías de identificación, no fotografías clínicas. Limitar las dimensiones al tamaño de una miniatura y mantener un tamaño de archivo reducido para facilitar las actualizaciones."
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "short" : "Un contacto (ej. familiar, pareja) para el paciente.",
      "definition" : "Un contacto (ej. familiar, pareja) para el paciente.",
      "comment" : "Incluye familiares, contactos laborales, tutores y cuidadores. No se utiliza para registrar genealogía ni relaciones familiares que no cumplan una función de contacto."
    },
    {
      "id" : "Patient.contact.id",
      "path" : "Patient.contact.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "Patient.contact.extension",
      "path" : "Patient.contact.extension",
      "short" : "Contenido adicional definido mediante extensiones.",
      "definition" : "Contenido adicional definido mediante extensiones."
    },
    {
      "id" : "Patient.contact.modifierExtension",
      "path" : "Patient.contact.modifierExtension",
      "short" : "Extensiones que modifican el significado del elemento y no pueden ignorarse.",
      "definition" : "Extensiones que modifican el significado del elemento y no pueden ignorarse."
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "short" : "El tipo de relación entre el paciente y el contacto.",
      "definition" : "El tipo de relación entre el paciente y el contacto.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "ContactRelationship"
        }],
        "strength" : "extensible",
        "description" : "Relación entre el paciente y su persona de contacto.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/patient-contactrelationship"
      }
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "short" : "Nombre asociado con la persona de contacto.",
      "definition" : "Nombre asociado con la persona de contacto.",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name"]
      }]
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Detalles de contacto para la persona.",
      "definition" : "Detalles de contacto para la persona."
    },
    {
      "id" : "Patient.contact.telecom:phone",
      "path" : "Patient.contact.telecom",
      "sliceName" : "phone",
      "short" : "Detalles del teléfono de contacto.",
      "definition" : "Detalles del teléfono de contacto.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point"]
      }]
    },
    {
      "id" : "Patient.contact.telecom:email",
      "path" : "Patient.contact.telecom",
      "sliceName" : "email",
      "short" : "Detalles del correo electrónico de contacto.",
      "definition" : "Detalles del correo electrónico de contacto.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point"]
      }]
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "short" : "Dirección física o postal de la personas de contacto en Uruguay.",
      "definition" : "Dirección física o postal de la personas de contacto en Uruguay.",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-address"]
      }]
    },
    {
      "id" : "Patient.contact.gender",
      "path" : "Patient.contact.gender",
      "short" : "Sexo administrativo de la persona de contacto.",
      "definition" : "Sexo administrativo de la persona de contacto."
    },
    {
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "short" : "Organización a la que está vinculada la persona de contacto o que la respalda.",
      "definition" : "Organización a la que está vinculada la persona de contacto o que la respalda.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "Patient.contact.period",
      "path" : "Patient.contact.period",
      "short" : "Periodo durante el cual este contacto es válido para el paciente.",
      "definition" : "Periodo durante el cual este contacto es válido para el paciente."
    },
    {
      "id" : "Patient.communication",
      "path" : "Patient.communication",
      "short" : "Idiomas que se pueden usar para comunicarse con el paciente sobre su salud.",
      "definition" : "Idiomas que se pueden usar para comunicarse con el paciente sobre su salud."
    },
    {
      "id" : "Patient.communication.id",
      "path" : "Patient.communication.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "Patient.communication.extension",
      "path" : "Patient.communication.extension",
      "short" : "Contenido adicional definido mediante extensiones.",
      "definition" : "Contenido adicional definido mediante extensiones."
    },
    {
      "id" : "Patient.communication.modifierExtension",
      "path" : "Patient.communication.modifierExtension",
      "short" : "Extensiones que modifican el significado del elemento y no pueden ignorarse.",
      "definition" : "Extensiones que modifican el significado del elemento y no pueden ignorarse."
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "short" : "El idioma específico codificado.",
      "definition" : "El idioma específico codificado.",
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
        "description" : "Idioma utilizado para comunicarse con el paciente.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/languages"
      }
    },
    {
      "id" : "Patient.communication.preferred",
      "path" : "Patient.communication.preferred",
      "short" : "Indica si el paciente prefiere este idioma sobre los demás.",
      "definition" : "Indica si el paciente prefiere este idioma sobre los demás.",
      "comment" : "Identifica el idioma preferido específicamente para comunicar información de salud."
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "short" : "Médico o proveedor clínico de cabecera asignado.",
      "definition" : "Médico o proveedor clínico de cabecera asignado.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization",
        "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner",
        "http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role"]
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "short" : "Organización que custodia y gestiona activamente el registro del paciente.",
      "definition" : "Organización que custodia y gestiona activamente el registro del paciente.",
      "comment" : "Existe una única organización responsable de cada registro Patient. Otras organizaciones pueden mantener sus propios registros y vincularlos mediante link o un recurso Person.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "short" : "Vínculos hacia otros registros de Patient que refieren al mismo individuo real.",
      "definition" : "Vínculos hacia otros registros de Patient que refieren al mismo individuo real.",
      "comment" : "No se supone que los vínculos entre registros del paciente sean recíprocos."
    },
    {
      "id" : "Patient.link.id",
      "path" : "Patient.link.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "Patient.link.extension",
      "path" : "Patient.link.extension",
      "short" : "Contenido adicional definido mediante extensiones.",
      "definition" : "Contenido adicional definido mediante extensiones."
    },
    {
      "id" : "Patient.link.modifierExtension",
      "path" : "Patient.link.modifierExtension",
      "short" : "Extensiones que modifican el significado del elemento y no pueden ignorarse.",
      "definition" : "Extensiones que modifican el significado del elemento y no pueden ignorarse."
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "short" : "El otro recurso Patient o RelatedPerson al que refiere el enlace.",
      "definition" : "El otro recurso Patient o RelatedPerson al que refiere el enlace.",
      "comment" : "Una referencia a RelatedPerson permite asociarlo con el mismo individuo sin utilizar un recurso Person intermedio.",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "Patient.link.type",
      "path" : "Patient.link.type",
      "short" : "Tipo de vínculo entre los registros del paciente.",
      "definition" : "Tipo de vínculo entre los registros del paciente.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "LinkType"
        }],
        "strength" : "required",
        "description" : "Tipo de vínculo entre este registro del paciente y otro registro.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/link-type|4.0.1"
      }
    }]
  }
}

```
