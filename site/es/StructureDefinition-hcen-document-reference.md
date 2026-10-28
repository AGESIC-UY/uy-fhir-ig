# Perfil Document Reference HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil de los recursos: Perfil Document Reference HCEN 

### Identificadores y representaciones

`masterIdentifier` conserva el identificador del documento, igual que Composition.identifier y Bundle.identifier. `identifier[entryUUID]` contiene el identificador técnico obligatorio con formato `urn:uuid:1.[oid_documento_clinico]` y utiliza HCENDocumentReferenceIdentifier, derivado de IHE MHD EntryUUID Identifier. La forma 1.[oid_documento_clinico] es una convención histórica HCEN/XDS, no un UUID RFC estándar.

`identifier[uniqueId]` permite repetir el identificador de `masterIdentifier` en la colección de identificadores. Ambas ubicaciones representan el mismo documento: la primera corresponde al identificador documental principal del modelo MHD y la segunda permite expresarlo también en la colección `identifier`. La repetición es opcional; cuando se informa, `system` y `value` deben coincidir.

### Ubicaciones y representación documental

En HCEN ITI-65, `content.attachment.url` informa la URL HTTP(S) absoluta original del prestador para recuperar el Bundle documental FHIR. La extensión `binary` del Attachment contiene una referencia al recurso [HCENCdaBinary](StructureDefinition-hcen-cda-binary.md) del prestador que contiene el CDA XML del mismo documento.

El valor de `binary` es una referencia al recurso, no su `id` ni los datos CDA. Consultar [ID del Recurso Binario](StructureDefinition-ext-binary-resource-id.md).

Estas ubicaciones no son los `fullUrl` de las entradas del envío. `fullUrl` identifica cada entrada y puede utilizar `urn:uuid:`. Tampoco deben confundirse con la URL de recuperación que Plataforma devuelve en HCEN ITI-67, cuyo resultado se describe de forma general en la [transacción de consulta](hcen-iti-67.md).

Los campos `contentType`, `size`, `hash` y `format` describen la representación FHIR. En FHIR R4, `Attachment.hash` contiene un hash SHA-1 codificado en base64; no se utiliza para informar el SHA-512 del CDA descrito por la guía XDS. Ver [Identificadores HCEN](hcen-identificadores.md) y [Publicación](hcen-iti-65.md).

`context.period` debe incluir inicio y fin del servicio. El documento informa también la comunidad de origen y el repositorio mediante las extensiones `homeCommunityId` y `repositoryId`.

Las extensiones locales simples requieren un valor cuando están presentes. Una extensión booleana con valor `false` no equivale a omitir un dato desconocido; esta distinción se aplica, por ejemplo, a [Documento Escaneado](StructureDefinition-ext-scanned-document.md).

### Autoría y relaciones

La autoría incluye al menos un HCENPractitionerRole, que vincula al profesional con su organización. En publicación, los tres recursos deben estar incluidos como entradas del envío. Las referencias directas adicionales a Practitioner u Organization se admiten y se ignoran al determinar la autoría.

Las relaciones históricas pueden apuntar fuera del envío mediante `DocumentReference/{id}` o una URL HTTP(S) absoluta equivalente. El identificador es el `id` lógico del recurso; no se sustituye por el OID documental ni por `Reference.identifier`. Plataforma debe comprobar que el documento referenciado existe en HCEN. El procesamiento de reemplazos no está soportado actualmente: una relación `replaces` se ignora y no modifica el documento anterior.

**Usos:**

* Utilizar este perfil: [Envío para publicación documental HCEN](StructureDefinition-hcen-provide-document-bundle.md)
* Referencia a este perfil: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md) and [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-document-reference)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

#### Bindings terminológicos (diferencial)

#### Restricciones

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

** Resumen **

Obligatorios: 27 elementos(1 elementosos obligatorios anidados)
 Must-Support: 5 elementos
 Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador documental HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier)](StructureDefinition-hcen-document-identifier.md)
* [EntryUUID de DocumentReference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference-identifier)](StructureDefinition-hcen-document-reference-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id](StructureDefinition-ext-repository-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-amount-of-studies](StructureDefinition-ext-amount-of-studies.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-scanned-document](StructureDefinition-ext-scanned-document.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-telemedicine-modality](StructureDefinition-ext-telemedicine-modality.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-funder](StructureDefinition-ext-funder.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of](StructureDefinition-ext-by-order-of.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id](StructureDefinition-ext-binary-resource-id.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de DocumentReference.identifier
* El elemento 1 se divide en slices según el valor de DocumentReference.author

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

#### Bindings terminológicos (diferencial)

#### Restricciones

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) .

** Resumen **

Obligatorios: 27 elementos(1 elementosos obligatorios anidados)
 Must-Support: 5 elementos
 Prohibidos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Identificador documental HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier)](StructureDefinition-hcen-document-identifier.md)
