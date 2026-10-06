# Conjunto de envío HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Conjunto de envío HCEN 

### Agrupación y autoría

Este conjunto enumera todos y solo los DocumentReference miembros del envío, cada uno una única vez y sin significado en el orden. No incluye carpetas ni entradas eliminadas. Su uniqueId es S, un identificador propio distinto de [oid_documento_clinico], y utiliza HCENDocumentIdentifier. Su entryUUID técnico obligatorio utiliza HCENSubmissionSetIdentifier con formato `urn:uuid:2.[oid_documento_clinico]`, derivado de [oid_documento_clinico] de cualquiera de sus miembros. Esta forma es una convención histórica HCEN/XDS, no un UUID RFC estándar.

La clasificación se expresa con la extensión IHE `designationType`. El tipo fijo de List, `submissionset`, identifica la función de la lista y no sustituye esa clasificación. `homeCommunityId` identifica la comunidad de origen y es obligatorio.

`source` referencia al HCENPractitionerRole que creó el conjunto. En publicación, ese rol, su Practitioner y su Organization deben estar incluidos como entradas del envío. List admite una sola referencia `source`; los recursos Practitioner u Organization adicionales del Bundle no se interpretan como autores del conjunto ni sustituyen al rol obligatorio.

**Usages:**

* Use this Profile: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-submission-set)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

** Summary **

Mandatory: 13 elements
 Must-Support: 1 element
 Fixed: 2 elements
 Prohibited: 2 elements

**Structures**

This structure refers to these other structures:

