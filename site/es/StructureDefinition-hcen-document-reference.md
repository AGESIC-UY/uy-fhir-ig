# Perfil Document Reference HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil de los recursos: Perfil Document Reference HCEN 

 
Referencia documental HCEN con las representaciones CDA y FHIR. Toma IHE MHD como referencia de diseño, sin declarar conformidad con sus perfiles oficiales. 

**Usages:**

* Use this Profile: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Refer to this Profile: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md) and [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md)
* Examples for this Profile: [DocumentReference/hcen-referencia-ejemplo](DocumentReference-hcen-referencia-ejemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-document-reference)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

** Summary **

Mandatory: 20 elements
 Must-Support: 6 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Identificador documental HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier)](StructureDefinition-hcen-document-identifier.md)
* [EntryUUID de DocumentReference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference-identifier)](StructureDefinition-hcen-document-reference-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensions**

This structure refers to these extensions:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id](StructureDefinition-ext-repository-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-amount-of-studies](StructureDefinition-ext-amount-of-studies.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-scanned-document](StructureDefinition-ext-scanned-document.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-telemedicine-modality](StructureDefinition-ext-telemedicine-modality.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-funder](StructureDefinition-ext-funder.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of](StructureDefinition-ext-by-order-of.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id](StructureDefinition-ext-binary-resource-id.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DocumentReference.identifier

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

#### Terminology Bindings (Differential)

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

** Summary **

Mandatory: 20 elements
 Must-Support: 6 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Identificador documental HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier)](StructureDefinition-hcen-document-identifier.md)
* [EntryUUID de DocumentReference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference-identifier)](StructureDefinition-hcen-document-reference-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensions**

This structure refers to these extensions:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id](StructureDefinition-ext-repository-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-amount-of-studies](StructureDefinition-ext-amount-of-studies.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-scanned-document](StructureDefinition-ext-scanned-document.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-telemedicine-modality](StructureDefinition-ext-telemedicine-modality.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-funder](StructureDefinition-ext-funder.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of](StructureDefinition-ext-by-order-of.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id](StructureDefinition-ext-binary-resource-id.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DocumentReference.identifier

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-document-reference.csv), [Excel](../StructureDefinition-hcen-document-reference.xlsx), [Schematron](../StructureDefinition-hcen-document-reference.sch) 

### Notas:

### Identificadores y representaciones

masterIdentifier conserva el OID de la versión documental. identifier[entryUUID] contiene el identificador técnico opcional con formato `urn:uuid:1.[oid_documento_clinico]` y utiliza HCENDocumentReferenceIdentifier, derivado de IHE MHD EntryUUID Identifier.

attachment.url refiere al documento FHIR y la extensión binary a su CDA. Los campos de formato, tamaño y hash describen la representación FHIR. Ver [Identificadores HCEN](hcen-identificadores.md) y [Publicación](hcen-iti-65.md).