* [EntryUUID de DocumentReference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference-identifier)](StructureDefinition-hcen-document-reference-identifier.md)
* [Perfil Paciente para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient)](StructureDefinition-hcen-patient.md)
* [Perfil Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner)](StructureDefinition-hcen-practitioner.md)
* [Perfil Rol del Profesional de Salud para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role)](StructureDefinition-hcen-practitioner-role.md)
* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)
* [Perfil Document Reference HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference)](StructureDefinition-hcen-document-reference.md)

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-home-community-id](StructureDefinition-ext-home-community-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-repository-id](StructureDefinition-ext-repository-id.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-amount-of-studies](StructureDefinition-ext-amount-of-studies.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-scanned-document](StructureDefinition-ext-scanned-document.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-telemedicine-modality](StructureDefinition-ext-telemedicine-modality.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-funder](StructureDefinition-ext-funder.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-by-order-of](StructureDefinition-ext-by-order-of.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id](StructureDefinition-ext-binary-resource-id.md)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de DocumentReference.identifier
* El elemento 1 se divide en slices según el valor de DocumentReference.author

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-document-reference.csv), [Excel](../StructureDefinition-hcen-document-reference.xlsx), [Schematron](../StructureDefinition-hcen-document-reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-document-reference",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference",
  "version" : "0.2.0",
  "name" : "HCENDocumentReference",
  "title" : "Perfil Document Reference HCEN",
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
      },
      {
        "key" : "hcen-document-reference-entryuuid-d",
        "severity" : "error",
        "human" : "El entryUUID de DocumentReference representa 1.[oid_documento_clinico] del masterIdentifier del mismo documento; la forma se valida por separado.",
        "expression" : "('urn:uuid:1.' & masterIdentifier.value.toString().substring(8)).subsetOf(%context.identifier.where(use = 'official' and system = 'urn:ietf:rfc:3986').value.select(toString()))",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"
      }]
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
      "min" : 2
    },
    {
      "id" : "DocumentReference.extension:homeCommunityId",
      "path" : "DocumentReference.extension",
      "sliceName" : "homeCommunityId",
      "short" : "Comunidad de origen del documento.",
      "definition" : "Comunidad de origen del documento.",
      "min" : 1,
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
      "short" : "EntryUUID con formato urn:uuid:1.[oid_documento_clinico].",
      "definition" : "Identificador técnico obligatorio de la referencia documental, derivado del OID clínico con el formato urn:uuid:1.[oid_documento_clinico].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference-identifier"]
      }]
    },
    {
      "id" : "DocumentReference.identifier:uniqueId",
      "path" : "DocumentReference.identifier",
      "sliceName" : "uniqueId",
      "short" : "Repetición opcional del OID documental.",
      "definition" : "Repetición opcional de masterIdentifier en la colección identifier. Conserva el mismo system y value; no identifica otro documento.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-identifier"]
      }],
      "mustSupport" : true
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
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "short" : "Autoría mediante rol profesional e institución.",
      "definition" : "Debe incluir al menos una referencia a HCENPractitionerRole, que vincula al profesional con su institución. Las referencias directas adicionales a Practitioner u Organization se admiten y se ignoran al determinar la autoría.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner",
        "http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role",
        "http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author:practitionerRole",
      "path" : "DocumentReference.author",
      "sliceName" : "practitionerRole",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-practitioner-role"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author:practitionerRole.reference",
      "path" : "DocumentReference.author.reference",
      "min" : 1
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"]
      }]
    },
    {
      "id" : "DocumentReference.relatesTo.target.reference",
      "path" : "DocumentReference.relatesTo.target.reference",
      "min" : 1,
      "constraint" : [{
        "key" : "hcen-historical-reference",
        "severity" : "error",
        "human" : "La referencia histórica utiliza DocumentReference/{id} o una URL HTTP(S) absoluta equivalente. La existencia del recurso en HCEN se verifica al procesar el envío.",
        "expression" : "matches('^(DocumentReference/|https?://[^/?#]+(/[^/?#]+)*/DocumentReference/)[A-Za-z0-9.-]{1,64}$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-document-reference"
      }]
    },
    {
      "id" : "DocumentReference.securityLabel",
      "path" : "DocumentReference.securityLabel",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/security-labels"
      }
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "max" : "1"
    },
    {
      "id" : "DocumentReference.content.attachment.extension",
      "path" : "DocumentReference.content.attachment.extension",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment.extension:binary",
      "path" : "DocumentReference.content.attachment.extension",
      "sliceName" : "binary",
      "short" : "Referencia al Binary del prestador que contiene el CDA XML.",
      "definition" : "En HCEN ITI-65, referencia al recurso FHIR HCENCdaBinary del prestador que contiene el CDA XML del mismo documento. La referencia informa la URL original recuperable del recurso Binary.",
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
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "short" : "URL original del Bundle FHIR del prestador en la publicación.",
      "definition" : "En HCEN ITI-65, URL HTTP(S) absoluta original del prestador para recuperar el Bundle documental FHIR. Es distinta del fullUrl de la entrada del envío y de la URL de recuperación que devuelve Plataforma en HCEN ITI-67.",
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
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
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
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.period.start",
      "path" : "DocumentReference.context.period.start",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.period.end",
      "path" : "DocumentReference.context.period.end",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
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
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-patient"]
      }]
    }]
  }
}

```
