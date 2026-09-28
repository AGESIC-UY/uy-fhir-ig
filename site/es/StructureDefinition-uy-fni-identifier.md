# Identificador Nacional Extranjero - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Identificador Nacional Extranjero 

 
Identificador nacional de una persona emitido por otro país. 

**Usages:**

* Use this DataType Profile: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-fni-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Summary **

Mandatory: 3 elements

**Structures**

This structure refers to these other structures:

* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Summary **

Mandatory: 3 elements

**Structures**

This structure refers to these other structures:

* [Perfil Organización para Uruguay (http://fhir.hcen.gub.uy/StructureDefinition/uy-organization)](StructureDefinition-uy-organization.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-fni-identifier.csv), [Excel](../StructureDefinition-uy-fni-identifier.xlsx), [Schematron](../StructureDefinition-uy-fni-identifier.sch) 

### Notas:

Para un documento nacional argentino, `system` puede declarar `urn:oid:2.16.858.1.032.68909` y `value` contiene el número del documento. El ejemplo es ilustrativo: el sistema emisor se determina según el organismo que expidió el identificador.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-fni-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-fni-identifier",
  "version" : "0.1.0",
  "name" : "UYFNIIdentifier",
  "title" : "Identificador Nacional Extranjero",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Identificador nacional de una persona emitido por otro país.",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Identificador Nacional Extranjero",
      "definition" : "Identificador nacional de una persona emitido por otro país; el sistema no se fija porque depende del organismo emisor."
    },
    {
      "id" : "Identifier.id",
      "path" : "Identifier.id",
      "short" : "ID lógico de este artefacto.",
      "definition" : "ID lógico de este artefacto."
    },
    {
      "id" : "Identifier.extension",
      "path" : "Identifier.extension",
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones."
    },
    {
      "id" : "Identifier.use",
      "path" : "Identifier.use",
      "short" : "El propósito o estatus de este identificador.",
      "definition" : "El propósito o estatus de este identificador.",
      "comment" : "Las aplicaciones pueden considerar permanente un identificador salvo que se indique explícitamente que es temporal.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "IdentifierUse"
        }],
        "strength" : "required",
        "description" : "Propósito de uso del identificador.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"
      }
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Codificación del tipo de identificador.",
      "definition" : "Codificación del tipo de identificador.",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI",
          "display" : "National unique individual identifier"
        }]
      },
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "IdentifierType"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
          "valueBoolean" : true
        }],
        "strength" : "extensible",
        "description" : "Categoría del identificador, utilizada para elegirlo según el propósito.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-type"
      }
    },
    {
      "id" : "Identifier.type.id",
      "path" : "Identifier.type.id",
      "short" : "Identificador del elemento.",
      "definition" : "Identificador del elemento para referencias internas dentro del recurso."
    },
    {
      "id" : "Identifier.type.extension",
      "path" : "Identifier.type.extension",
      "short" : "Extensiones del elemento.",
      "definition" : "Información adicional definida mediante extensiones."
    },
    {
      "id" : "Identifier.type.coding",
      "path" : "Identifier.type.coding",
      "short" : "Codificación del concepto.",
      "definition" : "Representación del concepto mediante un código de un sistema terminológico."
    },
    {
      "id" : "Identifier.type.coding.id",
      "path" : "Identifier.type.coding.id",
      "short" : "Identificador del elemento.",
      "definition" : "Identificador del elemento para referencias internas dentro del recurso."
    },
    {
      "id" : "Identifier.type.coding.extension",
      "path" : "Identifier.type.coding.extension",
      "short" : "Extensiones del elemento.",
      "definition" : "Información adicional definida mediante extensiones."
    },
    {
      "id" : "Identifier.type.coding.system",
      "path" : "Identifier.type.coding.system",
      "short" : "Sistema de codificación.",
      "definition" : "URI que identifica el sistema terminológico que define el código."
    },
    {
      "id" : "Identifier.type.coding.version",
      "path" : "Identifier.type.coding.version",
      "short" : "Versión del sistema de codificación.",
      "definition" : "Versión del sistema terminológico utilizada para interpretar el código."
    },
    {
      "id" : "Identifier.type.coding.code",
      "path" : "Identifier.type.coding.code",
      "short" : "Código del concepto.",
      "definition" : "Símbolo definido por el sistema terminológico."
    },
    {
      "id" : "Identifier.type.coding.display",
      "path" : "Identifier.type.coding.display",
      "short" : "Texto asociado al código.",
      "definition" : "Representación legible del código definida por el sistema terminológico."
    },
    {
      "id" : "Identifier.type.coding.userSelected",
      "path" : "Identifier.type.coding.userSelected",
      "short" : "Código seleccionado por el usuario.",
      "definition" : "Indica si el usuario seleccionó directamente esta codificación."
    },
    {
      "id" : "Identifier.type.text",
      "path" : "Identifier.type.text",
      "short" : "Representación textual del concepto.",
      "definition" : "Texto que expresa el significado del concepto."
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "Namespace/URI que define de manera unívoca el sistema emisor del identificador.",
      "definition" : "Namespace/URI que define de manera unívoca el sistema emisor del identificador.",
      "comment" : "Identifier.system distingue siempre entre mayúsculas y minúsculas.",
      "min" : 1,
      "example" : [{
        "label" : "DNI Argentino",
        "valueString" : "urn:oid:2.16.858.1.032.68909"
      }]
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "El valor alfanumérico o numérico único del identificador.",
      "definition" : "El valor alfanumérico o numérico único del identificador.",
      "min" : 1
    },
    {
      "id" : "Identifier.period",
      "path" : "Identifier.period",
      "short" : "Periodo de validez del identificador.",
      "definition" : "Periodo de validez del identificador."
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "short" : "Organización que emite, administra o es responsable del identificador.",
      "definition" : "Organización que emite, administra o es responsable del identificador.",
      "comment" : "La organización emisora puede representarse únicamente mediante display, sin incluir reference.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-organization"]
      }]
    }]
  }
}

```
