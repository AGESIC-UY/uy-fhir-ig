# Envío para publicación documental HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Envío para publicación documental HCEN 

### Organización del envío

Este perfil deriva de Bundle y adapta la organización de UnContainedComprehensiveProvideDocumentBundle de MHD 4.2.3. Incorpora contexto y reglas de identificación propios de HCEN, por lo que no declara conformidad con el perfil IHE, cuyo slicing es cerrado.

| | | |
| :--- | :--- | :--- |
| SubmissionSet | 1..1 | HCENSubmissionSet con los DocumentReference miembros. |
| DocumentReference | 1..* | Metadatos de cada documento. |
| Bundle documental | 1..* | Documento FHIR enviado para validación. |
| Contexto | Según las referencias presentes | Patient, PractitionerRole, Practitioner y Organization con sus perfiles HCEN. |
| Binary CDA | Opcional en Plataforma | No se recomienda incluirlo; su contenido puede ignorarse. |

El envío debe aportar los recursos necesarios para validar sus metadatos. El documento FHIR debe ser autocontenido respecto de sus referencias clínicas, independientemente del Bundle de publicación.

Cada DocumentReference corresponde a exactamente un Bundle documental por `masterIdentifier.system` y `masterIdentifier.value`, coincidentes con `Bundle.identifier.system` y `Bundle.identifier.value`. La Composition raíz conserva ese mismo identificador. No se admiten asociaciones ambiguas, identificadores duplicados ni documentos huérfanos. El SubmissionSet enumera todos y solo los DocumentReference miembros, una vez cada uno.

### Referencias de contexto

Las referencias siguientes deben resolverse a entradas del envío, según los perfiles y las invariantes de publicación:

| | |
| :--- | :--- |
| DocumentReference | `subject`,`author`,`authenticator`,`custodian`,`funder`,`byOrderOf`y`context.sourcePatientInfo`. |
| SubmissionSet | `subject`,`source`y los DocumentReference de`entry.item`. |
| PractitionerRole utilizado en autoría, autenticación o source | `practitioner`y`organization`. |

Los recursos contenidos no sustituyen las entradas de este contexto. Dentro del documento FHIR pueden utilizarse recursos contenidos cuando la estructura FHIR lo permita. La regla de contexto no exige un ejemplar de cada tipo si el envío no lo referencia, ni extiende el cierre local a toda referencia administrativa del recurso.

La autoría debe incluir al menos un HCENPractitionerRole. `SubmissionSet.source` debe referenciar un rol profesional. Cada rol utilizado y su Practitioner y Organization deben incluirse como entradas. Las referencias directas adicionales a Practitioner u Organization en `author` no sustituyen al rol obligatorio.

DocumentReference y SubmissionSet deben informar `homeCommunityId`. El período de servicio se describe en [HCENDocumentReference](StructureDefinition-hcen-document-reference.md).

`SubmissionSet.extension[sourceId].valueIdentifier` identifica a la entidad que origina el envío. Puede ser una intermediaria distinta de la organización clínica. Los formatos e identidades se explican en [Identificadores HCEN](hcen-identificadores.md).

Las referencias históricas `relatesTo` pueden apuntar a un DocumentReference ya existente en HCEN y no obligan a incluirlo en el envío. Su presencia no habilita el procesamiento de reemplazos.

### Correspondencia documental e invariantes

Las invariantes comprueban la unicidad de `fullUrl`, la correspondencia uno a uno por identificador entre DocumentReference y Bundle documental, la membresía exacta del SubmissionSet, las referencias de contexto y la autocontención de cada documento. También exigen que las URL FHIR de los documentos sean distintas dentro del envío, por comparación exacta.

En un envío con varios documentos, cada uno conserva su identidad y su Bundle documental. El orden de los miembros del SubmissionSet no tiene significado. Su `entryUUID` se deriva del identificador de cualquiera de sus miembros, según [HCENSubmissionSet](StructureDefinition-hcen-submission-set.md).

Estas invariantes no comprueban la equivalencia clínica ni la correspondencia de versión entre FHIR y CDA. Tampoco comprueban la existencia de documentos históricos en HCEN, que se verifica durante el procesamiento. La validación del envío, la atomicidad y la respuesta se describen en [HCEN ITI-65](hcen-iti-65.md).

