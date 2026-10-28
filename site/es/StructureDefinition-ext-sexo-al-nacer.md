# Sexo al nacer - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: Sexo al nacer 

**Contexto de uso**

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-sexo-al-nacer)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [RecordedSexOrGender](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-recordedSexOrGender.html) .

#### Bindings terminológicos (diferencial)

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [RecordedSexOrGender](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-recordedSexOrGender.html) .

** Resumen **

Complex Extension: Extensión para representar el sexo asignado al nacer de una persona. Hereda de la extensión de HL7 individual-recordedSexOrGender.

 **Vista diferencial** 

Esta estructura se deriva de [RecordedSexOrGender](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-recordedSexOrGender.html) .

#### Bindings terminológicos (diferencial)

 **Vista instantánea** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [RecordedSexOrGender](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-individual-recordedSexOrGender.html) .

** Resumen **

Complex Extension: Extensión para representar el sexo asignado al nacer de una persona. Hereda de la extensión de HL7 individual-recordedSexOrGender.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-sexo-al-nacer.csv), [Excel](../StructureDefinition-ext-sexo-al-nacer.xlsx), [Schematron](../StructureDefinition-ext-sexo-al-nacer.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-sexo-al-nacer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-sexo-al-nacer",
  "version" : "0.2.0",
  "name" : "SexoAlNacer",
  "title" : "Sexo al nacer",
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
  "description" : "Extensión para representar el sexo asignado al nacer de una persona. Hereda de la extensión de HL7 individual-recordedSexOrGender.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Sexo al nacer del paciente",
      "definition" : "Sexo asignado al nacer del paciente, según lo informado por el paciente o su representante legal, independientemente de su identidad de género actual."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:value",
      "path" : "Extension.extension",
      "sliceName" : "value",
      "short" : "Valor del sexo al nacer del paciente"
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
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-sexo-biologico"
      }
    },
    {
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "short" : "Tipo del concepto de sexo o género (fijo: \"Sex assigned at birth\")",
      "min" : 1
    },
    {
      "id" : "Extension.extension:type.url",
      "path" : "Extension.extension.url",
      "short" : "Valor fijo: \"type\""
    },
    {
      "id" : "Extension.extension:type.value[x]",
      "path" : "Extension.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76689-9",
          "display" : "Sex assigned at birth"
        }]
      }
    }]
  }
}

```
