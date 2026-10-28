# Identificador Cédula de Identidad - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: Identificador Cédula de Identidad 

**Usos:**

* Utilizar este perfil de tipo de datos: [Perfil Paciente para HCEN](StructureDefinition-hcen-patient.md) and [Perfil Profesional de Salud para HCEN](StructureDefinition-hcen-practitioner.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-ci-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla snapshot](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Resumen **

Obligatorios: 3 elementos
 Fijos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Resumen **

Obligatorios: 3 elementos
 Fijos: 1 elementos

**Estructuras**

Esta estructura referencia las siguientes estructuras:

* [Perfil Organización para HCEN (http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization)](StructureDefinition-hcen-organization.md)

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-ci-identifier.csv), [Excel](../StructureDefinition-hcen-ci-identifier.xlsx), [Schematron](../StructureDefinition-hcen-ci-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-ci-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-ci-identifier",
  "version" : "0.2.0",
  "name" : "HCENCIIdentifier",
  "title" : "Identificador Cédula de Identidad",
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
  "description" : "Cédula de identidad uruguaya utilizada para identificar pacientes y profesionales en HCEN, con system fijo urn:oid:2.16.858.2.10000675.68909.",
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
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Identificador Cédula de Identidad",
      "definition" : "Cédula de identidad uruguaya utilizada para identificar pacientes y profesionales en HCEN, con system fijo urn:oid:2.16.858.2.10000675.68909."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI",
          "display" : "National unique individual identifier"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:2.16.858.2.10000675.68909"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hcen.gub.uy/StructureDefinition/hcen-organization"]
      }]
    }]
  }
}

```
