# Identidad de género - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: Identidad de género 

**Contexto de uso**

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-identidad-de-genero)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [PGenderIdentity](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-genderIdentity.html) .

#### Bindings terminológicos (diferencial)

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [PGenderIdentity](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-genderIdentity.html) .

** Resumen **

Complex Extension: Extensión para representar la identidad de género de una persona. Hereda de la extensión de HL7 individual-genderIdentity.

 **Vista diferencial** 

Esta estructura se deriva de [PGenderIdentity](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-genderIdentity.html) .

#### Bindings terminológicos (diferencial)

 **Vista instantánea** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [PGenderIdentity](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-genderIdentity.html) .

** Resumen **

Complex Extension: Extensión para representar la identidad de género de una persona. Hereda de la extensión de HL7 individual-genderIdentity.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-identidad-de-genero.csv), [Excel](../StructureDefinition-ext-identidad-de-genero.xlsx), [Schematron](../StructureDefinition-ext-identidad-de-genero.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-identidad-de-genero",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-identidad-de-genero",
  "version" : "0.2.0",
  "name" : "IdentidadDeGenero",
  "title" : "Identidad de género",
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
  "description" : "Extensión para representar la identidad de género de una persona. Hereda de la extensión de HL7 individual-genderIdentity.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Identidad de género del paciente",
      "definition" : "Identidad de género del paciente, según lo informado por el paciente o su representante legal. Esta extensión se utiliza para capturar la identidad de género de una persona, independientemente de su sexo biológico o pronombres preferidos."
    },
    {
      "id" : "Extension.extension:value",
      "path" : "Extension.extension",
      "sliceName" : "value",
      "short" : "Valor de la identidad de género del paciente"
    },
    {
      "id" : "Extension.extension:value.url",
      "path" : "Extension.extension.url",
      "short" : "Valor fijo: \"value\""
    },
    {
      "id" : "Extension.extension:value.value[x]",
      "path" : "Extension.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/gender-identity"
      }
    }]
  }
}

```
