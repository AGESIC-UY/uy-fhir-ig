# HCEN Solicitud de Servicio - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: HCEN Solicitud de Servicio 

 
Solicitud de servicio (procedimiento, interconsulta, estudio, etc.) registrada en la Hoja de Consulta No Urgente (CNU). 

**Usages:**

* Refer to this Profile: [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-service-request)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) .

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) .

** Summary **

Mandatory: 2 elements(7 nested mandatory elements)
 Must-Support: 5 elements
 Fixed: 3 elements
 Prohibited: 23 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.code.coding
* The element 1 is sliced based on the value of ServiceRequest.occurrence[x]

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) .

#### Terminology Bindings (Differential)

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) .

** Summary **

Mandatory: 2 elements(7 nested mandatory elements)
 Must-Support: 5 elements
 Fixed: 3 elements
 Prohibited: 23 elements

**Structures**

This structure refers to these other structures:

* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.code.coding
* The element 1 is sliced based on the value of ServiceRequest.occurrence[x]

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-service-request.csv), [Excel](../StructureDefinition-hcen-service-request.xlsx), [Schematron](../StructureDefinition-hcen-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-service-request",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request",
  "version" : "0.1.0",
  "name" : "HCENServiceRequest",
  "title" : "HCEN Solicitud de Servicio",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Solicitud de servicio (procedimiento, interconsulta, estudio, etc.) registrada en la Hoja de Consulta No Urgente (CNU).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "short" : "Solicitud de servicio de una Consulta No Urgente",
      "definition" : "ServiceRequest que representa una indicación, procedimiento, interconsulta o estudio solicitado en una Hoja de Consulta No Urgente de HCEN."
    },
    {
      "id" : "ServiceRequest.implicitRules",
      "path" : "ServiceRequest.implicitRules",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.language",
      "path" : "ServiceRequest.language",
      "short" : "Idioma del recurso — fijo a es-UY",
      "definition" : "Idioma del recurso — fijo a es-UY",
      "min" : 1,
      "fixedCode" : "es-UY"
    },
    {
      "id" : "ServiceRequest.modifierExtension",
      "path" : "ServiceRequest.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Identificador externo de la solicitud",
      "definition" : "Id externo del recurso."
    },
    {
      "id" : "ServiceRequest.instantiatesCanonical",
      "path" : "ServiceRequest.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.instantiatesUri",
      "path" : "ServiceRequest.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.basedOn",
      "path" : "ServiceRequest.basedOn",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.replaces",
      "path" : "ServiceRequest.replaces",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "short" : "Estado de la solicitud de servicio",
      "definition" : "Indica el estado de la solicitud de servicio."
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "short" : "Naturaleza de la solicitud",
      "definition" : "Indica si la solicitud es una propuesta, un plan o una orden autorizada (ver RequestIntent para el detalle completo de cada valor)."
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "Clasificador del tipo de solicitud (p.ej. terapéutico, diagnóstico, consulta, procedimiento) — sin listado de códigos definido en la hoja",
      "definition" : "Clasificador del tipo de solicitud (p.ej. terapéutico, diagnóstico, consulta, procedimiento) — sin listado de códigos definido en la hoja",
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "short" : "Prioridad de la solicitud",
      "definition" : "Prioridad con la cual se debe coordinar y desarrollar la solicitud."
    },
    {
      "id" : "ServiceRequest.doNotPerform",
      "path" : "ServiceRequest.doNotPerform",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Código que identifica el servicio o procedimiento solicitado (SNOMED CT u otra terminología)",
      "definition" : "Código que identifica el servicio o procedimiento solicitado (SNOMED CT u otra terminología)",
      "constraint" : [{
        "key" : "hcen-coding-required-1",
        "severity" : "error",
        "human" : "code.coding debe tener al menos una entrada (al menos una codificación).",
        "expression" : "coding.exists()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-service-request"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding",
      "path" : "ServiceRequest.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:snomed",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "snomed",
      "short" : "Código SNOMED CT del servicio o procedimiento solicitado (refset de solicitudes de procedimientos)",
      "definition" : "Código SNOMED CT del servicio o procedimiento solicitado (refset de solicitudes de procedimientos)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.code.coding:snomed.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "ServiceRequest.code.coding:snomed.code",
      "path" : "ServiceRequest.code.coding.code",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-solicitud-procedimiento"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:snomed.display",
      "path" : "ServiceRequest.code.coding.display",
      "short" : "Texto descriptivo del código SNOMED CT del servicio o procedimiento solicitado",
      "definition" : "Texto descriptivo del código SNOMED CT del servicio o procedimiento solicitado",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.code.coding:tesauro",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "tesauro",
      "short" : "Código del servicio o procedimiento solicitado en el tesauro local (URI pendiente de confirmación institucional)",
      "definition" : "Código del servicio o procedimiento solicitado en el tesauro local. La URI del sistema es provisional; ver docs/hcen-primera-version.md.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.code.coding:tesauro.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://msp.gub.uy/fhir/CodeSystem/tesauro-hiba"
    },
    {
      "id" : "ServiceRequest.code.coding:tesauro.code",
      "path" : "ServiceRequest.code.coding.code",
      "short" : "Código del servicio o procedimiento solicitado en el tesauro local",
      "definition" : "Código del servicio o procedimiento solicitado en el tesauro local",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.code.coding:tesauro.display",
      "path" : "ServiceRequest.code.coding.display",
      "short" : "Texto descriptivo del código del servicio o procedimiento solicitado en el tesauro local",
      "definition" : "Texto descriptivo del código del servicio o procedimiento solicitado en el tesauro local",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.quantity[x]",
      "path" : "ServiceRequest.quantity[x]",
      "short" : "Cantidad del servicio solicitado (p.ej. 8 sesiones, 2 sesiones por semana, entre 8 y 10 sesiones)",
      "definition" : "Cantidad del servicio solicitado (p.ej. 8 sesiones, 2 sesiones por semana, entre 8 y 10 sesiones)",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "short" : "Paciente para quien se solicita el servicio",
      "definition" : "Paciente para quien se solicita el servicio",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }]
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Fecha/hora o período en que debe realizarse el servicio solicitado",
      "definition" : "Fecha/hora o período en que debe realizarse el servicio solicitado",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceDateTime",
      "path" : "ServiceRequest.occurrence[x]",
      "sliceName" : "occurrenceDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrencePeriod",
      "path" : "ServiceRequest.occurrence[x]",
      "sliceName" : "occurrencePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrencePeriod.start",
      "path" : "ServiceRequest.occurrence[x].start",
      "short" : "Fecha de inicio del período en que debe realizarse el servicio solicitado",
      "definition" : "Fecha de inicio del período en que debe realizarse el servicio solicitado",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.asNeeded[x]",
      "path" : "ServiceRequest.asNeeded[x]",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.performerType",
      "path" : "ServiceRequest.performerType",
      "short" : "Tipo de profesional que debería realizar el servicio",
      "definition" : "Tipo de profesional que debería realizar el servicio solicitado."
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.locationCode",
      "path" : "ServiceRequest.locationCode",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.locationReference",
      "path" : "ServiceRequest.locationReference",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.insurance",
      "path" : "ServiceRequest.insurance",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.patientInstruction",
      "path" : "ServiceRequest.patientInstruction",
      "short" : "Indicaciones particulares realizadas por el médico, dirigidas al paciente",
      "definition" : "Indicaciones particulares realizadas por el médico, dirigidas al paciente",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.relevantHistory",
      "path" : "ServiceRequest.relevantHistory",
      "max" : "0"
    }]
  }
}

```
