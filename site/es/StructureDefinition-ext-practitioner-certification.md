# Certificación del Profesional - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: Certificación del Profesional 

**Contexto de uso**

Esta extensión se mantiene definida, pero no se incorpora a [HCENPractitioner](StructureDefinition-hcen-practitioner.md) ni a otro perfil hasta que se acuerde cómo representar su contexto documental.

Cuando la extensión está presente, `valueBoolean` es obligatorio. El valor `false` no equivale a omitir un dato desconocido.

**Información de uso**

**Usos:**

* Ningún perfil de esta guía utiliza esta extensión

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-practitioner-certification)

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

Extensión simple de tipo boolean: Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo boolean: Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-practitioner-certification.csv), [Excel](../StructureDefinition-ext-practitioner-certification.xlsx), [Schematron](../StructureDefinition-ext-practitioner-certification.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-practitioner-certification",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-practitioner-certification",
  "version" : "0.2.0",
  "name" : "PractitionerCertification",
  "title" : "Certificación del Profesional",
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
  "description" : "Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification.",
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
    "expression" : "Practitioner"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Certificación del Profesional",
      "definition" : "Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-practitioner-certification"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Certificación del Profesional",
      "definition" : "Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification.",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
