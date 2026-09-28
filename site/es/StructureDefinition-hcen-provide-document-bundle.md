# Envío para publicación documental HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Envío para publicación documental HCEN 

 
Sobre de publicación basado en MHD UnContained Comprehensive Provide Document Bundle, adaptado al contrato HCEN con metadatos, documento FHIR, CDA y recursos de contexto. La semántica de persistencia de sus entradas debe cerrarse antes de uso operativo. 

**Usages:**

* Examples for this Profile: [Bundle/hcen-publicacion-ejemplo](Bundle-hcen-publicacion-ejemplo.md)

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

Mandatory: 5 elements(2 nested mandatory elements)
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set)](StructureDefinition-hcen-submission-set.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)
* [Representación CDA de un documento HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-cda-binary)](StructureDefinition-hcen-cda-binary.md)
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

Mandatory: 5 elements(2 nested mandatory elements)
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set)](StructureDefinition-hcen-submission-set.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)
* [Representación CDA de un documento HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-cda-binary)](StructureDefinition-hcen-cda-binary.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Bundle.entry

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-provide-document-bundle.csv), [Excel](../StructureDefinition-hcen-provide-document-bundle.xlsx), [Schematron](../StructureDefinition-hcen-provide-document-bundle.sch) 

### Notas:

### Relación con MHD y límites del contrato

Este perfil adapta la organización de UnContainedComprehensiveProvideDocumentBundle de MHD 4.2.3. Deriva de Bundle porque el slicing IHE es cerrado y exige perfiles IHE de metadatos, mientras HCEN incorpora contexto adicional y reglas propias de identificación. No declara conformidad integral IHE.

Las invariantes comprueban unicidad de fullUrl, enlaces FHIR/CDA, pertenencia de los DocumentReference al SubmissionSet y derivación de su identificador. No comprueban la equivalencia clínica, la correspondencia de versión ni la resolución de todas las referencias clínicas o históricas.

La persistencia y respuesta de las entradas POST siguen pendientes. Una transacción FHIR estándar no puede interpretarse como procesamiento parcial sin adaptar el contrato. Consultar [Publicación](hcen-iti-65.md#pendientes) antes de utilizar este sobre en un servicio.



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
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Sobre de publicación basado en MHD UnContained Comprehensive Provide Document Bundle, adaptado al contrato HCEN con metadatos, documento FHIR, CDA y recursos de contexto. La semántica de persistencia de sus entradas debe cerrarse antes de uso operativo.",
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
      "short" : "Sobre de publicación documental HCEN",
      "definition" : "Bundle de intercambio que transporta ambos formatos del documento y sus metadatos; no es el documento clínico.",
      "constraint" : [{
        "key" : "hcen-iti65-fullurl-unique",
        "severity" : "error",
        "human" : "Cada fullUrl del envío debe ser único.",
        "expression" : "entry.fullUrl.isDistinct()",
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
        "key" : "hcen-publication-no-replace",
        "severity" : "error",
        "human" : "El alta inicial no incluye operaciones de reemplazo documental.",
        "expression" : "entry.resource.ofType(DocumentReference).relatesTo.where(code = 'replaces').empty()",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-fhir-links",
        "severity" : "error",
        "human" : "Cada URL documental FHIR debe identificar una entrada Bundle del envío.",
        "expression" : "entry.resource.ofType(DocumentReference).content.attachment.url.toString().subsetOf(entry.where(resource is Bundle).fullUrl.toString())",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-cda-links",
        "severity" : "error",
        "human" : "Cada referencia CDA debe identificar una entrada Binary del envío.",
        "expression" : "entry.resource.ofType(DocumentReference).content.attachment.extension.where(url = 'http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id').value.ofType(Reference).reference.subsetOf(entry.where(resource is Binary).fullUrl)",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle"
      },
      {
        "key" : "hcen-publication-members",
        "severity" : "error",
        "human" : "El SubmissionSet enumera exactamente los DocumentReference del envío.",
        "expression" : "entry.resource.ofType(List).entry.item.reference.toString().subsetOf(entry.where(resource is DocumentReference).fullUrl.toString()) and entry.where(resource is DocumentReference).fullUrl.toString().subsetOf(entry.resource.ofType(List).entry.item.reference.toString())",
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
      "definition" : "Un SubmissionSet y uno o más DocumentReference, Bundles documentales y Binary CDA. Las entradas adicionales contienen recursos de contexto referenciados, no nuevas operaciones de negocio.",
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
      }]
    },
    {
      "id" : "Bundle.entry:documentBundle.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Bundle"
    },
    {
      "id" : "Bundle.entry:cdaBinary",
      "path" : "Bundle.entry",
      "sliceName" : "cdaBinary",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:cdaBinary.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Binary",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-cda-binary"]
      }]
    },
    {
      "id" : "Bundle.entry:cdaBinary.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Binary"
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
