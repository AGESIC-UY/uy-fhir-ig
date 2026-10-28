# HCEN Prescripción de Medicación - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: HCEN Prescripción de Medicación 

**Usos:**

* Referencia a este perfil: [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)
* Ejemplos de este perfil: [MedicationRequest/hcen-med-req-paracetamol](MedicationRequest-hcen-med-req-paracetamol.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-medication-request)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) .

#### Bindings terminológicos (diferencial)

#### Restricciones

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) .

** Resumen **

Obligatorios: 1 elementos(3 elementosos obligatorios anidados)
 Fijos: 3 elementos
 Prohibidos: 22 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [HCEN Dosificación (http://fhir.hcen.gub.uy/StructureDefinition/hcen-dosage)](StructureDefinition-hcen-dosage.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de MedicationRequest.medication[x].coding

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) .

#### Bindings terminológicos (diferencial)

#### Restricciones

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) .

** Resumen **

Obligatorios: 1 elementos(3 elementosos obligatorios anidados)
 Fijos: 3 elementos
 Prohibidos: 22 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [HCEN Dosificación (http://fhir.hcen.gub.uy/StructureDefinition/hcen-dosage)](StructureDefinition-hcen-dosage.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de MedicationRequest.medication[x].coding

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-medication-request.csv), [Excel](../StructureDefinition-hcen-medication-request.xlsx), [Schematron](../StructureDefinition-hcen-medication-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-medication-request",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-request",
  "version" : "0.2.0",
  "name" : "HCENMedicationRequest",
  "title" : "HCEN Prescripción de Medicación",
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
  "description" : "Prescripción de medicación registrada en la Hoja de Consulta No Urgente (CNU).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENMedicationRequestToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYMedicationRequest."
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "short" : "Prescripción de medicación en una Consulta No Urgente",
      "definition" : "MedicationRequest que representa una prescripción farmacológica registrada en una Hoja de Consulta No Urgente de HCEN."
    },
    {
      "id" : "MedicationRequest.implicitRules",
      "path" : "MedicationRequest.implicitRules",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.language",
      "path" : "MedicationRequest.language",
      "short" : "Idioma del recurso — fijo a es-UY",
      "definition" : "Idioma del recurso — fijo a es-UY",
      "min" : 1,
      "fixedCode" : "es-UY"
    },
    {
      "id" : "MedicationRequest.modifierExtension",
      "path" : "MedicationRequest.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Estado de la prescripción",
      "definition" : "Indica el estado de la prescripción de medicación."
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Fijo a 'order': orden de prescripción autorizada y original",
      "definition" : "Fijo a 'order': orden de prescripción autorizada y original",
      "fixedCode" : "order"
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "short" : "Contexto o modalidad de la prescripción",
      "definition" : "Permite identificar el contexto o modalidad de la prescripción (p.ej. prescripción ambulatoria)."
    },
    {
      "id" : "MedicationRequest.priority",
      "path" : "MedicationRequest.priority",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Código que identifica el medicamento prescripto (SNOMED CT u otra terminología, p.ej. un tesauro clínico institucional)",
      "definition" : "Código que identifica el medicamento prescripto (SNOMED CT u otra terminología, p.ej. un tesauro clínico institucional)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "constraint" : [{
        "key" : "hcen-coding-required-1",
        "severity" : "error",
        "human" : "code.coding debe tener al menos una entrada (al menos una codificación).",
        "expression" : "coding.exists()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-request"
      }]
    },
    {
      "id" : "MedicationRequest.medication[x].coding",
      "path" : "MedicationRequest.medication[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Slicing abierto por system: además del slice snomed, admite otra codificación con su propio system — p.ej. un código de un tesauro clínico (ver sección 4.7.4 Tesauro clínico)",
      "definition" : "El slicing es abierto por system. Además del slice snomed, se puede incluir una codificación adicional de otro vocabulario — p.ej. un código de un tesauro clínico (ver [Tesauro clínico](hcen-terminologia.html#tesauro-clínico), sección 4.7.4). La URI de ese system depende de la institución de origen y su confirmación es externa a esta guía; no se fija ni se valida en este perfil."
    },
    {
      "id" : "MedicationRequest.medication[x].coding:snomed",
      "path" : "MedicationRequest.medication[x].coding",
      "sliceName" : "snomed",
      "short" : "Código SNOMED CT del medicamento prescripto",
      "definition" : "Código SNOMED CT del medicamento prescripto",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "MedicationRequest.medication[x].coding:snomed.system",
      "path" : "MedicationRequest.medication[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "MedicationRequest.medication[x].coding:snomed.code",
      "path" : "MedicationRequest.medication[x].coding.code",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-medicamentos"
      }
    },
    {
      "id" : "MedicationRequest.medication[x].coding:snomed.display",
      "path" : "MedicationRequest.medication[x].coding.display",
      "short" : "Texto descriptivo del código SNOMED CT del medicamento prescripto",
      "definition" : "Texto descriptivo del código SNOMED CT del medicamento prescripto",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "short" : "Paciente para quien se prescribe la medicación",
      "definition" : "Paciente para quien se prescribe la medicación",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }],
      "mapping" : [{
        "identity" : "HCENMedicationRequestToCDA",
        "map" : "ClinicalDocument/recordTarget/patientRole/id"
      }]
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.supportingInformation",
      "path" : "MedicationRequest.supportingInformation",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Fecha en que se autorizó la prescripción",
      "definition" : "Deberíamos controlar o validar que se encuentre dentro del período de atención de la consulta."
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Profesional que realiza la prescripción",
      "definition" : "Profesional que realiza la prescripción",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
      }]
    },
    {
      "id" : "MedicationRequest.performer",
      "path" : "MedicationRequest.performer",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.performerType",
      "path" : "MedicationRequest.performerType",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesCanonical",
      "path" : "MedicationRequest.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Identificador de grupo de la prescripción",
      "definition" : "Identificador compartido por un grupo de prescripciones relacionadas — pendiente definir qué URI usar como system."
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType",
      "path" : "MedicationRequest.courseOfTherapyType",
      "short" : "Tipo de tratamiento asociado a la prescripción",
      "definition" : "Indica el tipo de tratamiento asociado a la prescripción."
    },
    {
      "id" : "MedicationRequest.insurance",
      "path" : "MedicationRequest.insurance",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Observaciones relacionadas",
      "definition" : "Observaciones relacionadas.",
      "mapping" : [{
        "identity" : "HCENMedicationRequestToCDA",
        "map" : "section/entry/substanceAdministration[@moodCode='INT']/entryRelationship/observation[code/@code='703852005']/value"
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Pauta de administración indicada por el profesional (p.ej. Ibuprofeno 400 mg: tomar 1 comprimido cada 8 horas durante 5 días)",
      "definition" : "Pauta de administración indicada por el profesional (p.ej. Ibuprofeno 400 mg: tomar 1 comprimido cada 8 horas durante 5 días)",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-dosage"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.priorPrescription",
      "path" : "MedicationRequest.priorPrescription",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.detectedIssue",
      "path" : "MedicationRequest.detectedIssue",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.eventHistory",
      "path" : "MedicationRequest.eventHistory",
      "max" : "0"
    }]
  }
}

```
