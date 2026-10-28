# Perfil Paciente para HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Paciente para HCEN 

### Datos conocidos y registro del paciente

Este perfil toma PIXm Patient como referencia de diseño, sin declarar conformidad con el estándar PIXm. Los mismos mínimos se aplican al registro de pacientes y al contexto de publicación documental.

El MRN es obligatorio y utiliza [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.md), con el dominio de asignación en `system` y el número local en `value`. Nombre, sexo administrativo y nacimiento conservan la cardinalidad opcional y se envían cuando se conocen según MS. Esto permite registrar un paciente y su evento clínico en una emergencia aunque todavía no se disponga de esos datos. No informar un dato desconocido no autoriza omitir el MRN ni enviar elementos vacíos.

La CI HCEN (`identifier[ci]`, `HCENCIIdentifier`) es opcional y Must Support: puede omitirse si no está disponible. Se admiten pacientes con MRN y pasaporte sin CI. El DNI nacional (`identifier[dni]`) se hereda como opcional y puede coexistir con la CI HCEN. Los identificadores adicionales admitidos por el slicing abierto no sustituyen al MRN.

### Sexo o género

El atributo `gender` identifica sexo administrativo. La extensión `sexoAlNacer` identifica el sexo de nacimiento de la persona, independientemente del sexo administrativo o identidad de género actual.

### Datos del paciente

Los apellidos y las extensiones comunes de personas se consultan en el [Core](extensiones.md).

| | |
| :--- | :--- |
| Obligatorios | MRN (`identifier[mrn]`), con tipo, sistema (OID del dominio del prestador) y valor. |
| MS | Cédula de identidad (`identifier[ci]`), pasaporte (`identifier[ppn]`), nombre (`name`, a lo sumo uno), sexo administrativo (`gender`), fecha de nacimiento (`birthDate`), sexo al nacer (`extension[sexoAlNacer]`), teléfono y correo electrónico (`telecom`) y dirección (`address`). |
| No admitidos | `photo`,`implicitRules`,`modifierExtension`y la extensión de apellido materno (`mothersMaidenName`), que no equivale al segundo apellido. |

### Relación con CDA

El documento clínico y la interacción con HCEN se generan en el mismo momento y con la misma información de la persona. Por eso, los datos que no son obligatorios en HCEN tampoco se exigen en el documento: un dato que falta para el registro del paciente tampoco está disponible para el CDA. La guía CDA Mínimo vigente considera obligatorios el primer nombre, el primer apellido y el sexo del paciente, esta guía no adopta esa exigencia.

### Mapeo desde INUS

El mapeo conserva el significado de los datos de la mensajería INUS-EMPI en su representación FHIR. No traslada automáticamente las cardinalidades de los campos HL7 v2 al perfil HCENPatient.

| | | |
| :--- | :--- | :--- |
| PID-3, MRN y AA | `identifier[mrn].value`y`identifier[mrn].system` | El número local se informa en value y el OID de la AA como URI urn:oid: en system. |
| PID-3, CI uruguaya para HCEN | `identifier[ci]` | `HCENCIIdentifier`, con system urn:oid:2.16.858.2.10000675.68909; opcional MS. |
| PID-3, documento nacional | `identifier[dni]` | `UYDNIIdentifier`, según el país emisor; opcional. |
| PID-3, otros identificadores | Slices de`identifier`correspondientes | Conservar el número y su sistema emisor; no sustituir el MRN obligatorio. |
| PID-5, nombres y primer apellido | `name.given`y`name.family.extension[primerApellido]` | Conservar el orden de los nombres y expresar también los apellidos en family. |
| PID-6, usado para segundo apellido | `name.family.extension[segundoApellido]` | No utilizar Mother's Maiden Name: el segundo apellido no expresa por sí solo el apellido de soltera de la madre. |
| PID-7, nacimiento | `birthDate` | Convertir AAAAMMDD a AAAA-MM-DD cuando se conoce la fecha completa. |
| PID-8, sexo administrativo ISO 5218 | `gender` | 0 → unknown; 1 → male; 2 → female. El valor 9 (no aplica) no tiene equivalencia exacta con los códigos FHIR; no convertirlo automáticamente a other. |
| PID-11, dirección | `address` | Representar la dirección con las reglas del Core y conservar su uso cuando exista una correspondencia. |
| PID-13, contactos | `telecom` | Distinguir teléfono y correo electrónico y conservar sus valores. |

El mapeo no agrega obligatoriedad al segundo apellido ni a los demás datos demográficos opcionales. Los datos desconocidos se tratan según [Must Support](hcen-conformidad.md#must-support).

**Usos:**

* Utilizar este perfil: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Referencia a este perfil: [HCEN Diagnóstico](StructureDefinition-hcen-diagnostico.md), [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md), [HCEN Evento Clínico](StructureDefinition-hcen-encounter.md), [HCEN Administración de Medicación](StructureDefinition-hcen-medication-administration.md)... Show 6 more, [HCEN Prescripción de Medicación](StructureDefinition-hcen-medication-request.md), [HCEN Motivo de Consulta](StructureDefinition-hcen-motivo-consulta.md), [HCEN Procedimiento](StructureDefinition-hcen-procedimiento.md), [HCEN Solicitud de Servicio](StructureDefinition-hcen-service-request.md), [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)
* Ejemplos de este perfil: [Patient/hcen-paciente-dni-ci](Patient-hcen-paciente-dni-ci.md), [Patient/hcen-paciente-gonzalez](Patient-hcen-paciente-gonzalez.md) and [Patient/hcen-paciente-smith](Patient-hcen-paciente-smith.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-patient)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

** Resumen **

Obligatorios: 2 elementos
 Must-Support: 11 elementos
 Prohibidos: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador MRN para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier)](StructureDefinition-hcen-mrn-identifier.md)
* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/hcen-ci-identifier)](StructureDefinition-hcen-ci-identifier.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-mothersMaidenName.html)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [UYPatient](StructureDefinition-uy-patient.md) .

** Resumen **

Obligatorios: 2 elementos
 Must-Support: 11 elementos
 Prohibidos: 3 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador MRN para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier)](StructureDefinition-hcen-mrn-identifier.md)
* [Identificador Cédula de Identidad (http://fhir.hcen.gub.uy/StructureDefinition/hcen-ci-identifier)](StructureDefinition-hcen-ci-identifier.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-mothersMaidenName.html)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-patient.csv), [Excel](../StructureDefinition-hcen-patient.xlsx), [Schematron](../StructureDefinition-hcen-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-patient",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient",
  "version" : "0.2.0",
  "name" : "HCENPatient",
  "title" : "Perfil Paciente para HCEN",
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
      "id" : "Patient.extension:sexoAlNacer",
      "path" : "Patient.extension",
      "sliceName" : "sexoAlNacer",
      "definition" : "Sexo asignado al nacer del paciente, identificado por el tipo de registro LOINC 76689-9.",
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
      "id" : "Patient.identifier:ppn",
      "path" : "Patient.identifier",
      "sliceName" : "ppn",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:ci",
      "path" : "Patient.identifier",
      "sliceName" : "ci",
      "short" : "Cédula de identidad del paciente.",
      "definition" : "Cédula de identidad del paciente.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-ci-identifier"]
      }],
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
    }]
  }
}

```
