# Identificador MRN para HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: Identificador MRN para HCEN 

### Autoridad de asignación del identificador

El campo `system` identifica a la **Assigning Authority (AA)**, la autoridad o aplicación que genera el número de identificación local del paciente. Su OID utiliza la rama de objetos de UNAOID `2.16.858.2` y se expresa como una URI:

```
urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno]

```

El consecutivo interno lo administra la organización y permite distinguir sus aplicaciones cuando más de una genera identificadores de pacientes. Por ejemplo, `urn:oid:2.16.858.2.99999999.72768.1` representa una AA ficticia con consecutivo 1. El valor local del paciente se informa en `value`; el OID de la AA no sustituye ese número.

La invariante comprueba la estructura del OID. La autorización del dominio y su correspondencia con la institución emisora se verifican mediante lógica interna de Plataforma. El OID institucional de Organization no sustituye al dominio de asignación del MRN.

La guía pública no incluye el catálogo operativo de dominios MRN ni aplica un binding a ese catálogo. Los ejemplos utilizan dominios ficticios: una validación estructural satisfactoria no acredita su autorización para operar.

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
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Identificador local del paciente dentro de un dominio de asignación autorizado para HCEN.",
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
      "definition" : "MRN dentro de un dominio de la institución emisora. Conserva el tipo MR del Core."
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "OID del dominio de asignación del MRN",
      "definition" : "OID de la Assigning Authority (AA) que genera el identificador local del paciente, con formato urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno]. Su autorización se verifica por separado.",
      "constraint" : [{
        "key" : "hcen-oid-aa",
        "severity" : "error",
        "human" : "La AA debe tener el formato urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno], con arcos numéricos válidos. La autorización del OID se verifica por separado.",
        "expression" : "matches('^urn:oid:2[.]16[.]858[.]2[.](0|[1-9][0-9]*)[.]72768[.](0|[1-9][0-9]*)$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-mrn-identifier"
      }]
    }]
  }
}

```
