# HCEN Procedimiento - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: HCEN Procedimiento 

**Usages:**

* Refer to this Profile: [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-procedimiento)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Procedure](http://hl7.org/fhir/R4/procedure.html) .

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Procedure](http://hl7.org/fhir/R4/procedure.html) .

** Summary **

Mandatory: 2 elements(7 nested mandatory elements)
 Must-Support: 3 elements
 Fixed: 4 elements
 Prohibited: 22 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.code.coding
* The element 1 is sliced based on the value of Procedure.outcome.coding

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Procedure](http://hl7.org/fhir/R4/procedure.html) .

#### Terminology Bindings (Differential)

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Procedure](http://hl7.org/fhir/R4/procedure.html) .

** Summary **

Mandatory: 2 elements(7 nested mandatory elements)
 Must-Support: 3 elements
 Fixed: 4 elements
 Prohibited: 22 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.code.coding
* The element 1 is sliced based on the value of Procedure.outcome.coding

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-procedimiento.csv), [Excel](../StructureDefinition-hcen-procedimiento.xlsx), [Schematron](../StructureDefinition-hcen-procedimiento.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-procedimiento",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento",
  "version" : "0.1.0",
  "name" : "HCENProcedimiento",
  "title" : "HCEN Procedimiento",
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
  "description" : "Procedimiento registrado en la Hoja de Consulta No Urgente (CNU).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENProcedimientoToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYProcedimiento."
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "short" : "Procedimiento de una Consulta No Urgente",
      "definition" : "Procedure que representa un procedimiento o tratamiento no farmacológico realizado durante una Hoja de Consulta No Urgente de HCEN."
    },
    {
      "id" : "Procedure.implicitRules",
      "path" : "Procedure.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Procedure.language",
      "path" : "Procedure.language",
      "short" : "Idioma del recurso — fijo a es-UY",
      "definition" : "Idioma del recurso — fijo a es-UY",
      "min" : 1,
      "fixedCode" : "es-UY"
    },
    {
      "id" : "Procedure.modifierExtension",
      "path" : "Procedure.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "max" : "0"
    },
    {
      "id" : "Procedure.instantiatesCanonical",
      "path" : "Procedure.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "Procedure.instantiatesUri",
      "path" : "Procedure.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "Solicitud que dio origen al procedimiento — no aplica en el contexto de una CNU, pero sí en otros documentos de procedimiento (p.ej. colonoscopia)",
      "definition" : "Solicitud que dio origen al procedimiento — no aplica en el contexto de una CNU, pero sí en otros documentos de procedimiento (p.ej. colonoscopia)",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "max" : "0"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Estado del procedimiento",
      "definition" : "Indica el estado del procedimiento.",
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "procedure/@moodCode=\"EVN\""
      }]
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "max" : "0"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "Tipo de procedimiento (diagnóstico, terapéutico, etc.)",
      "definition" : "Tipo de procedimiento (diagnóstico, terapéutico, etc.)",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category.coding",
      "path" : "Procedure.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.category.coding.system",
      "path" : "Procedure.category.coding.system",
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Procedure.category.coding.code",
      "path" : "Procedure.category.coding.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-tipo-procedimiento"
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Código que identifica el procedimiento (SNOMED CT u otra terminología)",
      "definition" : "Código que identifica el procedimiento (SNOMED CT u otra terminología)",
      "min" : 1,
      "constraint" : [{
        "key" : "hcen-coding-required-1",
        "severity" : "error",
        "human" : "code.coding debe tener al menos una entrada (al menos una codificación).",
        "expression" : "coding.exists()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento"
      }],
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "section/entry/procedure/code"
      }]
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.code.coding:snomed",
      "path" : "Procedure.code.coding",
      "sliceName" : "snomed",
      "short" : "Código SNOMED CT del procedimiento (refset uruguayo de procedimientos)",
      "definition" : "Código SNOMED CT del procedimiento (refset uruguayo de procedimientos)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Procedure.code.coding:snomed.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct",
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "section/entry/procedure/code/@codeSystem"
      }]
    },
    {
      "id" : "Procedure.code.coding:snomed.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-procedimientos"
      },
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "section/entry/procedure/code/@code"
      }]
    },
    {
      "id" : "Procedure.code.coding:snomed.display",
      "path" : "Procedure.code.coding.display",
      "short" : "Texto descriptivo del código SNOMED CT del procedimiento",
      "definition" : "Texto descriptivo del código SNOMED CT del procedimiento",
      "min" : 1,
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "section/entry/procedure/code/@displayName"
      }]
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "Paciente al que se le realiza el procedimiento",
      "definition" : "Paciente al que se le realiza el procedimiento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }],
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "ClinicalDocument/recordTarget/patientRole/id"
      }]
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "max" : "0"
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "max" : "0"
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "max" : "0"
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "max" : "0"
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "max" : "0"
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "max" : "0"
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "max" : "0"
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "max" : "0"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "Resultado del procedimiento (SNOMED CT u otra terminología)",
      "definition" : "Resultado del procedimiento (SNOMED CT u otra terminología)",
      "constraint" : [{
        "key" : "hcen-coding-required-1",
        "severity" : "error",
        "human" : "code.coding debe tener al menos una entrada (al menos una codificación).",
        "expression" : "coding.exists()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento"
      }],
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "section/entry/procedure/entryRelationship/observation[code/@code='258031000179107']/value"
      }]
    },
    {
      "id" : "Procedure.outcome.coding",
      "path" : "Procedure.outcome.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.outcome.coding:snomed",
      "path" : "Procedure.outcome.coding",
      "sliceName" : "snomed",
      "short" : "Resultado SNOMED CT del procedimiento",
      "definition" : "Resultado SNOMED CT del procedimiento",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "section/entry/procedure/entryRelationship/observation[code/@code='258031000179107']/value"
      }]
    },
    {
      "id" : "Procedure.outcome.coding:snomed.system",
      "path" : "Procedure.outcome.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Procedure.outcome.coding:snomed.code",
      "path" : "Procedure.outcome.coding.code",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-resultado-procedimiento"
      }
    },
    {
      "id" : "Procedure.outcome.coding:snomed.display",
      "path" : "Procedure.outcome.coding.display",
      "short" : "Texto descriptivo del resultado SNOMED CT del procedimiento",
      "definition" : "Texto descriptivo del resultado SNOMED CT del procedimiento",
      "min" : 1
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "max" : "0"
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "max" : "0"
    },
    {
      "id" : "Procedure.complicationDetail",
      "path" : "Procedure.complicationDetail",
      "max" : "0"
    },
    {
      "id" : "Procedure.followUp",
      "path" : "Procedure.followUp",
      "max" : "0"
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "Observaciones sobre el procedimiento: hallazgos (diagnóstico) o comentarios relevantes (terapéutico)",
      "definition" : "Observaciones sobre el procedimiento: hallazgos (diagnóstico) o comentarios relevantes (terapéutico)",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "HCENProcedimientoToCDA",
        "map" : "section/entry/procedure/entryRelationship/observation[code/@code='703852005']/value"
      }]
    },
    {
      "id" : "Procedure.focalDevice",
      "path" : "Procedure.focalDevice",
      "max" : "0"
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "max" : "0"
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "max" : "0"
    }]
  }
}

```
