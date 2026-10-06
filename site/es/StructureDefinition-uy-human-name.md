# Nombre de Persona (Uruguay) - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Nombre de Persona (Uruguay) 

**Usages:**

* Use this DataType Profile: [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-human-name)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

** Summary **

**Extensions**

This structure refers to these extensions:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido](StructureDefinition-ext-primer-apellido.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido](StructureDefinition-ext-segundo-apellido.md)

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

** Summary **

**Extensions**

This structure refers to these extensions:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido](StructureDefinition-ext-primer-apellido.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido](StructureDefinition-ext-segundo-apellido.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-human-name.csv), [Excel](../StructureDefinition-uy-human-name.xlsx), [Schematron](../StructureDefinition-uy-human-name.sch) 

### Notas:

### Representación de los apellidos

El campo `family` conserva los apellidos juntos, mientras que las extensiones permiten distinguir sus componentes. En el [ejemplo de paciente](Patient-EjemploPacienteUY.md), `family` contiene «Pérez Rodríguez», la extensión de primer apellido contiene «Pérez» y la de segundo apellido, «Rodríguez». Ambas extensiones son opcionales; su definición no implica que todas las personas deban tener dos apellidos.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-human-name",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name",
  "version" : "0.1.0",
  "name" : "UYHumanName",
  "title" : "Nombre de Persona (Uruguay)",
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
  "description" : "Nombre de una persona optimizado para su visualización y almacenamiento estructurado, con los apellidos discriminados mediante extensiones.",
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
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName",
      "path" : "HumanName",
      "short" : "Nombre de Persona (Uruguay)",
      "definition" : "Nombre de una persona optimizado para su visualización y almacenamiento estructurado, con los apellidos discriminados mediante extensiones."
    },
    {
      "id" : "HumanName.id",
      "path" : "HumanName.id",
      "short" : "ID único del elemento dentro del recurso.",
      "definition" : "ID único del elemento dentro del recurso."
    },
    {
      "id" : "HumanName.extension",
      "path" : "HumanName.extension",
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones."
    },
    {
      "id" : "HumanName.use",
      "path" : "HumanName.use",
      "short" : "El propósito de uso de este nombre.",
      "definition" : "El propósito de uso de este nombre.",
      "comment" : "Las aplicaciones pueden considerar vigente un nombre salvo que se indique explícitamente que es temporal o anterior.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "NameUse"
        }],
        "strength" : "required",
        "description" : "Propósito de uso del nombre.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/name-use|4.0.1"
      }
    },
    {
      "id" : "HumanName.text",
      "path" : "HumanName.text",
      "short" : "Especifica el nombre completo tal como debe ser mostrado.",
      "definition" : "Especifica el nombre completo tal como debe ser mostrado.",
      "comment" : "Pueden incluirse tanto el nombre completo como sus partes. Al actualizar el nombre, las aplicaciones deben asegurar que el texto no contenga información que no esté representada en las partes."
    },
    {
      "id" : "HumanName.family",
      "path" : "HumanName.family",
      "short" : "Apellidos de la persona.",
      "definition" : "Apellidos de la persona.",
      "comment" : "Los apellidos pueden descomponerse en partes mediante extensiones, según las convenciones culturales aplicables."
    },
    {
      "id" : "HumanName.family.extension",
      "path" : "HumanName.family.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Contenido adicional para el campo family.",
      "definition" : "Contenido adicional para el campo family."
    },
    {
      "id" : "HumanName.family.extension:primerApellido",
      "path" : "HumanName.family.extension",
      "sliceName" : "primerApellido",
      "short" : "Primer apellido de la persona.",
      "definition" : "Primer apellido de la persona.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido"]
      }]
    },
    {
      "id" : "HumanName.family.extension:segundoApellido",
      "path" : "HumanName.family.extension",
      "sliceName" : "segundoApellido",
      "short" : "Segundo apellido de la persona.",
      "definition" : "Segundo apellido de la persona.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido"]
      }]
    },
    {
      "id" : "HumanName.given",
      "path" : "HumanName.given",
      "short" : "Nombres de pila en su orden real.",
      "definition" : "Lista ordenada de nombres de pila. given[0] representa el primer nombre, given[1] el segundo nombre y así sucesivamente.",
      "comment" : "El orden de los valores es significativo y debe conservarse: el primer elemento corresponde al primer nombre de la persona, el segundo al segundo nombre y así sucesivamente."
    },
    {
      "id" : "HumanName.prefix",
      "path" : "HumanName.prefix",
      "short" : "Partes del nombre que van antes del mismo.",
      "definition" : "Partes del nombre que van antes del mismo."
    },
    {
      "id" : "HumanName.suffix",
      "path" : "HumanName.suffix",
      "short" : "Partes del nombre que van después del mismo.",
      "definition" : "Partes del nombre que van después del mismo."
    },
    {
      "id" : "HumanName.period",
      "path" : "HumanName.period",
      "short" : "Periodo de validez del nombre.",
      "definition" : "Periodo de validez del nombre."
    }]
  }
}

```