**Usos:**

* Ejemplos de este perfil: [Bundle/hcen-provide-document-bundle-cnu-asse](Bundle-hcen-provide-document-bundle-cnu-asse.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-provide-document-bundle)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

#### Restricciones

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

** Resumen **

Obligatorios: 4 elementos(2 elementosos obligatorios anidados)
 Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set)](StructureDefinition-hcen-submission-set.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Bundle.entry

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

#### Restricciones

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Bundle](http://hl7.org/fhir/R4/bundle.html) .

** Resumen **

Obligatorios: 4 elementos(2 elementosos obligatorios anidados)
 Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Conjunto de envío HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set)](StructureDefinition-hcen-submission-set.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Bundle.entry

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-provide-document-bundle.csv), [Excel](../StructureDefinition-hcen-provide-document-bundle.xlsx), [Schematron](../StructureDefinition-hcen-provide-document-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-provide-document-bundle",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-provide-document-bundle",
  "version" : "0.2.0",
  "name" : "HCENProvideDocumentBundle",
  "title" : "Envío para publicación documental HCEN",
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
  "description" : "Bundle de publicación basado en MHD UnContained Comprehensive Provide Document Bundle, adaptado al contrato HCEN con metadatos, documento FHIR y recursos de contexto. Plataforma procesa y valida el envío como fachada FHIR y registra metadatos en XDS, sin persistir recursos FHIR.",
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
        "human" : "La correspondencia documental es uno a uno: identificadores completos y distintos en ambos lados y la misma cantidad de DocumentReference y Bundles documentales. Las URL originales FHIR son distintas dentro del envío por comparación exacta. Se complementa con hcen-publication-document-identifier.",
        "expression" : "entry.resource.ofType(DocumentReference).content.attachment.url.select(toString()).isDistinct() and entry.resource.ofType(DocumentReference).all(masterIdentifier.system.exists() and masterIdentifier.value.exists()) and entry.resource.ofType(Bundle).where(type = 'document').all(identifier.system.exists() and identifier.value.exists()) and entry.resource.ofType(DocumentReference).select((masterIdentifier.system.toString().length().toString() & ':' & masterIdentifier.system.toString()) & (masterIdentifier.value.toString().length().toString() & ':' & masterIdentifier.value.toString())).isDistinct() and entry.resource.ofType(Bundle).where(type = 'document').select((identifier.system.toString().length().toString() & ':' & identifier.system.toString()) & (identifier.value.toString().length().toString() & ':' & identifier.value.toString())).isDistinct() and entry.resource.ofType(DocumentReference).count() = entry.resource.ofType(Bundle).where(type = 'document').count()",
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
        "human" : "Los pares system y value de masterIdentifier y Bundle.identifier coinciden en ambos sentidos. Junto con la unicidad y cardinalidad de hcen-publication-fhir-links impide asociaciones ambiguas y documentos huérfanos, independientemente de las URL.",
        "expression" : "entry.resource.ofType(DocumentReference).select((masterIdentifier.system.toString().length().toString() & ':' & masterIdentifier.system.toString()) & (masterIdentifier.value.toString().length().toString() & ':' & masterIdentifier.value.toString())).subsetOf(%context.entry.resource.ofType(Bundle).where(type = 'document').select((identifier.system.toString().length().toString() & ':' & identifier.system.toString()) & (identifier.value.toString().length().toString() & ':' & identifier.value.toString()))) and entry.resource.ofType(Bundle).where(type = 'document').select((identifier.system.toString().length().toString() & ':' & identifier.system.toString()) & (identifier.value.toString().length().toString() & ':' & identifier.value.toString())).subsetOf(%context.entry.resource.ofType(DocumentReference).select((masterIdentifier.system.toString().length().toString() & ':' & masterIdentifier.system.toString()) & (masterIdentifier.value.toString().length().toString() & ':' & masterIdentifier.value.toString())))",
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
      "short" : "Acción transaccional para procesar la entrada",
      "definition" : "Entrada POST del intercambio transaccional. Plataforma registra los metadatos en XDS sin crear un recurso FHIR persistente; los documentos permanecen en el prestador.",
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
