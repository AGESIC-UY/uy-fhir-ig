# Nombre de Persona (Uruguay) - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: Nombre de Persona (Uruguay) 

**Usos:**

* Utilizar este perfil de tipo de datos: [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-human-name)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

** Resumen **

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido](StructureDefinition-ext-primer-apellido.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido](StructureDefinition-ext-segundo-apellido.md)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) .

** Resumen **

**Extensiones**

Esta estructura referencia las siguientes extensiones:

* [http://fhir.hcen.gub.uy/StructureDefinition/ext-primer-apellido](StructureDefinition-ext-primer-apellido.md)
* [http://fhir.hcen.gub.uy/StructureDefinition/ext-segundo-apellido](StructureDefinition-ext-segundo-apellido.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-human-name.csv), [Excel](../StructureDefinition-uy-human-name.xlsx), [Schematron](../StructureDefinition-uy-human-name.sch) 

### Notas:

### Representación de los apellidos

El campo `family` conserva los apellidos juntos, mientras que las extensiones permiten distinguir sus componentes. En el [ejemplo de paciente](Patient-uy-paciente-perez.md), `family` contiene «Pérez Rodríguez», la extensión de primer apellido contiene «Pérez» y la de segundo apellido, «Rodríguez». Ambas extensiones son opcionales; su definición no implica que todas las personas deban tener dos apellidos.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-human-name",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-human-name",
  "version" : "0.2.0",
  "name" : "UYHumanName",
  "title" : "Nombre de Persona (Uruguay)",
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
      "id" : "HumanName.family.extension",
      "path" : "HumanName.family.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
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
    }]
  }
}

```
