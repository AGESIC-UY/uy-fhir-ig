# Envío para publicación documental HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Envío para publicación documental HCEN 

### Organización del envío

Este perfil adapta la organización de UnContainedComprehensiveProvideDocumentBundle de MHD 4.2.3. Deriva de Bundle porque el slicing IHE es cerrado y exige perfiles IHE de metadatos, mientras HCEN incorpora contexto adicional y reglas propias de identificación. No declara conformidad integral IHE.

El envío incluye un SubmissionSet, uno o más DocumentReference, sus Bundles documentales FHIR y los recursos de contexto referenciados. Binary CDA no debería (SHOULD NOT) enviarse; su referencia en los metadatos permanece obligatoria. Si llega, se tolera, puede ignorarse y no invalida por sí mismo el envío, sin obligación de correspondencia Binary ↔ metadatos y sin cardinalidad 0..0.

Los PractitionerRole utilizados como autores y sus Practitioner y Organization deben estar incluidos como entradas del envío. Las demás entradas necesarias se determinan por los [paths explícitos del contrato de metadatos](hcen-iti-65.md#referencias-locales), sin extender la resolución local a toda Reference ni exigir un ejemplar de cada tipo. Las referencias de metadatos controladas por `hcen-publication-context` deben resolverse a entradas del envío; los recursos contenidos no sustituyen esas entradas. Dentro del documento FHIR se admiten recursos contenidos cuando la estructura FHIR lo permite. Cada Bundle documental debe resolver sus propias referencias clínicas.

Las referencias históricas `relatesTo` pueden apuntar a un DocumentReference ya existente en HCEN y no obligan a incluirlo en el envío. Las relaciones de reemplazo se ignoran porque su procesamiento no está soportado actualmente.

### Validación y contrato de publicación

Las invariantes comprueban unicidad de `fullUrl`, correspondencia uno a uno entre DocumentReference y Bundle documental, pertenencia de todos y solo los DocumentReference al SubmissionSet sin duplicados, resolución de los paths explícitos de metadatos y autocontención de cada documento. El orden de los miembros no tiene significado. No comprueban la equivalencia clínica, la correspondencia de versión ni la existencia de los documentos históricos en HCEN; esta última se verifica durante el procesamiento.

La persistencia y respuesta de las entradas POST siguen pendientes. Una transacción FHIR estándar no puede interpretarse como procesamiento parcial sin adaptar el contrato. Consultar [Publicación](hcen-iti-65.md#pendientes) antes de utilizar este Bundle de publicación en un servicio.

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-provide-document-bundle)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

** Summary **

Mandatory: 4 elements(2 nested mandatory elements)
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set)](StructureDefinition-hcen-submission-set.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Bundle.entry

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

** Summary **

Mandatory: 4 elements(2 nested mandatory elements)
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set)](StructureDefinition-hcen-submission-set.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Bundle.entry

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-provide-document-bundle.csv), [Excel](../StructureDefinition-hcen-provide-document-bundle.xlsx), [Schematron](../StructureDefinition-hcen-provide-document-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-provide-document-bundle",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle",
  "version" : "0.1.0",
  "name" : "HCENProvideDocumentBundle",
  "title" : "Envío para publicación documental HCEN",
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
  "description" : "Bundle de publicación basado en MHD UnContained Comprehensive Provide Document Bundle, adaptado al contrato HCEN con metadatos, documento FHIR y recursos de contexto. La semántica de persistencia de sus entradas debe cerrarse antes de uso operativo.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "short" : "Bundle de publicación documental HCEN",
      "definition" : "Bundle de intercambio que transporta el documento FHIR, sus metadatos y contexto; no es el documento clínico.",
      "constraint" : [{
        "key" : "hcen-fullurl-unique",
        "severity" : "error",
        "human" : "Regla local HCEN: cada fullUrl debe ser único, incluso entre recursos con meta.versionId diferentes.",
        "expression" : "entry.fullUrl.select(toString()).isDistinct()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-current",
        "severity" : "error",
        "human" : "La publicación inicial contiene referencias documentales en estado current.",
        "expression" : "entry.resource.ofType(DocumentReference).all(status = 'current')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-fhir-links",
        "severity" : "error",
        "human" : "Cada DocumentReference se vincula por attachment.url a un único Bundle documental del envío, y cada Bundle documental tiene un único DocumentReference: no hay destinos compartidos ni Bundles huérfanos.",
        "expression" : "entry.resource.ofType(DocumentReference).all(content.attachment.url.count() = 1) and entry.resource.ofType(DocumentReference).content.attachment.url.select(toString()).isDistinct() and entry.resource.ofType(DocumentReference).content.attachment.url.select(toString()).subsetOf(%context.entry.where(resource is Bundle).fullUrl.select(toString())) and entry.where(resource is Bundle).fullUrl.select(toString()).subsetOf(%context.entry.resource.ofType(DocumentReference).content.attachment.url.select(toString()))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-members",
        "severity" : "error",
        "human" : "El SubmissionSet enumera todos y solo los DocumentReference del envío por fullUrl exacto, una única vez cada uno y sin imponer orden.",
        "expression" : "entry.resource.ofType(List).entry.item.all(reference.exists()) and entry.resource.ofType(List).entry.item.reference.select(toString()).isDistinct() and entry.resource.ofType(List).entry.item.reference.select(toString()).subsetOf(%context.entry.where(resource is DocumentReference).fullUrl.select(toString())) and entry.where(resource is DocumentReference).fullUrl.select(toString()).subsetOf(%context.entry.resource.ofType(List).entry.item.reference.select(toString()))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-context",
        "severity" : "error",
        "human" : "Las referencias explícitas de metadatos HCEN deben resolver a entradas del envío por fullUrl o Tipo/id; no se admiten referencias solo lógicas ni contained como sustituto.",
        "expression" : "(entry.resource.ofType(DocumentReference).select(subject | author | authenticator | custodian | context.sourcePatientInfo | extension.where(url = 'http://fhir.hcen.gub.uy/StructureDefinition/ext-funder' or url = 'http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of').value.ofType(Reference)) | entry.resource.ofType(List).select(subject | source)).all(reference.exists() and reference.select(toString()).subsetOf(%context.entry.fullUrl.select(toString()) | %context.entry.resource.where(id.exists()).select(type().name & '/' & id)))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-contained",
        "severity" : "error",
        "human" : "Las referencias locales del contexto deben identificar recursos contenidos en el recurso que las aloja.",
        "expression" : "entry.resource.where(($this is Bundle).not()).all(descendants().ofType(Reference).reference.where(startsWith('#')).select(substring(1)).subsetOf(contained.id.select(toString())))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-authors",
        "severity" : "error",
        "human" : "La autoría documental incluye un PractitionerRole del envío. Solo los roles usados por author, authenticator o source deben tener Practitioner y Organization como entradas del envío.",
        "expression" : "entry.resource.ofType(DocumentReference).all(author.reference.select(toString()).intersect(%context.entry.where(resource is PractitionerRole).fullUrl.select(toString()) | %context.entry.resource.ofType(PractitionerRole).where(id.exists()).select('PractitionerRole/' & id)).exists()) and entry.where(resource is PractitionerRole).where((fullUrl.select(toString()) | resource.where(id.exists()).select('PractitionerRole/' & id)).intersect((%context.entry.resource.ofType(DocumentReference).select(author | authenticator) | %context.entry.resource.ofType(List).source).reference.select(toString())).exists()).resource.ofType(PractitionerRole).all(practitioner.reference.exists() and organization.reference.exists() and practitioner.reference.select(toString()).subsetOf(%context.entry.where(resource is Practitioner).fullUrl.select(toString()) | %context.entry.resource.ofType(Practitioner).where(id.exists()).select('Practitioner/' & id)) and organization.reference.select(toString()).subsetOf(%context.entry.where(resource is Organization).fullUrl.select(toString()) | %context.entry.resource.ofType(Organization).where(id.exists()).select('Organization/' & id)))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-document-identifier",
        "severity" : "error",
        "human" : "El masterIdentifier de cada DocumentReference coincide en system y value con el identifier del Bundle documental vinculado mediante attachment.url.",
        "expression" : "entry.resource.ofType(DocumentReference).select((content.attachment.url.toString().length().toString() & ':' & content.attachment.url.toString()) & (masterIdentifier.system.toString().length().toString() & ':' & masterIdentifier.system.toString()) & (masterIdentifier.value.toString().length().toString() & ':' & masterIdentifier.value.toString())).subsetOf(%context.entry.where(resource is Bundle).select((fullUrl.toString().length().toString() & ':' & fullUrl.toString()) & (resource.identifier.system.toString().length().toString() & ':' & resource.identifier.system.toString()) & (resource.identifier.value.toString().length().toString() & ':' & resource.identifier.value.toString())))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-submission-entryuuid-member",
        "severity" : "error",
        "human" : "El entryUUID 2.[oid_documento_clinico] del SubmissionSet corresponde al [oid_documento_clinico] de cualquiera de sus DocumentReference miembros efectivos, sin seleccionar primer miembro ni comparar S.",
        "expression" : "entry.resource.ofType(List).identifier.where(use = 'official' and system = 'urn:ietf:rfc:3986' and value.startsWith('urn:uuid:')).value.select('urn:oid:' & substring(11)).subsetOf(%context.entry.where(resource is DocumentReference and fullUrl.select(toString()).subsetOf(%context.entry.resource.ofType(List).entry.item.reference.select(toString()))).resource.ofType(DocumentReference).masterIdentifier.value.select(toString()))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      }]
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "short" : "Metadatos, representaciones y contexto del envío",
      "definition" : "Un SubmissionSet, uno o más DocumentReference y Bundles documentales, y los recursos de contexto referenciados. Binary CDA SHOULD NOT incluirse; su presencia no invalida el envío y, si se recibe, puede ignorarse.",
      "min" : 4
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Identidad de la entrada dentro del envío",
      "definition" : "URI única que permite resolver las referencias del envío sin descargar recursos individuales de sistemas externos.",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "short" : "Acción propuesta para procesar la entrada",
      "definition" : "Representación preliminar de alta con POST. El contrato de publicación debe resolver la persistencia de las representaciones documentales.",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry.request.ifNoneExist",
      "path" : "Bundle.entry.request.ifNoneExist",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:submissionSet",
      "path" : "Bundle.entry",
      "sliceName" : "submissionSet",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:submissionSet.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "List",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set"]
      }]
    },
    {
      "id" : "Bundle.entry:submissionSet.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "List"
    },
    {
      "id" : "Bundle.entry:documentReference",
      "path" : "Bundle.entry",
      "sliceName" : "documentReference",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:documentReference.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"]
      }]
    },
    {
      "id" : "Bundle.entry:documentReference.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "DocumentReference"
    },
    {
      "id" : "Bundle.entry:documentBundle",
      "path" : "Bundle.entry",
      "sliceName" : "documentBundle",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:documentBundle.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Bundle"
      }],
      "constraint" : [{
        "key" : "hcen-document-self-contained",
        "severity" : "error",
        "human" : "El Bundle documental resuelve sus referencias clínicas con sus propias entradas o recursos contenidos.",
        "expression" : "type = 'document' and entry.resource.all(descendants().ofType(Reference).all(reference.exists() and (reference.startsWith('#') or reference.select(toString()).subsetOf(%context.entry.fullUrl.select(toString()) | %context.entry.resource.where(id.exists()).select(type().name & '/' & id)))) and descendants().ofType(Reference).reference.where(startsWith('#')).select(substring(1)).subsetOf(contained.id.select(toString())))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      }]
    },
    {
      "id" : "Bundle.entry:documentBundle.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Bundle"
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:patient.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Patient"
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner"]
      }]
    },
    {
      "id" : "Bundle.entry:practitioner.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Practitioner"
    },
    {
      "id" : "Bundle.entry:practitionerRole",
      "path" : "Bundle.entry",
      "sliceName" : "practitionerRole",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:practitionerRole.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
      }]
    },
    {
      "id" : "Bundle.entry:practitionerRole.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "PractitionerRole"
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:organization.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    },
    {
      "id" : "Bundle.entry:organization.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Organization"
    }]
  }
}

```
