# HCEN Administración de Medicación - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: HCEN Administración de Medicación 

**Usages:**

* Refer to this Profile: [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-medication-administration)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) .

** Summary **

Mandatory: 1 element(3 nested mandatory elements)
 Must-Support: 8 elements
 Fixed: 3 elements
 Prohibited: 12 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationAdministration.medication[x].coding
* The element 1 is sliced based on the value of MedicationAdministration.effective[x]
* The element 1 is sliced based on the value of MedicationAdministration.dosage.rate[x]

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) .

** Summary **

Mandatory: 1 element(3 nested mandatory elements)
 Must-Support: 8 elements
 Fixed: 3 elements
 Prohibited: 12 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationAdministration.medication[x].coding
* The element 1 is sliced based on the value of MedicationAdministration.effective[x]
* The element 1 is sliced based on the value of MedicationAdministration.dosage.rate[x]

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-medication-administration.csv), [Excel](../StructureDefinition-hcen-medication-administration.xlsx), [Schematron](../StructureDefinition-hcen-medication-administration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-medication-administration",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-administration",
  "version" : "0.1.0",
  "name" : "HCENMedicationAdministration",
  "title" : "HCEN Administración de Medicación",
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
  "description" : "Administración de medicación registrada en la Hoja de Consulta No Urgente (CNU).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENMedicationAdministrationToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYMedicationaAdministratio."
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
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration",
      "short" : "Administración de medicación en una Consulta No Urgente",
      "definition" : "MedicationAdministration que representa medicación administrada durante una Hoja de Consulta No Urgente de HCEN."
    },
    {
      "id" : "MedicationAdministration.implicitRules",
      "path" : "MedicationAdministration.implicitRules",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.language",
      "path" : "MedicationAdministration.language",
      "short" : "Idioma del recurso — fijo a es-UY",
      "definition" : "Idioma del recurso — fijo a es-UY",
      "min" : 1,
      "fixedCode" : "es-UY"
    },
    {
      "id" : "MedicationAdministration.modifierExtension",
      "path" : "MedicationAdministration.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.identifier",
      "path" : "MedicationAdministration.identifier",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.partOf",
      "path" : "MedicationAdministration.partOf",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.status",
      "path" : "MedicationAdministration.status",
      "short" : "Estado de la administración de medicamento",
      "definition" : "Indica el estado de administración de medicamento."
    },
    {
      "id" : "MedicationAdministration.statusReason",
      "path" : "MedicationAdministration.statusReason",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.category",
      "path" : "MedicationAdministration.category",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
      "short" : "Código que identifica el medicamento (SNOMED CT u otra terminología)",
      "definition" : "Código que identifica el medicamento (SNOMED CT u otra terminología)",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationAdministration.medication[x].coding",
      "path" : "MedicationAdministration.medication[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.medication[x].coding:snomed",
      "path" : "MedicationAdministration.medication[x].coding",
      "sliceName" : "snomed",
      "short" : "Código SNOMED CT del medicamento",
      "definition" : "Código SNOMED CT del medicamento",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "MedicationAdministration.medication[x].coding:snomed.system",
      "path" : "MedicationAdministration.medication[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "MedicationAdministration.medication[x].coding:snomed.code",
      "path" : "MedicationAdministration.medication[x].coding.code",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-medicamentos"
      }
    },
    {
      "id" : "MedicationAdministration.medication[x].coding:snomed.display",
      "path" : "MedicationAdministration.medication[x].coding.display",
      "short" : "Texto descriptivo del código SNOMED CT del medicamento",
      "definition" : "Texto descriptivo del código SNOMED CT del medicamento",
      "min" : 1
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "short" : "Paciente al que se le administra la medicación",
      "definition" : "Paciente al que se le administra la medicación",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }],
      "mapping" : [{
        "identity" : "HCENMedicationAdministrationToCDA",
        "map" : "ClinicalDocument/recordTarget/patientRole/id"
      }]
    },
    {
      "id" : "MedicationAdministration.context",
      "path" : "MedicationAdministration.context",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.supportingInformation",
      "path" : "MedicationAdministration.supportingInformation",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.effective[x]",
      "path" : "MedicationAdministration.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.effective[x]:effectiveDateTime",
      "path" : "MedicationAdministration.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "Fecha en la que se administró la medicación",
      "definition" : "Fecha en la que se administró la medicación.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationAdministration.effective[x]:effectivePeriod",
      "path" : "MedicationAdministration.effective[x]",
      "sliceName" : "effectivePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationAdministration.effective[x]:effectivePeriod.start",
      "path" : "MedicationAdministration.effective[x].start",
      "short" : "Fecha de inicio de la administración",
      "definition" : "Fecha inicio en la que se administró la medicación."
    },
    {
      "id" : "MedicationAdministration.effective[x]:effectivePeriod.end",
      "path" : "MedicationAdministration.effective[x].end",
      "short" : "Fecha de fin de la administración",
      "definition" : "Fecha fin en la que se administró la medicación."
    },
    {
      "id" : "MedicationAdministration.performer.function",
      "path" : "MedicationAdministration.performer.function",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/med-admin-perform-function",
          "code" : "performer",
          "display" : "Performer"
        }]
      }
    },
    {
      "id" : "MedicationAdministration.performer.actor",
      "path" : "MedicationAdministration.performer.actor",
      "short" : "Profesional que realizó la administración de la medicación",
      "definition" : "Profesional que realizó la administración de la medicación",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
      }]
    },
    {
      "id" : "MedicationAdministration.reasonCode",
      "path" : "MedicationAdministration.reasonCode",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.reasonReference",
      "path" : "MedicationAdministration.reasonReference",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.request",
      "path" : "MedicationAdministration.request",
      "short" : "Solicitud (MedicationRequest) que dio origen a la administración",
      "definition" : "Posiblemente esto aplique en escenarios de emergencia o internación, no en una CNU."
    },
    {
      "id" : "MedicationAdministration.device",
      "path" : "MedicationAdministration.device",
      "short" : "Dispositivo utilizado en la administración",
      "definition" : "Dispositivo utilizado en la administración de la medicación. Revisar este recurso."
    },
    {
      "id" : "MedicationAdministration.note",
      "path" : "MedicationAdministration.note",
      "short" : "Observaciones relacionadas",
      "definition" : "Observaciones relacionadas.",
      "mapping" : [{
        "identity" : "HCENMedicationAdministrationToCDA",
        "map" : "section/entry/substanceAdministration[@moodCode='EVN']/entryRelationship/observation[code/@code='703852005']/value"
      }]
    },
    {
      "id" : "MedicationAdministration.dosage",
      "path" : "MedicationAdministration.dosage",
      "short" : "Dosificación de la medicación administrada",
      "definition" : "Dosificación de la medicación administrada",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.text",
      "path" : "MedicationAdministration.dosage.text",
      "short" : "Descripción textual de la dosificación",
      "definition" : "Descripción textual de la dosificación del medicamento administrado."
    },
    {
      "id" : "MedicationAdministration.dosage.site",
      "path" : "MedicationAdministration.dosage.site",
      "short" : "Sitio anatómico donde se administra (p.ej. brazo izquierdo, vena antecubital derecha, muslo)",
      "definition" : "Sitio anatómico donde se administra (p.ej. brazo izquierdo, vena antecubital derecha, muslo)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-sitio-administracion"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.route",
      "path" : "MedicationAdministration.dosage.route",
      "short" : "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)",
      "definition" : "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-via-administracion"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.method",
      "path" : "MedicationAdministration.dosage.method",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.dosage.dose",
      "path" : "MedicationAdministration.dosage.dose",
      "short" : "Cantidad de medicamento administrada",
      "definition" : "Cantidad de medicamento administrada",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.value",
      "path" : "MedicationAdministration.dosage.dose.value",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.unit",
      "path" : "MedicationAdministration.dosage.dose.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.system",
      "path" : "MedicationAdministration.dosage.dose.system",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.code",
      "path" : "MedicationAdministration.dosage.dose.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "sliceName" : "rateRatio",
      "short" : "Velocidad de administración",
      "definition" : "Velocidad o frecuencia de administración.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "MedicationAdministration.eventHistory",
      "path" : "MedicationAdministration.eventHistory",
      "max" : "0"
    }]
  }
}

```