El perfil de metadatos admite relaciones históricas; el sobre de alta excluye replaces. La pertenencia de referencias históricas al envío no se valida mediante expansión recursiva de todos los documentos.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-document-reference",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference",
  "version" : "0.1.0",
  "name" : "HCENDocumentReference",
  "title" : "Perfil Document Reference HCEN",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Referencia documental HCEN con las representaciones CDA y FHIR. Toma IHE MHD como referencia de diseño, sin declarar conformidad con sus perfiles oficiales.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference",
      "short" : "Perfil Document Reference HCEN",
      "definition" : "Referencia documental HCEN con las representaciones CDA y FHIR. Toma IHE MHD como referencia de diseño, sin declarar conformidad con sus perfiles oficiales.",
      "constraint" : [{
        "key" : "hcen-reference-unique-id",
        "severity" : "error",
        "human" : "Si se repite el identificador documental como identificador usual, debe coincidir con masterIdentifier.",
        "expression" : "identifier.where(use = 'usual').all(system = %resource.masterIdentifier.system and value = %resource.masterIdentifier.value)",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"
      }]
    },
    {
      "id" : "DocumentReference.id",
      "path" : "DocumentReference.id",
      "short" : "ID lógico de este artefacto.",
      "definition" : "ID lógico de este artefacto."
    },
    {
      "id" : "DocumentReference.meta",
      "path" : "DocumentReference.meta",
      "short" : "Metadatos sobre el recurso.",
      "definition" : "Metadatos sobre el recurso."
    },
    {
      "id" : "DocumentReference.implicitRules",
      "path" : "DocumentReference.implicitRules",
      "short" : "Conjunto de reglas bajo las cuales se creó este contenido.",
      "definition" : "Conjunto de reglas bajo las cuales se creó este contenido."
    },
    {
      "id" : "DocumentReference.language",
      "path" : "DocumentReference.language",
      "short" : "Idioma del contenido del recurso.",
      "definition" : "Idioma del contenido del recurso."
    },
    {
      "id" : "DocumentReference.text",
      "path" : "DocumentReference.text",
      "short" : "Resumen del recurso en texto para interpretación humana.",
      "definition" : "Resumen del recurso en texto para interpretación humana."
    },
    {
      "id" : "DocumentReference.contained",
      "path" : "DocumentReference.contained",
      "short" : "Recursos integrados en línea (inline).",
      "definition" : "Recursos integrados en línea (inline)."
    },
    {
      "id" : "DocumentReference.extension",
      "path" : "DocumentReference.extension",
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
      "min" : 1
    },
    {
      "id" : "DocumentReference.extension:homeCommunityId",
      "path" : "DocumentReference.extension",
      "sliceName" : "homeCommunityId",
      "short" : "Comunidad de origen del documento.",
      "definition" : "Comunidad de origen del documento.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id"]
      }]
    },
    {
      "id" : "DocumentReference.extension:repositoryId",
      "path" : "DocumentReference.extension",
      "sliceName" : "repositoryId",
      "short" : "OID del repositorio que conserva el documento.",
      "definition" : "OID del repositorio que conserva el documento.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id"]
      }]
    },
    {
      "id" : "DocumentReference.extension:amountOfStudies",
      "path" : "DocumentReference.extension",
      "sliceName" : "amountOfStudies",
      "short" : "Cantidad de estudios o procedimientos diagnósticos o terapéuticos del documento.",
      "definition" : "Cantidad de estudios o procedimientos diagnósticos o terapéuticos del documento.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-amount-of-studies"]
      }]
    },
    {
      "id" : "DocumentReference.extension:scannedDocument",
      "path" : "DocumentReference.extension",
      "sliceName" : "scannedDocument",
      "short" : "Indica si el documento procede de un escaneo.",
      "definition" : "Indica si el documento procede de un escaneo.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-scanned-document"]
      }]
    },
    {
      "id" : "DocumentReference.extension:telemedicine",
      "path" : "DocumentReference.extension",
      "sliceName" : "telemedicine",
      "short" : "Modalidad del evento asistencial.",
      "definition" : "Modalidad del evento asistencial.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-telemedicine-modality"]
      }]
    },
    {
      "id" : "DocumentReference.extension:funder",
      "path" : "DocumentReference.extension",
      "sliceName" : "funder",
      "short" : "Institución que financia el acto clínico.",
      "definition" : "Institución que financia el acto clínico.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-funder"]
      }]
    },
    {
      "id" : "DocumentReference.extension:byOrderOf",
      "path" : "DocumentReference.extension",
      "sliceName" : "byOrderOf",
      "short" : "Institución que indicó realizar el acto asistencial.",
      "definition" : "Institución que indicó realizar el acto asistencial.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of"]
      }]
    },
    {
      "id" : "DocumentReference.modifierExtension",
      "path" : "DocumentReference.modifierExtension",
      "short" : "Extensiones que no pueden ser ignoradas.",
      "definition" : "Extensiones que no pueden ser ignoradas."
    },
    {
      "id" : "DocumentReference.masterIdentifier",
      "path" : "DocumentReference.masterIdentifier",
      "short" : "OID de la versión documental, compartido por FHIR y CDA.",
      "definition" : "OID de la versión documental, compartido por FHIR y CDA.",
      "min" : 1,
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier"]
      }]
    },
    {
      "id" : "DocumentReference.identifier",
      "path" : "DocumentReference.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Identificadores de negocio y técnicos de la referencia documental.",
      "definition" : "Identificadores de negocio y técnicos de la referencia documental.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.identifier:entryUUID",
      "path" : "DocumentReference.identifier",
      "sliceName" : "entryUUID",
      "short" : "EntryUUID opcional con formato urn:uuid:1.[oid_documento_clinico].",
      "definition" : "Identificador técnico opcional de la referencia documental, derivado del OID clínico con el formato urn:uuid:1.[oid_documento_clinico].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference-identifier"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.identifier:uniqueId",
      "path" : "DocumentReference.identifier",
      "sliceName" : "uniqueId",
      "short" : "Repetición opcional del OID documental.",
      "definition" : "Repetición opcional del OID documental.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "short" : "Estado de la referencia: current, superseded o entered-in-error.",
      "definition" : "Estado de la referencia: current, superseded o entered-in-error."
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "Tipo detallado del documento, correspondiente al EJE 2.",
      "definition" : "Tipo detallado del documento, correspondiente al EJE 2.",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-type-code"
      }
    },
    {
      "id" : "DocumentReference.category",
      "path" : "DocumentReference.category",
      "short" : "Tipo genérico del documento, correspondiente al EJE 1.",
      "definition" : "Tipo genérico del documento, correspondiente al EJE 1.",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-class-code"
      }
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "short" : "Paciente al que pertenece el documento.",
      "definition" : "Paciente al que pertenece el documento.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }]
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "short" : "Fecha de indexación del documento",
      "definition" : "Fecha de indexación del documento",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "short" : "Profesionales, roles u organizaciones autores del documento.",
      "definition" : "Profesionales, roles u organizaciones autores del documento.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner",
        "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role",
        "http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "short" : "Profesional, rol u organización que autentica legalmente el documento.",
      "definition" : "Profesional, rol u organización que autentica legalmente el documento.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner",
        "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role",
        "http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "short" : "Organización responsable de custodiar el documento",
      "definition" : "Organización responsable de custodiar el documento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    },
    {
      "id" : "DocumentReference.relatesTo",
      "path" : "DocumentReference.relatesTo",
      "short" : "Relaciones con otros documentos; su presencia no define un flujo de reemplazo.",
      "definition" : "Relaciones con otros documentos; su presencia no define un flujo de reemplazo.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.relatesTo.code",
      "path" : "DocumentReference.relatesTo.code",
      "definition" : "replaces | transforms | signs | appends"
    },
    {
      "id" : "DocumentReference.relatesTo.target",
      "path" : "DocumentReference.relatesTo.target",
      "short" : "Documento objetivo de la relación.",
      "definition" : "Documento objetivo de la relación.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"]
      }]
    },
    {
      "id" : "DocumentReference.description",
      "path" : "DocumentReference.description",
      "short" : "Descripción legible del documento.",
      "definition" : "Descripción legible del documento."
    },
    {
      "id" : "DocumentReference.securityLabel",
      "path" : "DocumentReference.securityLabel",
      "short" : "Etiquetas de seguridad y confidencialidad del documento.",
      "definition" : "Etiquetas de seguridad y confidencialidad del documento.",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/security-labels"
      }
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "short" : "El documento referenciado.",
      "definition" : "El documento referenciado.",
      "max" : "1"
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "short" : "Dónde acceder al documento (URL o Datos).",
      "definition" : "Dónde acceder al documento (URL o Datos)."
    },
    {
      "id" : "DocumentReference.content.attachment.extension",
      "path" : "DocumentReference.content.attachment.extension",
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment.extension:binary",
      "path" : "DocumentReference.content.attachment.extension",
      "sliceName" : "binary",
      "short" : "Referencia al Binary que contiene el CDA del mismo documento.",
      "definition" : "Referencia al Binary que contiene el CDA del mismo documento.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id"]
      }]
    },
    {
      "id" : "DocumentReference.content.attachment.extension:binary.value[x].reference",
      "path" : "DocumentReference.content.attachment.extension.value[x].reference",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "short" : "MIME del Bundle FHIR recuperable mediante attachment.url",
      "definition" : "MIME del Bundle FHIR recuperable mediante attachment.url",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/hcen-fhir-serialization"
      }
    },
    {
      "id" : "DocumentReference.content.attachment.language",
      "path" : "DocumentReference.content.attachment.language",
      "short" : "Idioma del contenido documental expresado mediante BCP-47.",
      "definition" : "Idioma del contenido documental expresado mediante BCP-47.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "short" : "Datos en línea (base64).",
      "definition" : "Datos en línea (base64).",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "short" : "Referencia a la representación Bundle FHIR del documento.",
      "definition" : "Referencia a la representación Bundle FHIR del documento.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment.size",
      "path" : "DocumentReference.content.attachment.size",
      "short" : "Tamaño del Bundle FHIR recuperable mediante attachment.url",
      "definition" : "Tamaño del Bundle FHIR recuperable mediante attachment.url"
    },
    {
      "id" : "DocumentReference.content.attachment.hash",
      "path" : "DocumentReference.content.attachment.hash",
      "short" : "Hash del Bundle FHIR recuperable mediante attachment.url",
      "definition" : "Hash del Bundle FHIR recuperable mediante attachment.url"
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "short" : "Título del documento para su presentación.",
      "definition" : "Título del documento para su presentación."
    },
    {
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "short" : "Fecha y hora de creación del documento referenciado.",
      "definition" : "Fecha y hora de creación del documento referenciado.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "short" : "Reglas de formato del Bundle FHIR recuperable mediante attachment.url",
      "definition" : "Reglas de formato del Bundle FHIR recuperable mediante attachment.url",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-format-code"
      }
    },
    {
      "id" : "DocumentReference.context",
      "path" : "DocumentReference.context",
      "short" : "Contexto clínico del documento.",
      "definition" : "Contexto clínico del documento.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "short" : "Contexto (episodio/visita) del documento.",
      "definition" : "Contexto (episodio/visita) del documento."
    },
    {
      "id" : "DocumentReference.context.event",
      "path" : "DocumentReference.context.event",
      "short" : "Actos clínicos principales documentados.",
      "definition" : "Actos clínicos principales documentados."
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "short" : "Tiempo de servicio que está siendo documentado",
      "definition" : "Tiempo de servicio que está siendo documentado",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
      "short" : "Tipo de centro de salud donde se atendió al paciente.",
      "definition" : "Tipo de centro de salud donde se atendió al paciente.",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/c80-facilitycodes"
      }
    },
    {
      "id" : "DocumentReference.context.practiceSetting",
      "path" : "DocumentReference.context.practiceSetting",
      "short" : "Servicio médico del documento, correspondiente al EJE 3.",
      "definition" : "Servicio médico del documento, correspondiente al EJE 3.",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-practice-setting"
      }
    },
    {
      "id" : "DocumentReference.context.sourcePatientInfo",
      "path" : "DocumentReference.context.sourcePatientInfo",
      "short" : "Datos del paciente tal como los informa el prestador de origen.",
      "definition" : "Datos del paciente tal como los informa el prestador de origen.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }]
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
      "short" : "Identificadores o recursos relacionados con el documento.",
      "definition" : "Identificadores o recursos relacionados con el documento."
    }]
  }
}

```
