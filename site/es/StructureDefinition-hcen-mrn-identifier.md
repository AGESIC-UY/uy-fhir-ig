# Identificador MRN para HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Identificador MRN para HCEN 

 
Identificador interno del paciente emitido por un prestador admitido en HCEN. 

**Usages:**

* Use this DataType Profile: [Perfil Paciente para HCEN](StructureDefinition-hcen-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-mrn-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYMRNIdentifier](StructureDefinition-uy-mrn-identifier.md) .

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYMRNIdentifier](StructureDefinition-uy-mrn-identifier.md) .

** Summary **

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [UYMRNIdentifier](StructureDefinition-uy-mrn-identifier.md) .

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [UYMRNIdentifier](StructureDefinition-uy-mrn-identifier.md) .

** Summary **

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-mrn-identifier.csv), [Excel](../StructureDefinition-hcen-mrn-identifier.xlsx), [Schematron](../StructureDefinition-hcen-mrn-identifier.sch) 

### Notas:

### Autorización del dominio

La invariante comprueba la sintaxis urn:oid:, no que Salud Digital haya autorizado ese dominio. El ValueSet de dominios es un marcador sin contenido operativo; no se utiliza un binding sobre el elemento uri. La verificación de pertenencia debe realizarse contra el catálogo o mecanismo que publique Salud Digital.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-mrn-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier",
  "version" : "0.1.0",
  "name" : "HCENMRNIdentifier",
  "title" : "Identificador MRN para HCEN",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Identificador interno del paciente emitido por un prestador admitido en HCEN.",
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
  "baseDefinition" : "http://fhir.hcen.gub.uy/StructureDefinition/uy-mrn-identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Identificador local del paciente para HCEN",
      "definition" : "MRN del prestador emisor. Conserva el tipo MR del Core y exige un dominio OID autorizado para HCEN."
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "OID del prestador que emitió el MRN",
      "definition" : "Dominio emisor del MRN, expresado como urn:oid: y validado por Salud Digital. La forma URI se verifica con una invariante; la pertenencia al catálogo requiere una comprobación externa.",
      "constraint" : [{
        "key" : "hcen-oid-uri",
        "severity" : "error",
        "human" : "El dominio debe ser una URI urn:oid: con arcos numéricos válidos. La autorización del OID se verifica por separado.",
        "expression" : "matches('^urn:oid:([01][.]([0-9]|[1-3][0-9])|2[.](0|[1-9][0-9]*))([.](0|[1-9][0-9]*))*$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier"
      }]
    }]
  }
}

```
