# ID del Recurso Binario - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: ID del Recurso Binario 

**Contexto de uso**

La extensión `binary` de `DocumentReference.content.attachment` contiene un `valueReference` al recurso [HCENCdaBinary](StructureDefinition-hcen-cda-binary.md) del prestador. Su valor no es el `id` del recurso ni los datos CDA.

Cuando la extensión está presente, su valor es obligatorio. Las ubicaciones de las representaciones se explican en [HCENDocumentReference](StructureDefinition-hcen-document-reference.md#representaciones).

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)
* Ejemplos de esta extensión: [Bundle/hcen-provide-document-bundle-cnu-asse](Bundle-hcen-provide-document-bundle-cnu-asse.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-binary-resource-id)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo Reference: Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo Reference: Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-binary-resource-id.csv), [Excel](../StructureDefinition-ext-binary-resource-id.xlsx), [Schematron](../StructureDefinition-ext-binary-resource-id.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-binary-resource-id",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id",
  "version" : "0.2.0",
  "name" : "BinaryResourceId",
  "title" : "ID del Recurso Binario",
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
  "description" : "Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference.content.attachment"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "ID del Recurso Binario",
      "definition" : "Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-binary-resource-id"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "ID del Recurso Binario",
      "definition" : "Referencia al recurso FHIR Binary del prestador que contiene la representación CDA XML del documento clínico. En HCEN ITI-65 se informa la URL HTTP(S) absoluta original de ese recurso. La recuperación del CDA se realiza mediante la URL devuelta por HCEN ITI-67, según las reglas de HCEN ITI-68.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-cda-binary"]
      }]
    }]
  }
}

```
