# Dirección (Uruguay) - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: Dirección (Uruguay) 

**Usos:**

* Utilizar este perfil de tipo de datos: [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-address)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

#### Bindings terminológicos (diferencial)

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

** Resumen **

Obligatorios: 1 elementos
 Fijos: 1 elementos

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

#### Bindings terminológicos (diferencial)

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

** Resumen **

Obligatorios: 1 elementos
 Fijos: 1 elementos

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-address.csv), [Excel](../StructureDefinition-uy-address.xlsx), [Schematron](../StructureDefinition-uy-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-address",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-address",
  "version" : "0.2.0",
  "name" : "UYAddress",
  "title" : "Dirección (Uruguay)",
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
  "description" : "Dirección física o postal de una persona u organización en Uruguay.",
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
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address",
      "short" : "Dirección (Uruguay)",
      "definition" : "Dirección física o postal de una persona u organización en Uruguay."
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "binding" : {
        "strength" : "extensible",
        "description" : "Localidades de Uruguay según el catálogo público de OSE.",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-localidades-uy"
      }
    },
    {
      "id" : "Address.district",
      "path" : "Address.district",
      "short" : "Nombre del barrio o comuna.",
      "definition" : "Nombre del barrio o comuna.",
      "binding" : {
        "strength" : "extensible",
        "description" : "Barrios y localidades de Uruguay según el listado de códigos postales del Correo Uruguayo.",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-barrios-localidades-uy"
      }
    },
    {
      "id" : "Address.state",
      "path" : "Address.state",
      "short" : "Nombre del departamento.",
      "definition" : "Nombre del departamento.",
      "binding" : {
        "strength" : "required",
        "description" : "Los 19 departamentos de Uruguay.",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-departamentos-uy"
      }
    },
    {
      "id" : "Address.postalCode",
      "path" : "Address.postalCode",
      "binding" : {
        "strength" : "required",
        "description" : "Códigos postales publicados por el Correo Uruguayo.",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-codigos-postales-uy"
      }
    },
    {
      "id" : "Address.country",
      "path" : "Address.country",
      "min" : 1,
      "fixedString" : "URY"
    }]
  }
}

```
