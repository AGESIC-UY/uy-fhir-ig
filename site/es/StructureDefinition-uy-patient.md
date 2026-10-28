# Perfil Paciente para Uruguay - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Paciente para Uruguay 

### Identificadores

La pertenencia a cada slice de `identifier` se determina por la conformidad del contenido del identificador con el perfil correspondiente, sin exigir URLs de perfil dentro de cada `Identifier`. La lista permanece abierta para otros identificadores.

**Usos:**

* Derived from this Profile: [Perfil Paciente para HCEN](StructureDefinition-hcen-patient.md)
* Referencia a este perfil: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)
* Ejemplos de este perfil: [Patient/uy-paciente-perez-completo](Patient-uy-paciente-perez-completo.md) and [Patient/uy-paciente-perez](Patient-uy-paciente-perez.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-patient)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

** Resumen **

Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador MRN (http://fhir.hcen.gub.uy/StructureDefinition/uy-mrn-identifier)](StructureDefinition-uy-mrn-identifier.md)
* [Documento Nacional de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier)](StructureDefinition-uy-dni-identifier.md)
* [Identificador Pasaporte (http://fhir.hcen.gub.uy/StructureDefinition/uy-ppn-identifier)](StructureDefinition-uy-ppn-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Rol del Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role)](StructureDefinition-uy-practitioner-role.md)
* [Perfil Paciente para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-patient)](StructureDefinition-uy-patient.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-identidad-de-genero](StructureDefinition-ext-identidad-de-genero.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-pronombres](StructureDefinition-ext-pronombres.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-sexo-al-nacer](StructureDefinition-ext-sexo-al-nacer.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Patient.identifier
* El elemento 1 se divide en slices según el valor de Patient.telecom
* El elemento 1 se divide en slices según el valor de Patient.address
* El elemento 1 se divide en slices según el valor de Patient.contact.telecom

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Patient](http://hl7.org/fhir/R4/patient.html) .

** Resumen **

Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador MRN (http://fhir.hcen.gub.uy/StructureDefinition/uy-mrn-identifier)](StructureDefinition-uy-mrn-identifier.md)
* [Documento Nacional de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier)](StructureDefinition-uy-dni-identifier.md)
* [Identificador Pasaporte (http://fhir.hcen.gub.uy/StructureDefinition/uy-ppn-identifier)](StructureDefinition-uy-ppn-identifier.md)
* [Nombre de Persona (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name)](StructureDefinition-uy-human-name.md)
* [Contacto Telefónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-phone-contact-point)](StructureDefinition-uy-phone-contact-point.md)
* [Contacto por Correo Electrónico (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point)](StructureDefinition-uy-email-contact-point.md)
* [Dirección (Uruguay) (http://fhir.hcen.gub.uy/StructureDefinition/uy-address)](StructureDefinition-uy-address.md)
* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)
* [Perfil Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner)](StructureDefinition-uy-practitioner.md)
* [Perfil Rol del Profesional de Salud para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role)](StructureDefinition-uy-practitioner-role.md)
* [Perfil Paciente para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-patient)](StructureDefinition-uy-patient.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-identidad-de-genero](StructureDefinition-ext-identidad-de-genero.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-pronombres](StructureDefinition-ext-pronombres.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-sexo-al-nacer](StructureDefinition-ext-sexo-al-nacer.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Patient.identifier
* El elemento 1 se divide en slices según el valor de Patient.telecom
* El elemento 1 se divide en slices según el valor de Patient.address
* El elemento 1 se divide en slices según el valor de Patient.contact.telecom

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-patient.csv), [Excel](../StructureDefinition-uy-patient.xlsx), [Schematron](../StructureDefinition-uy-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-patient",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-patient",
  "version" : "0.2.0",
  "name" : "UYPatient",
  "title" : "Perfil Paciente para Uruguay",
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
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:identidadDeGenero",
      "path" : "Patient.extension",
      "sliceName" : "identidadDeGenero",
      "short" : "Identidad de género.",
      "definition" : "Identidad de género.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-identidad-de-genero"]
      }]
    },
    {
      "id" : "Patient.extension:pronombres",
      "path" : "Patient.extension",
      "sliceName" : "pronombres",
      "short" : "Pronombres con los que se debe referir al paciente.",
      "definition" : "Pronombres con los que se debe referir al paciente.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-pronombres"]
      }]
    },
    {
      "id" : "Patient.extension:sexoAlNacer",
      "path" : "Patient.extension",
      "sliceName" : "sexoAlNacer",
      "short" : "Sexo de nacimiento del paciente",
      "definition" : "Sexo asignado al nacer del paciente.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-sexo-al-nacer"]
      }]
    },
    {
      "id" : "Patient.modifierExtension",
      "path" : "Patient.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "rules" : "open"
      }
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
      "id" : "Patient.identifier:dni",
      "path" : "Patient.identifier",
      "sliceName" : "dni",
      "short" : "Documento nacional de identidad del paciente, según el país emisor.",
      "definition" : "Documento nacional de identidad del paciente, según el país emisor.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier"]
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
      "id" : "Patient.name",
      "path" : "Patient.name",
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
      }
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
      "definition" : "Sexo administrativo del paciente."
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
      }
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
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
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
      }
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
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    }]
  }
}

```
