# HCEN Dosificación - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: HCEN Dosificación 

**Usos:**

* Utilizar este perfil de tipo de datos: [HCEN Prescripción de Medicación](StructureDefinition-hcen-medication-request.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-dosage)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Dosage](http://hl7.org/fhir/R4/datatypes.html#Dosage) .

#### Bindings terminológicos (diferencial)

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Dosage](http://hl7.org/fhir/R4/datatypes.html#Dosage) .

** Resumen **

Prohibidos: 7 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Dosage.asNeeded[x]
* El elemento 1 se divide en slices según el valor de Dosage.doseAndRate.dose[x]
* El elemento 1 se divide en slices según el valor de Dosage.doseAndRate.rate[x]

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Dosage](http://hl7.org/fhir/R4/datatypes.html#Dosage) .

#### Bindings terminológicos (diferencial)

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Dosage](http://hl7.org/fhir/R4/datatypes.html#Dosage) .

** Resumen **

Prohibidos: 7 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

Esta estructura define los siguientes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* El elemento 1 se divide en slices según el valor de Dosage.asNeeded[x]
* El elemento 1 se divide en slices según el valor de Dosage.doseAndRate.dose[x]
* El elemento 1 se divide en slices según el valor de Dosage.doseAndRate.rate[x]

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-dosage.csv), [Excel](../StructureDefinition-hcen-dosage.xlsx), [Schematron](../StructureDefinition-hcen-dosage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-dosage",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-dosage",
  "version" : "0.2.0",
  "name" : "HCENDosage",
  "title" : "HCEN Dosificación",
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
  "description" : "Pauta de dosificación reutilizable para las prescripciones y administraciones de medicación registradas en la Hoja de Consulta No Urgente (CNU).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "HCENDosageToCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)",
    "comment" : "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYDosage."
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Dosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage",
      "path" : "Dosage",
      "short" : "Pauta de dosificación para una Consulta No Urgente",
      "definition" : "Dosage que representa la pauta de administración asociada a medicación indicada en una Hoja de Consulta No Urgente de HCEN."
    },
    {
      "id" : "Dosage.modifierExtension",
      "path" : "Dosage.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Dosage.sequence",
      "path" : "Dosage.sequence",
      "short" : "Orden relativo de la indicación",
      "definition" : "Orden relativo de las indicaciones asociadas a la prescripción."
    },
    {
      "id" : "Dosage.text",
      "path" : "Dosage.text",
      "short" : "Representación textual de la pauta de dosificación",
      "definition" : "Es una representación textual de toda la pauta de dosificación (dosis, vía, frecuencia, etc.)."
    },
    {
      "id" : "Dosage.additionalInstruction",
      "path" : "Dosage.additionalInstruction",
      "max" : "0"
    },
    {
      "id" : "Dosage.patientInstruction",
      "path" : "Dosage.patientInstruction",
      "short" : "Instrucción adicional dirigida al paciente",
      "definition" : "Es una instrucción adicional específicamente dirigida al paciente.",
      "mapping" : [{
        "identity" : "HCENDosageToCDA",
        "map" : "section/entry/substanceAdministration[@moodCode='INT']/entryRelationship/act[code/@code='7891000179103']/text"
      }]
    },
    {
      "id" : "Dosage.timing",
      "path" : "Dosage.timing",
      "short" : "Frecuencia de administración",
      "definition" : "Indica cuándo y con qué frecuencia debe administrarse el medicamento.",
      "mapping" : [{
        "identity" : "HCENDosageToCDA",
        "map" : "section/entry/substanceAdministration[@moodCode='INT']/entryRelationship/observation[code/@code='224851000179103']/value"
      }]
    },
    {
      "id" : "Dosage.asNeeded[x]",
      "path" : "Dosage.asNeeded[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Dosage.asNeeded[x]:asNeededBoolean",
      "path" : "Dosage.asNeeded[x]",
      "sliceName" : "asNeededBoolean",
      "short" : "Administración según necesidad",
      "definition" : "Indica que la medicación se debe tomar cuando se considere necesario.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Dosage.asNeeded[x]:asNeededCodeableConcept",
      "path" : "Dosage.asNeeded[x]",
      "sliceName" : "asNeededCodeableConcept",
      "short" : "Condición clínica que determina la necesidad",
      "definition" : "Indica que la medicación se debe tomar cuando se cumpla la condición clínica modelada.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Dosage.site",
      "path" : "Dosage.site",
      "short" : "Sitio anatómico donde debe administrarse la medicación (p.ej. brazo izquierdo, vena antecubital derecha, muslo)",
      "definition" : "Sitio anatómico donde debe administrarse la medicación (p.ej. brazo izquierdo, vena antecubital derecha, muslo)",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-sitio-administracion"
      }
    },
    {
      "id" : "Dosage.route",
      "path" : "Dosage.route",
      "short" : "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)",
      "definition" : "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-via-administracion"
      }
    },
    {
      "id" : "Dosage.method",
      "path" : "Dosage.method",
      "max" : "0"
    },
    {
      "id" : "Dosage.doseAndRate.type",
      "path" : "Dosage.doseAndRate.type",
      "max" : "0"
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]",
      "path" : "Dosage.doseAndRate.dose[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Cantidad de medicamento por dosis",
      "definition" : "Cantidad de medicamento que se administra en cada dosis."
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange",
      "path" : "Dosage.doseAndRate.dose[x]",
      "sliceName" : "doseRange",
      "short" : "Rango de cantidad por dosis",
      "definition" : "Se utiliza cuando la cantidad por administración no es un valor único, sino que puede variar dentro de un rango. Ejemplo: Tomar entre 5 y 10 mL por dosis, según necesidad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "Dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "short" : "Cantidad exacta por dosis",
      "definition" : "Se utiliza para indicar una cantidad exacta de medicamento que debe administrarse en cada dosis. Ejemplo: Administrar 500 mg por dosis.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]",
      "path" : "Dosage.doseAndRate.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Velocidad de administración",
      "definition" : "Permite indicar la velocidad a la que debe administrarse el medicamento."
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRatio",
      "short" : "Velocidad de administración como relación",
      "definition" : "Permite indicar la velocidad de administración mediante una relación (p.ej. 500 mL cada 4 horas).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "short" : "Rango de velocidad de administración",
      "definition" : "Se utiliza cuando la velocidad de administración puede variar entre un valor mínimo y uno máximo, en lugar de tener una velocidad única. Ejemplo: Administrar por infusión intravenosa a una velocidad de entre 50 y 100 mL/h.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "short" : "Velocidad de administración exacta",
      "definition" : "Permite indicar una velocidad específica de administración del medicamento, expresada como una cantidad por unidad de tiempo. Ejemplo: administrar por infusión intravenosa a una velocidad de 100 mL/h.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Dosage.maxDosePerPeriod",
      "path" : "Dosage.maxDosePerPeriod",
      "max" : "0"
    },
    {
      "id" : "Dosage.maxDosePerAdministration",
      "path" : "Dosage.maxDosePerAdministration",
      "max" : "0"
    },
    {
      "id" : "Dosage.maxDosePerLifetime",
      "path" : "Dosage.maxDosePerLifetime",
      "max" : "0"
    }]
  }
}

```
