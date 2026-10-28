# Contacto por Correo Electrónico (Uruguay) - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: Contacto por Correo Electrónico (Uruguay) 

**Usos:**

* Utilizar este perfil de tipo de datos: [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md), [Perfil Rol del Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner-role.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-email-contact-point)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

** Resumen **

Obligatorios: 2 elementos
 Fijos: 1 elementos

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) .

** Resumen **

Obligatorios: 2 elementos
 Fijos: 1 elementos

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-email-contact-point.csv), [Excel](../StructureDefinition-uy-email-contact-point.xlsx), [Schematron](../StructureDefinition-uy-email-contact-point.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-email-contact-point",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-email-contact-point",
  "version" : "0.2.0",
  "name" : "UYEmailContactPoint",
  "title" : "Contacto por Correo Electrónico (Uruguay)",
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
  "description" : "Detalles de contacto por correo electrónico de una persona u organización.",
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
  "type" : "ContactPoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ContactPoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint",
      "short" : "Contacto por Correo Electrónico (Uruguay)",
      "definition" : "Detalles de contacto por correo electrónico de una persona u organización."
    },
    {
      "id" : "ContactPoint.system",
      "path" : "ContactPoint.system",
      "min" : 1,
      "fixedCode" : "email"
    },
    {
      "id" : "ContactPoint.value",
      "path" : "ContactPoint.value",
      "short" : "Dirección de correo electrónico de contacto.",
      "definition" : "Dirección de correo electrónico de contacto.",
      "min" : 1
    }]
  }
}

```
