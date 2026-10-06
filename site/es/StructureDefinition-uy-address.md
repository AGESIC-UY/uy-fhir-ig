# Dirección (Uruguay) - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Dirección (Uruguay) 

**Usages:**

* Use this DataType Profile: [Perfil Organización para Uruguay](StructureDefinition-uy-organization.md), [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-address)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

** Summary **

Mandatory: 1 element
 Fixed: 1 element

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

#### Terminology Bindings (Differential)

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) .

** Summary **

Mandatory: 1 element
 Fixed: 1 element

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-address.csv), [Excel](../StructureDefinition-uy-address.xlsx), [Schematron](../StructureDefinition-uy-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-address",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-address",
  "version" : "0.1.0",
  "name" : "UYAddress",
  "title" : "Dirección (Uruguay)",
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
      "id" : "Address.id",
      "path" : "Address.id",
      "short" : "ID único del elemento dentro del recurso.",
      "definition" : "ID único del elemento dentro del recurso."
    },
    {
      "id" : "Address.extension",
      "path" : "Address.extension",
      "short" : "Contenido adicional definido por implementaciones.",
      "definition" : "Contenido adicional definido por implementaciones."
    },
    {
      "id" : "Address.use",
      "path" : "Address.use",
      "short" : "Propósito de la dirección: home | work | temp | old | billing.",
      "definition" : "Propósito de la dirección: hogar, trabajo, temporal, anterior o facturación.",
      "comment" : "Las aplicaciones pueden considerar vigente una dirección salvo que se indique explícitamente que es temporal o anterior.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "AddressUse"
        }],
        "strength" : "required",
        "description" : "Propósito de uso de la dirección.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/address-use|4.0.1"
      }
    },
    {
      "id" : "Address.type",
      "path" : "Address.type",
      "short" : "Dirección física (para visitas), postal (para correo), ambas.",
      "definition" : "Dirección física (para visitas), postal (para correo), ambas.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "AddressType"
        }],
        "strength" : "required",
        "description" : "Tipo de dirección: física, postal o ambas.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/address-type|4.0.1"
      }
    },
    {
      "id" : "Address.text",
      "path" : "Address.text",
      "short" : "Especifica la dirección completa tal como debe ser mostrada.",
      "definition" : "Especifica la dirección completa tal como debe ser mostrada.",
      "comment" : "Pueden incluirse tanto la dirección completa como sus partes. Al actualizarla, las aplicaciones deben asegurar que el texto no contenga información que no esté representada en las partes."
    },
    {
      "id" : "Address.line",
      "path" : "Address.line",
      "short" : "El nombre de la calle junto a número de puerta, apartamento, o piso.",
      "definition" : "El nombre de la calle junto a número de puerta, apartamento, o piso."
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "short" : "Nombre de la ciudad, pueblo, localidad.",
      "definition" : "Nombre de la ciudad, pueblo, localidad.",
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
      "short" : "Código postal que define el área o zona de entrega postal.",
      "definition" : "Código postal que define el área o zona de entrega postal.",
      "binding" : {
        "strength" : "required",
        "description" : "Códigos postales publicados por el Correo Uruguayo.",
        "valueSet" : "http://fhir.hcen.gub.uy/ValueSet/vs-codigos-postales-uy"
      }
    },
    {
      "id" : "Address.country",
      "path" : "Address.country",
      "short" : "País de la dirección.",
      "definition" : "País de la dirección.",
      "comment" : "Pueden utilizarse códigos ISO 3166 de tres letras en lugar del nombre del país.",
      "min" : 1,
      "fixedString" : "URY"
    },
    {
      "id" : "Address.period",
      "path" : "Address.period",
      "short" : "Periodo de validez de la dirección.",
      "definition" : "Periodo de validez de la dirección."
    }]
  }
}

```
