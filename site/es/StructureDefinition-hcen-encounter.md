# HCEN Evento Clínico - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: HCEN Evento Clínico 

**Usages:**

* Refer to this Profile: [HCEN Evento Clínico](StructureDefinition-hcen-encounter.md) and [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-encounter)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Encounter](http://hl7.org/fhir/R4/encounter.html) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Encounter](http://hl7.org/fhir/R4/encounter.html) .

** Summary **

Mandatory: 1 element
 Must-Support: 2 elements
 Fixed: 2 elements
 Prohibited: 14 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [HCEN Evento Clínico (http://fhir.hcen.gub.uy/StructureDefinition/hcen-encounter)](StructureDefinition-hcen-encounter.md)

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Encounter](http://hl7.org/fhir/R4/encounter.html) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Encounter](http://hl7.org/fhir/R4/encounter.html) .

** Summary **

Mandatory: 1 element
 Must-Support: 2 elements
 Fixed: 2 elements
 Prohibited: 14 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [HCEN Evento Clínico (http://fhir.hcen.gub.uy/StructureDefinition/hcen-encounter)](StructureDefinition-hcen-encounter.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-encounter.csv), [Excel](../StructureDefinition-hcen-encounter.xlsx), [Schematron](../StructureDefinition-hcen-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-encounter",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-encounter",
  "version" : "0.1.0",
  "name" : "HCENEncounter",
  "title" : "HCEN Evento Clínico",
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
  "description" : "Evento clínico (Encounter) asociado a una Hoja de Consulta No Urgente (CNU) de HCEN.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENEncounterToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYEncounter."
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "short" : "Evento clínico de una Consulta No Urgente",
      "definition" : "Encounter que representa el evento clínico (consulta, atención) asociado a una Hoja de Consulta No Urgente de HCEN."
    },
    {
      "id" : "Encounter.implicitRules",
      "path" : "Encounter.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Encounter.language",
      "path" : "Encounter.language",
      "short" : "Idioma del recurso — fijo a es-UY",
      "definition" : "Idioma del recurso — fijo a es-UY",
      "min" : 1,
      "fixedCode" : "es-UY"
    },
    {
      "id" : "Encounter.modifierExtension",
      "path" : "Encounter.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "Estado del evento clínico — fijo a finished",
      "definition" : "Estado del evento clínico — fijo a finished",
      "fixedCode" : "finished"
    },
    {
      "id" : "Encounter.classHistory",
      "path" : "Encounter.classHistory",
      "max" : "0"
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "short" : "Tipo detallado del evento clínico (eje 2 del catálogo de documentos de Uruguay)",
      "definition" : "Tipo detallado del evento clínico (eje 2 del catálogo de documentos de Uruguay)",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-type-code"
      },
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/code"
      }]
    },
    {
      "id" : "Encounter.type.coding.system",
      "path" : "Encounter.type.coding.system",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/code/@codeSystem"
      }]
    },
    {
      "id" : "Encounter.type.coding.code",
      "path" : "Encounter.type.coding.code",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/code/@code"
      }]
    },
    {
      "id" : "Encounter.type.coding.display",
      "path" : "Encounter.type.coding.display",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/code/@displayName"
      }]
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "short" : "Servicio médico específico asociado al evento clínico (eje 3 del catálogo de documentos de Uruguay)",
      "definition" : "Servicio médico específico asociado al evento clínico (eje 3 del catálogo de documentos de Uruguay)",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code"
      }]
    },
    {
      "id" : "Encounter.serviceType.coding.system",
      "path" : "Encounter.serviceType.coding.system",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code/@codeSystem"
      }]
    },
    {
      "id" : "Encounter.serviceType.coding.code",
      "path" : "Encounter.serviceType.coding.code",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code/@code"
      }]
    },
    {
      "id" : "Encounter.serviceType.coding.display",
      "path" : "Encounter.serviceType.coding.display",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code/@displayName"
      }]
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "max" : "0"
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "Usuario de salud al que se le asocia el evento clínico",
      "definition" : "Identifica al usuario de salud al que se le asocia el evento clínico de la CNU.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }],
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/recordTarget/patientRole/id"
      }]
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "max" : "0"
    },
    {
      "id" : "Encounter.basedOn",
      "path" : "Encounter.basedOn",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "Profesional involucrado en el evento clínico",
      "definition" : "Identifica al profesional (p.ej. PractitionerRole) involucrado en el evento clínico.",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor"
      }]
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor"
      }]
    },
    {
      "id" : "Encounter.participant.period",
      "path" : "Encounter.participant.period",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/author/time"
      }]
    },
    {
      "id" : "Encounter.participant.period.start",
      "path" : "Encounter.participant.period.start",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/author/time/@value"
      }]
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor"
      }]
    },
    {
      "id" : "Encounter.appointment",
      "path" : "Encounter.appointment",
      "max" : "0"
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "Inicio y finalización del evento clínico",
      "definition" : "Inicio y finalización del evento clínico.",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/effectiveTime"
      }]
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low/@value"
      }]
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high/@value"
      }]
    },
    {
      "id" : "Encounter.length",
      "path" : "Encounter.length",
      "max" : "0"
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "max" : "0"
    },
    {
      "id" : "Encounter.reasonReference",
      "path" : "Encounter.reasonReference",
      "max" : "0"
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "max" : "0"
    },
    {
      "id" : "Encounter.account",
      "path" : "Encounter.account",
      "max" : "0"
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "max" : "0"
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "max" : "0"
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "Organización prestadora responsable del evento clínico",
      "definition" : "Organización prestadora responsable de la atención asociada al evento clínico.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }],
      "mapping" : [{
        "identity" : "HCENEncounterToCDA",
        "map" : "ClinicalDocument/author/assignedAuthor/representedOrganization"
      }]
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "short" : "Evento clínico del cual este evento forma parte",
      "definition" : "Evento clínico (Encounter) del cual este evento forma parte, cuando corresponde.",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-encounter"]
      }]
    }]
  }
}

```
