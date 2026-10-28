# Conjunto de envío HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Conjunto de envío HCEN 

### Agrupación y autoría

Este conjunto enumera todos y solo los DocumentReference miembros del envío, cada uno una única vez y sin significado en el orden. No incluye carpetas ni entradas eliminadas. Su uniqueId es S, un identificador propio distinto de [oid_documento_clinico], y utiliza [HCENSubmissionSetUniqueIdIdentifier](StructureDefinition-hcen-submission-set-unique-id-identifier.md). Su entryUUID técnico obligatorio utiliza HCENSubmissionSetIdentifier con formato `urn:uuid:2.[oid_documento_clinico]`, derivado de [oid_documento_clinico] de cualquiera de sus miembros. Esta forma es una convención histórica HCEN/XDS, no un UUID RFC estándar.

El tipo fijo de List, `submissionset`, identifica la función de la lista y no sustituye su clasificación clínica. `homeCommunityId` identifica la comunidad de origen y es obligatorio.

`source` referencia al HCENPractitionerRole que creó el conjunto. En publicación, ese rol, su Practitioner y su Organization deben estar incluidos como entradas del envío. List admite una sola referencia `source`; los recursos Practitioner u Organization adicionales del Bundle no se interpretan como autores del conjunto ni sustituyen al rol obligatorio.

### Origen del envío

`extension[sourceId].valueIdentifier` utiliza [HCENOrgIdentifier](StructureDefinition-hcen-org-identifier.md). Identifica a la entidad que origina el envío, que puede ser una intermediaria distinta de la organización clínica. El OID completo se informa en `value` con prefijo `urn:oid:`, mientras que `system` es `urn:ietf:rfc:3986`.

### Extensiones IHE reutilizadas

`ihe-designationType` expresa la clasificación clínica del conjunto: su `valueCodeableConcept` se vincula al [EJE 2](ValueSet-vs-type-code.md) con fuerza `extensible` y se mapea a `SubmissionSet.contentTypeCode`. No se publica una extensión local ContentTypeCode que duplique `designationType`.

`ihe-sourceId` identifica al origen del envío mediante el `valueIdentifier` descrito arriba. `ihe-intendedRecipient` identifica destinatarios. Las tres extensiones se reutilizan desde MHD 4.2.3.

**Usos:**

* Utilizar este perfil: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-submission-set)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

#### Bindings terminológicos (diferencial)

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

** Resumen **

Obligatorios: 13 elementos
 Must-Support: 1 elementos
 Fijos: 2 elementos
 Prohibidos: 2 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador de Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier)](StructureDefinition-hcen-org-identifier.md)
* [EntryUUID del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-identifier)](StructureDefinition-hcen-submission-set-identifier.md)
* [Identificador global del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-unique-id-identifier)](StructureDefinition-hcen-submission-set-unique-id-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-designationType.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-sourceId.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-intendedRecipient.html)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de List.identifier

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

#### Bindings terminológicos (diferencial)

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [List](http://hl7.org/fhir/R4/list.html) .

** Resumen **

Obligatorios: 13 elementos
 Must-Support: 1 elementos
 Fijos: 2 elementos
 Prohibidos: 2 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador de Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier)](StructureDefinition-hcen-org-identifier.md)
* [EntryUUID del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-identifier)](StructureDefinition-hcen-submission-set-identifier.md)
* [Identificador global del conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-unique-id-identifier)](StructureDefinition-hcen-submission-set-unique-id-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-designationType.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-sourceId.html)
* [https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-ihe-intendedRecipient.html)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de List.identifier

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-submission-set.csv), [Excel](../StructureDefinition-hcen-submission-set.xlsx), [Schematron](../StructureDefinition-hcen-submission-set.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-submission-set",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set",
  "version" : "0.2.0",
  "name" : "HCENSubmissionSet",
  "title" : "Conjunto de envío HCEN",
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
  "description" : "Lista HCEN que agrupa referencias documentales para su envío. Reutiliza extensiones y tipos de identificador oficiales de IHE MHD sin declarar conformidad integral con el perfil IHE.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENSubmissionSetToXDS",
    "uri" : "urn:ihe:iti:xds:2013",
    "name" : "XDS",
    "comment" : "Mapeo del identificador de origen y del tipo de contenido del conjunto a los metadatos XDS."
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
      "definition" : "Tipo de contenido del conjunto, correspondiente al EJE 2. Mapea a SubmissionSet.contentTypeCode.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType"]
      }]
    },
    {
      "id" : "List.extension:designationType.value[x]",
      "path" : "List.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-type-code"
      },
      "mapping" : [{
        "identity" : "HCENSubmissionSetToXDS",
        "map" : "SubmissionSet.contentTypeCode"
      }]
    },
    {
      "id" : "List.extension:sourceId",
      "path" : "List.extension",
      "sliceName" : "sourceId",
      "short" : "Identificador de la entidad que origina el envío.",
      "definition" : "Identificador de la entidad que origina el envío, conforme a HCENOrgIdentifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId"]
      }]
    },
    {
      "id" : "List.extension:sourceId.value[x]",
      "path" : "List.extension.value[x]",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-org-identifier"]
      }]
    },
    {
      "id" : "List.extension:sourceId.value[x].value",
      "path" : "List.extension.value[x].value",
      "mapping" : [{
        "identity" : "HCENSubmissionSetToXDS",
        "map" : "SubmissionSet.sourceId",
        "comment" : "El value FHIR contiene la URI urn:oid: completa; XDS sourceId utiliza el OID sin ese prefijo."
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
      "patternCode" : "current"
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "patternCode" : "working"
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
      "id" : "List.date",
      "path" : "List.date",
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
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "max" : "0"
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
      "max" : "0"
    }]
  }
}

```
