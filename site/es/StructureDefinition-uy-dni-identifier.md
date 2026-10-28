# Documento Nacional de Identidad - Guía de Implementación FHIR de Uruguay v0.2.0

## Perfil del tipo de datos: Documento Nacional de Identidad 

**Usos:**

* Utilizar este perfil de tipo de datos: [Perfil Paciente para Uruguay](StructureDefinition-uy-patient.md) and [Perfil Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner.md)

También se pueden consultar [los usos en FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/uy-dni-identifier)

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

#### Restricciones

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Resumen **

Obligatorios: 3 elementos

 **Vista de elementos clave** 

#### Bindings terminológicos

#### Restricciones

 **Vista diferencial** 

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

#### Restricciones

 **Vista instantáneaView** 

#### Bindings terminológicos

#### Restricciones

Esta estructura se deriva de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) .

** Resumen **

Obligatorios: 3 elementos

 

Otras representaciones de perfil: [CSV](../StructureDefinition-uy-dni-identifier.csv), [Excel](../StructureDefinition-uy-dni-identifier.xlsx), [Schematron](../StructureDefinition-uy-dni-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uy-dni-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier",
  "version" : "0.2.0",
  "name" : "UYDNIIdentifier",
  "title" : "Documento Nacional de Identidad",
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
  "description" : "Identificación nacional de la persona, asociada al país que la emite.",
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
      "short" : "Documento Nacional de Identidad",
      "definition" : "Identificación nacional de la persona, asociada al país que la emite."
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
      "short" : "OID del país emisor, con formato urn:oid:2.16.858.1.[ID país].68909",
      "definition" : "OID con el código numérico de país (ISO 3166-1) que identifica al país emisor del documento, con formato urn:oid:2.16.858.1.[ID país].68909. El arco del país se expresa sin ceros iniciales (Brasil: 76, Uruguay: 858). La asignación del código y la autorización del emisor se verifican por separado.",
      "min" : 1,
      "example" : [{
        "label" : "Documento emitido por Brasil",
        "valueUri" : "urn:oid:2.16.858.1.76.68909"
      }],
      "constraint" : [{
        "key" : "uy-dni-oid-country",
        "severity" : "error",
        "human" : "El system debe tener el formato urn:oid:2.16.858.1.[ID país].68909, donde [ID país] es el código numérico de país definido por ISO 3166-1, representado como un arco entero de hasta tres dígitos, sin ceros iniciales. La invariante valida el formato, no la asignación vigente del código de país ni la autorización del emisor.",
        "expression" : "matches('^urn:oid:2[.]16[.]858[.]1[.](0|[1-9][0-9]{0,2})[.]68909$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-dni-identifier"
      }]
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "min" : 1
    }]
  }
}

```