* [EntryUUID del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-identifier)](StructureDefinition-hcen-submission-set-identifier.md)
* [Identificador global del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-unique-id-identifier)](StructureDefinition-hcen-submission-set-unique-id-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensions**

This structure refers to these extensions:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-designationType.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-sourceId.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-intendedRecipient.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of List.identifier

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

** Summary **

Mandatory: 13 elements
 Must-Support: 1 element
 Fixed: 2 elements
 Prohibited: 2 elements

**Structures**

This structure refers to these other structures:

* [EntryUUID del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-identifier)](StructureDefinition-hcen-submission-set-identifier.md)
* [Identificador global del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-unique-id-identifier)](StructureDefinition-hcen-submission-set-unique-id-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensions**

This structure refers to these extensions:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-designationType.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-sourceId.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-intendedRecipient.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of List.identifier

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-submission-set.csv), [Excel](../StructureDefinition-hcen-submission-set.xlsx), [Schematron](../StructureDefinition-hcen-submission-set.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-submission-set",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set",
  "version" : "0.1.0",
  "name" : "HCENSubmissionSet",
  "title" : "Conjunto de envío HCEN",
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
  "description" : "Lista HCEN que agrupa referencias documentales para su envío. Reutiliza extensiones y tipos de identificador oficiales de IHE MHD sin declarar conformidad integral con el perfil IHE.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List",
      "short" : "Conjunto de envío HCEN",
      "definition" : "Lista HCEN que agrupa referencias documentales para su envío. Reutiliza extensiones y tipos de identificador oficiales de IHE MHD sin declarar conformidad integral con el perfil IHE."
    },
    {
      "id" : "List.id",
      "path" : "List.id",
      "short" : "ID lógico de este artefacto.",
      "definition" : "ID lógico de este artefacto."
    },
    {
      "id" : "List.meta",
      "path" : "List.meta",
      "short" : "Metadatos sobre el recurso.",
      "definition" : "Metadatos sobre el recurso."
    },
    {
      "id" : "List.implicitRules",
      "path" : "List.implicitRules",
      "short" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "definition" : "Conjunto de reglas bajo las cuales se creó este contenido."
    },
    {
      "id" : "List.language",
      "path" : "List.language",
      "short" : "Idioma del contenido del recurso.",
      "definition" : "Idioma del contenido del recurso."
    },
    {
      "id" : "List.text",
      "path" : "List.text",
      "short" : "Resumen del recurso en texto para interpretación humana.",
      "definition" : "Resumen del recurso en texto para interpretación humana."
    },
    {
      "id" : "List.contained",
      "path" : "List.contained",
      "short" : "Recursos integrados en línea (inline).",
      "definition" : "Recursos integrados en línea (inline)."
    },
    {
      "id" : "List.extension",
      "path" : "List.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones.",
      "min" : 3
    },
    {
      "id" : "List.extension:homeCommunityId",
      "path" : "List.extension",
      "sliceName" : "homeCommunityId",
      "short" : "Comunidad de origen del conjunto.",
      "definition" : "Identificador de la comunidad desde la cual se accede a los documentos del conjunto.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id"]
      }]
    },
    {
      "id" : "List.extension:designationType",
      "path" : "List.extension",
      "sliceName" : "designationType",
      "short" : "Tipo de contenido o designación clínica del conjunto.",
      "definition" : "Tipo de contenido o designación clínica del conjunto.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType"]
      }]
    },
    {
      "id" : "List.extension:sourceId",
      "path" : "List.extension",
      "sliceName" : "sourceId",
      "short" : "Identificador de la entidad que origina el envío.",
      "definition" : "Identificador de la entidad que origina el envío.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId"]
      }]
    },
    {
      "id" : "List.extension:intendedRecipient",
      "path" : "List.extension",
      "sliceName" : "intendedRecipient",
      "short" : "Personas u organizaciones destinatarias del conjunto.",
      "definition" : "Personas u organizaciones destinatarias del conjunto.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.modifierExtension",
      "path" : "List.modifierExtension",
      "short" : "Extensiones que no pueden ser ignoradas.",
      "definition" : "Extensiones que no pueden ser ignoradas."
    },
    {
      "id" : "List.identifier",
      "path" : "List.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        }],
        "rules" : "open"
      },
      "short" : "Identificadores para este conjunto de documentos.",
      "definition" : "Identificadores para este conjunto de documentos.",
      "min" : 2
    },
    {
      "id" : "List.identifier:entryUUID",
      "path" : "List.identifier",
      "sliceName" : "entryUUID",
      "short" : "EntryUUID con formato urn:uuid:2.[oid_documento_clinico].",
      "definition" : "Identificador técnico obligatorio del conjunto, derivado del OID [oid_documento_clinico] de cualquiera de sus documentos miembros con el formato urn:uuid:2.[oid_documento_clinico]. No existe primer documento obligatorio, documento principal ni orden relevante.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-identifier"]
      }]
    },
    {
      "id" : "List.identifier:uniqueId",
      "path" : "List.identifier",
      "sliceName" : "uniqueId",
      "short" : "OID global S propio del SubmissionSet.",
      "definition" : "OID global S propio del SubmissionSet, distinto del identificador documental [oid_documento_clinico], representado mediante HCENSubmissionSetUniqueIdIdentifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-unique-id-identifier"]
      }]
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "short" : "Estado de la lista: current | retired | entered-in-error.",
      "definition" : "Estado de la lista: current | retired | entered-in-error.",
      "patternCode" : "current"
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "short" : "Forma en que se gestiona la lista.",
      "definition" : "Forma en que se gestiona la lista.",
      "patternCode" : "working"
    },
    {
      "id" : "List.title",
      "path" : "List.title",
      "short" : "Nombre descriptivo del conjunto.",
      "definition" : "Nombre descriptivo del conjunto."
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "short" : "Fija el tipo de lista.",
      "definition" : "Fija el tipo de lista.",
      "min" : 1
    },
    {
      "id" : "List.code.coding",
      "path" : "List.code.coding",
      "min" : 1
    },
    {
      "id" : "List.code.coding.system",
      "path" : "List.code.coding.system",
      "fixedUri" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes"
    },
    {
      "id" : "List.code.coding.code",
      "path" : "List.code.coding.code",
      "fixedCode" : "submissionset"
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "short" : "Paciente al que pertenecen los documentos incluidos.",
      "definition" : "Paciente al que pertenecen los documentos incluidos.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }]
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "short" : "Contexto de encuentro clínico.",
      "definition" : "Contexto de encuentro clínico."
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Fecha y hora de agrupación del conjunto.",
      "definition" : "Fecha y hora de agrupación del conjunto.",
      "min" : 1
    },
    {
      "id" : "List.source",
      "path" : "List.source",
      "short" : "Autor que creó el conjunto de envío.",
      "definition" : "Referencia obligatoria a HCENPractitionerRole, que identifica al profesional y su institución como autor del conjunto. Los recursos Practitioner u Organization adicionales del envío no sustituyen esta referencia.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
      }]
    },
    {
      "id" : "List.source.reference",
      "path" : "List.source.reference",
      "min" : 1
    },
    {
      "id" : "List.orderedBy",
      "path" : "List.orderedBy",
      "short" : "Criterio de ordenación.",
      "definition" : "Criterio de ordenación."
    },
    {
      "id" : "List.note",
      "path" : "List.note",
      "short" : "Comentarios sobre el SubmissionSet.",
      "definition" : "Comentarios sobre el SubmissionSet."
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "short" : "Documentos que componen este conjunto.",
      "definition" : "Documentos que componen este conjunto.",
      "min" : 1
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Bandera de estado del ítem.",
      "definition" : "Bandera de estado del ítem."
    },
    {
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "short" : "Si el ítem fue eliminado de la lista.",
      "definition" : "Si el ítem fue eliminado de la lista.",
      "max" : "0"
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Cuándo fue agregado el ítem.",
      "definition" : "Cuándo fue agregado el ítem."
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referencia a un DocumentReference incluido en el conjunto.",
      "definition" : "Referencia a un DocumentReference incluido en el conjunto.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"]
      }]
    },
    {
      "id" : "List.entry.item.reference",
      "path" : "List.entry.item.reference",
      "min" : 1
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Razón por la cual la lista está vacía.",
      "definition" : "Razón por la cual la lista está vacía.",
      "max" : "0"
    }]
  }
}

```
