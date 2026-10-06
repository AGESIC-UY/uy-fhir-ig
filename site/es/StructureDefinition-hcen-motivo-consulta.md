# HCEN Motivo de Consulta - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: HCEN Motivo de Consulta 

**Usages:**

* Refer to this Profile: [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-motivo-consulta)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Condition](http://hl7.org/fhir/R4/condition.html) .

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Condition](http://hl7.org/fhir/R4/condition.html) .

** Summary **

Mandatory: 3 elements(3 nested mandatory elements)
 Fixed: 3 elements
 Prohibited: 15 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.code.coding

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Condition](http://hl7.org/fhir/R4/condition.html) .

#### Terminology Bindings (Differential)

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Condition](http://hl7.org/fhir/R4/condition.html) .

** Summary **

Mandatory: 3 elements(3 nested mandatory elements)
 Fixed: 3 elements
 Prohibited: 15 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.code.coding

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-motivo-consulta.csv), [Excel](../StructureDefinition-hcen-motivo-consulta.xlsx), [Schematron](../StructureDefinition-hcen-motivo-consulta.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-motivo-consulta",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-motivo-consulta",
  "version" : "0.1.0",
  "name" : "HCENMotivoConsulta",
  "title" : "HCEN Motivo de Consulta",
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
  "description" : "Motivo de consulta registrado en la Hoja de Consulta No Urgente (CNU), modelado como Condition con category fija 'motivo de consulta'.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENMotivoConsultaToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYMotivoConsulta."
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "short" : "Motivo de una Consulta No Urgente",
      "definition" : "Condition que representa un motivo de consulta registrado en una Hoja de Consulta No Urgente de HCEN."
    },
    {
      "id" : "Condition.implicitRules",
      "path" : "Condition.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Condition.language",
      "path" : "Condition.language",
      "short" : "Idioma del recurso — fijo a es-UY",
      "definition" : "Idioma del recurso — fijo a es-UY",
      "min" : 1,
      "fixedCode" : "es-UY"
    },
    {
      "id" : "Condition.modifierExtension",
      "path" : "Condition.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "max" : "0"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "max" : "0"
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "max" : "0"
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Identifica este Condition como un motivo de consulta",
      "definition" : "Identifica este Condition como un motivo de consulta",
      "min" : 1,
      "max" : "1",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "7611000179107",
          "display" : "motivo de consulta"
        }]
      },
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-condition-category-cnu"
      },
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation/code"
      }]
    },
    {
      "id" : "Condition.category.coding.system",
      "path" : "Condition.category.coding.system",
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation/code/@codeSystem"
      }]
    },
    {
      "id" : "Condition.category.coding.code",
      "path" : "Condition.category.coding.code",
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation/code/@code"
      }]
    },
    {
      "id" : "Condition.category.coding.display",
      "path" : "Condition.category.coding.display",
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation/code/@displayName"
      }]
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "max" : "0"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Código que identifica el motivo de la consulta (SNOMED CT u otra terminología)",
      "definition" : "Código que identifica el motivo de la consulta (SNOMED CT u otra terminología)",
      "min" : 1,
      "constraint" : [{
        "key" : "hcen-coding-required-1",
        "severity" : "error",
        "human" : "code.coding debe tener al menos una entrada (al menos una codificación).",
        "expression" : "coding.exists()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-motivo-consulta"
      }]
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.code.coding:snomed",
      "path" : "Condition.code.coding",
      "sliceName" : "snomed",
      "short" : "Código SNOMED CT del motivo de consulta",
      "definition" : "Código SNOMED CT del motivo de consulta",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation[code/@code='7611000179107']/value"
      }]
    },
    {
      "id" : "Condition.code.coding:snomed.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct",
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation/value/@codeSystem"
      }]
    },
    {
      "id" : "Condition.code.coding:snomed.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-motivos-consulta"
      },
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation/value/@code"
      }]
    },
    {
      "id" : "Condition.code.coding:snomed.display",
      "path" : "Condition.code.coding.display",
      "short" : "Texto descriptivo del código SNOMED CT del motivo de consulta",
      "definition" : "Texto descriptivo del código SNOMED CT del motivo de consulta",
      "min" : 1,
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "section/entry/observation/value/@displayName"
      }]
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Paciente al que se le asocia el motivo de consulta",
      "definition" : "Paciente al que se le asocia el motivo de consulta",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }],
      "mapping" : [{
        "identity" : "HCENMotivoConsultaToCDA",
        "map" : "ClinicalDocument/recordTarget/patientRole/id"
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "max" : "0"
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "max" : "0"
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "max" : "0"
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "max" : "0"
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "max" : "0"
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "max" : "0"
    }]
  }
}

```
