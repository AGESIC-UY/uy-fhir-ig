# Pronombres - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: Pronombres 

**Contexto de uso**

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-pronombres)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [Pronouns](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-pronouns.html) .

#### Bindings terminológicos (diferencial)

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Pronouns](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-pronouns.html) .

** Resumen **

Complex Extension: Extensión para representar los pronombres de una persona. Hereda de la extensión de HL7 individual-pronouns.

 **Vista diferencial** 

Esta estructura se deriva de [Pronouns](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-pronouns.html) .

#### Bindings terminológicos (diferencial)

 **Vista instantánea** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Pronouns](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-pronouns.html) .

** Resumen **

Complex Extension: Extensión para representar los pronombres de una persona. Hereda de la extensión de HL7 individual-pronouns.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-pronombres.csv), [Excel](../StructureDefinition-ext-pronombres.xlsx), [Schematron](../StructureDefinition-ext-pronombres.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-pronombres",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-pronombres",
  "version" : "0.2.0",
  "name" : "Pronombres",
  "title" : "Pronombres",
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
  "description" : "Extensión para representar los pronombres de una persona. Hereda de la extensión de HL7 individual-pronouns.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Pronombres con los que se debe referir al paciente",
      "definition" : "Pronombres con los que se debe referir al paciente, según lo informado por el paciente o su representante legal. Esta extensión se utiliza para capturar los pronombres preferidos de una persona, independientemente de su sexo biológico o identidad de género."
    },
    {
      "id" : "Extension.extension:value",
      "path" : "Extension.extension",
      "sliceName" : "value",
      "short" : "Valor de los pronombres del paciente"
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
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-pronombres-uy"
      }
    }]
  }
}

```
