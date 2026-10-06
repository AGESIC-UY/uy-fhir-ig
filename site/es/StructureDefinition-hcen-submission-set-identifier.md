# EntryUUID del conjunto de envío HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Perfil del tipo de datos: EntryUUID del conjunto de envío HCEN 

**Usages:**

* Use this DataType Profile: [Conjunto de envío HCEN](StructureDefinition-hcen-submission-set.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.uy|current/StructureDefinition/hcen-submission-set-identifier)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, instantáneas y sus representaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla de instantáneas](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todos](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [EntryUUIDIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html) .

#### Constraints

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [EntryUUIDIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html) .

** Summary **

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura se deriva de [EntryUUIDIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html) .

#### Constraints

 **Vista instantáneaView** 

#### Terminology Bindings

#### Constraints

Esta estructura se deriva de [EntryUUIDIdentifier](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html) .

** Summary **

 

Otras representaciones de perfil: [CSV](../StructureDefinition-hcen-submission-set-identifier.csv), [Excel](../StructureDefinition-hcen-submission-set-identifier.xlsx), [Schematron](../StructureDefinition-hcen-submission-set-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hcen-submission-set-identifier",
  "url" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-identifier",
  "version" : "0.1.0",
  "name" : "HCENSubmissionSetIdentifier",
  "title" : "EntryUUID del conjunto de envío HCEN",
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
  "description" : "Identificador técnico entryUUID de un SubmissionSet HCEN, basado en el perfil IHE MHD EntryUUID Identifier.",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "EntryUUID del conjunto HCEN",
      "definition" : "Identificador técnico del SubmissionSet, derivado del OID [oid_documento_clinico] de cualquiera de sus documentos miembros con el formato urn:uuid:2.[oid_documento_clinico]. No existe primer documento obligatorio, documento principal ni orden relevante."
    },
    {
      "id" : "Identifier.use",
      "path" : "Identifier.use",
      "short" : "Propósito del identificador: official.",
      "definition" : "IHE MHD EntryUUID Identifier requiere que use esté presente con el valor official."
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "Sistema URI de identificación: urn:ietf:rfc:3986.",
      "definition" : "Sistema URI de identificación: urn:ietf:rfc:3986."
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "URI urn:uuid:2.[oid_documento_clinico]",
      "definition" : "EntryUUID del SubmissionSet formado anteponiendo urn:uuid:2. al OID [oid_documento_clinico] de cualquiera de sus documentos miembros, sin selección clínica especial ni orden obligatorio.",
      "constraint" : [{
        "key" : "hcen-submission-set-entryuuid",
        "severity" : "error",
        "human" : "El entryUUID del SubmissionSet se deriva del OID documental con el formato urn:uuid:2.[oid_documento_clinico].",
        "expression" : "matches('^urn:uuid:2[.]2[.]16[.]858[.]2[.](0|[1-9][0-9]*)[.]67430[.][1-9][0-9]{13}([.](0|[1-9][0-9]*))+$')",
        "source" : "http://fhir.hcen.gub.uy/StructureDefinition/hcen-submission-set-identifier"
      }]
    }]
  }
}

```
