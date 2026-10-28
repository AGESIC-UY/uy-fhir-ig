# Segundo Apellido - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensión: Segundo Apellido 

**Contexto de uso**

**Información de uso**

**Usos:**

* Utilizar esta extensión: [Nombre de Persona (Uruguay)](StructureDefinition-uy-human-name.md)
* Ejemplos de esta extensión: [Bundle/hcen-cnu-medicina-general-bundle](Bundle-hcen-cnu-medicina-general-bundle.md), [Bundle/hcen-provide-document-bundle-cnu-asse](Bundle-hcen-provide-document-bundle-cnu-asse.md), [Organización ABC](Organization-uy-organizacion-abc-completa.md), [Patient/hcen-paciente-gonzalez](Patient-hcen-paciente-gonzalez.md)... Show 5 more, [Patient/uy-paciente-perez-completo](Patient-uy-paciente-perez-completo.md), [Patient/uy-paciente-perez](Patient-uy-paciente-perez.md), [Practitioner/hcen-profesional-rodriguez](Practitioner-hcen-profesional-rodriguez.md), [Practitioner/uy-profesional-sanchez-completo](Practitioner-uy-profesional-sanchez-completo.md) and [Practitioner/uy-profesional-sanchez](Practitioner-uy-profesional-sanchez.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/ext-segundo-apellido)

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

Extensión simple de tipo string: Segundo apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad.

 **Vista diferencial** 

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

 **Vista instantánea** 

#### Restricciones

Esta estructura se deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) .

** Resumen **

Extensión simple de tipo string: Segundo apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad.

 

Otras representaciones de perfil: [CSV](../StructureDefinition-ext-segundo-apellido.csv), [Excel](../StructureDefinition-ext-segundo-apellido.xlsx), [Schematron](../StructureDefinition-ext-segundo-apellido.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-segundo-apellido",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido",
  "version" : "0.2.0",
  "name" : "SegundoApellido",
  "title" : "Segundo Apellido",
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
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
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
