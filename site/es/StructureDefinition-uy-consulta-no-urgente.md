# HCEN Consulta No Urgente - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: HCEN Consulta No Urgente 

 
Hoja de Consulta No Urgente (CNU) — documento clínico raíz que agrupa motivo de consulta, diagnósticos, procedimientos, tratamientos e instrucciones de seguimiento de una consulta no urgente (policlínica o radio). 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-consulta-no-urgente)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Composition](http://hl7.org/fhir/R4/composition.html) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Composition](http://hl7.org/fhir/R4/composition.html) .

** Summary **

Mandatory: 8 elements(14 nested mandatory elements)
 Must-Support: 21 elements
 Fixed: 10 elements
 Prohibited: 42 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [HCEN Evento Clínico (http://fhir.hcen.gub.uy/StructureDefinition/hcen-encounter)](StructureDefinition-hcen-encounter.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [HCEN Motivo de Consulta (http://fhir.hcen.gub.uy/StructureDefinition/hcen-motivo-consulta)](StructureDefinition-hcen-motivo-consulta.md)
* [HCEN Diagnóstico (http://fhir.hcen.gub.uy/StructureDefinition/hcen-diagnostico)](StructureDefinition-hcen-diagnostico.md)
* [HCEN Procedimiento (http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento)](StructureDefinition-hcen-procedimiento.md)
* [HCEN Administración de Medicación (http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-administration)](StructureDefinition-hcen-medication-administration.md)
* [HCEN Solicitud de Servicio (http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request)](StructureDefinition-hcen-service-request.md)
* [HCEN Prescripción de Medicación (http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-request)](StructureDefinition-hcen-medication-request.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.section

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Composition](http://hl7.org/fhir/R4/composition.html) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Composition](http://hl7.org/fhir/R4/composition.html) .

** Summary **

Mandatory: 8 elements(14 nested mandatory elements)
 Must-Support: 21 elements
 Fixed: 10 elements
 Prohibited: 42 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [HCEN Evento Clínico (http://fhir.hcen.gub.uy/StructureDefinition/hcen-encounter)](StructureDefinition-hcen-encounter.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [HCEN Motivo de Consulta (http://fhir.hcen.gub.uy/StructureDefinition/hcen-motivo-consulta)](StructureDefinition-hcen-motivo-consulta.md)
* [HCEN Diagnóstico (http://fhir.hcen.gub.uy/StructureDefinition/hcen-diagnostico)](StructureDefinition-hcen-diagnostico.md)
* [HCEN Procedimiento (http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento)](StructureDefinition-hcen-procedimiento.md)
* [HCEN Administración de Medicación (http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-administration)](StructureDefinition-hcen-medication-administration.md)
* [HCEN Solicitud de Servicio (http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request)](StructureDefinition-hcen-service-request.md)
* [HCEN Prescripción de Medicación (http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-request)](StructureDefinition-hcen-medication-request.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.section

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-consulta-no-urgente.csv), [Excel](../StructureDefinition-uy-consulta-no-urgente.xlsx), [Schematron](../StructureDefinition-uy-consulta-no-urgente.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-consulta-no-urgente",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-consulta-no-urgente",
  "version" : "0.1.0",
  "name" : "HCENConsultaNoUrgente",
  "title" : "HCEN Consulta No Urgente",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Hoja de Consulta No Urgente (CNU) — documento clínico raíz que agrupa motivo de consulta, diagnósticos, procedimientos, tratamientos e instrucciones de seguimiento de una consulta no urgente (policlínica o radio).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENConsultaNoUrgenteToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYConsultaNoUrgente."
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
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition",
      "short" : "Documento clínico de Consulta No Urgente para HCEN",
      "definition" : "Composition que organiza los datos clínicos y administrativos de una Consulta No Urgente intercambiada mediante HCEN."
    },
    {
      "id" : "Composition.meta.profile",
      "path" : "Composition.meta.profile",
      "short" : "Perfil (template) sobre el cual se define el recurso — canónico oficial de HCENConsultaNoUrgente",
      "definition" : "Perfil (template) sobre el cual se define el recurso — canónico oficial de HCENConsultaNoUrgente",
      "min" : 1,
      "patternCanonical" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-consulta-no-urgente",
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.templateId"
      }]
    },
    {
      "id" : "Composition.implicitRules",
      "path" : "Composition.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Composition.language",
      "path" : "Composition.language",
      "short" : "Idioma del documento — fijo a es-UY",
      "definition" : "Idioma del documento — fijo a es-UY",
      "min" : 1,
      "fixedCode" : "es-UY",
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.languageCode"
      }]
    },
    {
      "id" : "Composition.modifierExtension",
      "path" : "Composition.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "short" : "Identificador de la versión del recurso UY-CNU",
      "definition" : "Identificador de la versión del recurso UY-CNU",
      "min" : 1,
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.setId@root"
      }]
    },
    {
      "id" : "Composition.identifier.system",
      "path" : "Composition.identifier.system",
      "patternUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Composition.identifier.value",
      "path" : "Composition.identifier.value",
      "short" : "Valor único, formato urn:oid:<OID_DOCUMENTO> (p.ej. urn:oid:2.16.858.0.0.1.10.2.123)",
      "definition" : "Valor único, formato urn:oid:<OID_DOCUMENTO> (p.ej. urn:oid:2.16.858.0.0.1.10.2.123)"
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "short" : "Estado del documento — restringido a final, amended y entered-in-error",
      "definition" : "Estado del documento — restringido a final, amended y entered-in-error",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-composition-status-cnu"
      }
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "short" : "Tipo genérico de documento clínico (eje 1 del catálogo de documentos de Uruguay)",
      "definition" : "Tipo genérico de documento clínico (eje 1 del catálogo de documentos de Uruguay)",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-class-code"
      },
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.code"
      }]
    },
    {
      "id" : "Composition.type.coding.system",
      "path" : "Composition.type.coding.system",
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Composition.category",
      "path" : "Composition.category",
      "max" : "0"
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "short" : "Usuario de salud al que se le asocia el documento CNU",
      "definition" : "Usuario de salud al que se le asocia el documento CNU",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.recordTarget"
      }]
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "short" : "Información contextual del evento CNU",
      "definition" : "Información contextual del evento CNU",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-encounter"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.componentOf.encompassingEncounter"
      }]
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.effectiveTime"
      }]
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "short" : "Profesional autor del documento (solo PractitionerRole)",
      "definition" : "Profesional autor del documento (solo PractitionerRole)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
      }],
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.author"
      }]
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "short" : "Título del documento",
      "definition" : "Título del documento",
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.title"
      }]
    },
    {
      "id" : "Composition.confidentiality",
      "path" : "Composition.confidentiality",
      "short" : "Nivel de confidencialidad — restringido a N (normal), R (restricted) y V (very restricted)",
      "definition" : "Nivel de confidencialidad — restringido a N (normal), R (restricted) y V (very restricted)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-confidentiality-cnu"
      }
    },
    {
      "id" : "Composition.attester",
      "path" : "Composition.attester",
      "max" : "0"
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "short" : "Organización custodia del documento clínico",
      "definition" : "Organización custodia del documento clínico",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "HCENConsultaNoUrgenteToCDA",
        "map" : "ClinicalDocument.custodian"
      }]
    },
    {
      "id" : "Composition.relatesTo",
      "path" : "Composition.relatesTo",
      "max" : "0"
    },
    {
      "id" : "Composition.event",
      "path" : "Composition.event",
      "max" : "0"
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Composition.section:motivosConsulta",
      "path" : "Composition.section",
      "sliceName" : "motivosConsulta",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:motivosConsulta.title",
      "path" : "Composition.section.title",
      "patternString" : "Motivos de consulta",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:motivosConsulta.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "10154-3",
          "display" : "Motivo de consulta"
        }]
      }
    },
    {
      "id" : "Composition.section:motivosConsulta.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:motivosConsulta.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:motivosConsulta.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:motivosConsulta.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:motivosConsulta.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:motivosConsulta.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-motivo-consulta"]
      }]
    },
    {
      "id" : "Composition.section:diagnosticos",
      "path" : "Composition.section",
      "sliceName" : "diagnosticos",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:diagnosticos.title",
      "path" : "Composition.section.title",
      "patternString" : "Diagnósticos",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:diagnosticos.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11450-4",
          "display" : "Diagnostico"
        }]
      }
    },
    {
      "id" : "Composition.section:diagnosticos.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:diagnosticos.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:diagnosticos.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:diagnosticos.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:diagnosticos.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:diagnosticos.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-diagnostico"]
      }]
    },
    {
      "id" : "Composition.section:procedimientos",
      "path" : "Composition.section",
      "sliceName" : "procedimientos",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:procedimientos.title",
      "path" : "Composition.section.title",
      "patternString" : "Procedimientos relevantes realizados",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:procedimientos.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "47519-4",
          "display" : "Procedimientos relevantes realizados"
        }]
      }
    },
    {
      "id" : "Composition.section:procedimientos.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:procedimientos.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:procedimientos.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:procedimientos.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:procedimientos.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:procedimientos.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento"]
      }]
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado",
      "path" : "Composition.section",
      "sliceName" : "tratamientoNoFarmacologicoRealizado",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.title",
      "path" : "Composition.section.title",
      "patternString" : "Tratamiento no farmacológico realizado durante la asistencia",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "258071000179109",
          "display" : "Tratamiento no farmacológico realizado durante la asistencia"
        }]
      }
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoRealizado.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-procedimiento"]
      }]
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado",
      "path" : "Composition.section",
      "sliceName" : "tratamientoFarmacologicoRealizado",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.title",
      "path" : "Composition.section.title",
      "patternString" : "Tratamiento farmacológico realizado durante la asistencia",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "19011-6",
          "display" : "Tratamiento farmacológico realizado durante la asistencia"
        }]
      }
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoRealizado.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-administration"]
      }]
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal",
      "path" : "Composition.section",
      "sliceName" : "tratamientoNoFarmacologicoFinal",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.title",
      "path" : "Composition.section.title",
      "patternString" : "Tratamiento no farmacológico indicado al final de la asistencia",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "258081000179106",
          "display" : "Tratamiento no farmacológico indicado al final de la asistencia"
        }]
      }
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoNoFarmacologicoFinal.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request"]
      }]
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal",
      "path" : "Composition.section",
      "sliceName" : "tratamientoFarmacologicoFinal",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.title",
      "path" : "Composition.section.title",
      "patternString" : "Tratamiento farmacológico indicado al final de la asistencia",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29305-0",
          "display" : "Tratamiento farmacológico indicado al final de la asistencia"
        }]
      }
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:tratamientoFarmacologicoFinal.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-medication-request"]
      }]
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento",
      "path" : "Composition.section",
      "sliceName" : "instruccionesSeguimiento",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.title",
      "path" : "Composition.section.title",
      "patternString" : "Instrucciones de seguimiento",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18776-5",
          "display" : "Instrucciones de seguimiento"
        }]
      }
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:instruccionesSeguimiento.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request"]
      }]
    },
    {
      "id" : "Composition.section:observaciones",
      "path" : "Composition.section",
      "sliceName" : "observaciones",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:observaciones.title",
      "path" : "Composition.section.title",
      "patternString" : "Observaciones relevantes",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:observaciones.author",
      "path" : "Composition.section.author",
      "max" : "0"
    },
    {
      "id" : "Composition.section:observaciones.focus",
      "path" : "Composition.section.focus",
      "max" : "0"
    },
    {
      "id" : "Composition.section:observaciones.text",
      "path" : "Composition.section.text",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:observaciones.mode",
      "path" : "Composition.section.mode",
      "max" : "0"
    },
    {
      "id" : "Composition.section:observaciones.orderedBy",
      "path" : "Composition.section.orderedBy",
      "max" : "0"
    },
    {
      "id" : "Composition.section:observaciones.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Appointment",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    }]
  }
}

```
