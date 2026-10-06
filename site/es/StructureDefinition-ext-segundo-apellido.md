# Segundo Apellido - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensión: Segundo Apellido 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Nombre de Persona (Uruguay)](StructureDefinition-uy-human-name.md)
* Examples for this Extension: [Patient/EjemploPacienteUY](Patient-EjemploPacienteUY.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-segundo-apellido)

### Visiones formales del contenido de la ampliación

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type string: Segundo apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Constraints

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Summary **

Simple Extension with the type string: Segundo apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-segundo-apellido.csv), [Excel](../StructureDefinition-ext-segundo-apellido.xlsx), [Schematron](../StructureDefinition-ext-segundo-apellido.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-segundo-apellido",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido",
  "version" : "0.1.0",
  "name" : "SegundoApellido",
  "title" : "Segundo Apellido",
  "status" : "draft",
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Segundo apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad.",
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
    "expression" : "HumanName.family"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Segundo Apellido",
      "definition" : "Segundo apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad."
    },
    {
      "id" : "Extension.id",
      "path" : "Extension.id",
      "short" : "Identificador del elemento dentro del recurso.",
      "definition" : "Identificador del elemento dentro del recurso."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "short" : "URL canónica que identifica la extensión.",
      "definition" : "URL canónica que identifica la extensión.",
      "fixedUri" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Segundo apellido de la persona.",
      "definition" : "Segundo apellido de la persona.",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
