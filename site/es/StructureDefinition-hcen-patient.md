# Perfil Paciente para HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Paciente para HCEN 

### Datos conocidos y registro del paciente

Este perfil toma PIXm Patient como referencia de diseño, sin declarar conformidad con el estándar PIXm. Los mismos mínimos se aplican al registro de pacientes y al contexto de publicación documental.

El MRN es obligatorio; nombre, sexo administrativo y nacimiento conservan la cardinalidad opcional y se envían cuando se conocen según MS. Esto permite registrar un paciente y su evento clínico en una emergencia aunque todavía no se disponga de esos datos. No informar un dato desconocido no autoriza omitir el MRN ni enviar elementos vacíos.

### Sexo o género

`recordedSexOrGender` no significa por sí sola sexo asignado al nacer. Si se usa con ese propósito, el contenido debe identificar el tipo de registro. No se agrega un código fijo no acordado. La cardinalidad heredada de `genderIdentity` se conserva sin agregar MS.

El mapeo de identificadores, nombres y sexo administrativo desde INUS se explica en [Registrar o actualizar pacientes](hcen-iti-104.md#mapeo-inus).

**Usages:**

* Use this Profile: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Refer to this Profile: [HCEN Diagnóstico](StructureDefinition-hcen-diagnostico.md), [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md), [HCEN Evento Clínico](StructureDefinition-hcen-encounter.md), [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md)... Show 6 more, [HCEN Prescripción de Medicación](StructureDefinition-hcen-medication-request.md), [HCEN Motivo de Consulta](StructureDefinition-hcen-motivo-consulta.md), [HCEN Procedimiento](StructureDefinition-hcen-procedimiento.md), [HCEN Solicitud de Servicio](StructureDefinition-hcen-service-request.md), [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-patient)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

** Summary **

Mandatory: 2 elements
 Must-Support: 11 elements
 Prohibited: 3 elements

**Structures**

This structure refers to these other structures:

* [Identificador MRN para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier)](StructureDefinition-hcen-mrn-identifier.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-mothersMaidenName.html)

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

** Summary **

Mandatory: 2 elements
 Must-Support: 11 elements
 Prohibited: 3 elements

**Structures**

This structure refers to these other structures:

* [Identificador MRN para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier)](StructureDefinition-hcen-mrn-identifier.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-mothersMaidenName.html)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-patient.csv), [Excel](../StructureDefinition-hcen-patient.xlsx), [Schematron](../StructureDefinition-hcen-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-patient",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient",
  "version" : "0.1.0",
  "name" : "HCENPatient",
  "title" : "Perfil Paciente para HCEN",
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
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "short" : "Perfil Paciente para HCEN"
    },
    {
      "id" : "Patient.implicitRules",
      "path" : "Patient.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Patient.extension:recordedSexOrGender",
      "path" : "Patient.extension",
      "sliceName" : "recordedSexOrGender",
      "short" : "Registro de sexo o género; para sexo asignado al nacer se identifica el tipo de registro",
      "definition" : "Registro de sexo o género; para sexo asignado al nacer se identifica el tipo de registro",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:mothersMaidenName",
      "path" : "Patient.extension",
      "sliceName" : "mothersMaidenName",
      "short" : "El segundo apellido no equivale al apellido materno",
      "definition" : "El segundo apellido no equivale al apellido materno",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:mrn",
      "path" : "Patient.identifier",
      "sliceName" : "mrn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier"]
      }]
    },
    {
      "id" : "Patient.identifier:ci",
      "path" : "Patient.identifier",
      "sliceName" : "ci",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:ppn",
      "path" : "Patient.identifier",
      "sliceName" : "ppn",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom:phone",
      "path" : "Patient.telecom",
      "sliceName" : "phone",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom:email",
      "path" : "Patient.telecom",
      "sliceName" : "email",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:uyAddress",
      "path" : "Patient.address",
      "sliceName" : "uyAddress",
      "mustSupport" : true
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "max" : "0"
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "short" : "Dirección física o postal de la persona de contacto en Uruguay.",
      "definition" : "Dirección física o postal de la persona de contacto en Uruguay."
    },
    {
      "id" : "Patient.link.type",
      "path" : "Patient.link.type",
      "short" : "El tipo de enlace (replaced-by | replaces | refer | seealso).",
      "definition" : "El tipo de enlace (replaced-by | replaces | refer | seealso)."
    }]
  }
}

```
