# OIDs de instituciones HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: OIDs de instituciones HCEN 

 
OIDs de instituciones admitidos por HCEN, representados como códigos URI del sistema urn:ietf:rfc:3986. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (Unknown Code System)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-prestador-oid-mrn",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-prestador-oid-mrn",
  "version" : "0.1.0",
  "name" : "PrestadorOidMrn",
  "title" : "OIDs de instituciones HCEN",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "OIDs de instituciones admitidos por HCEN, representados como códigos URI del sistema urn:ietf:rfc:3986.",
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:rfc:3986",
      "concept" : [{
        "code" : "urn:oid:2.16.858.2.10014456.72768.1",
        "display" : "ANDA"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002825.72768.1",
        "display" : "ASESP"
      },
      {
        "code" : "urn:oid:2.16.858.2.10001442.72768.9",
        "display" : "ASSE"
      },
      {
        "code" : "urn:oid:2.16.858.2.10001442.72768.234",
        "display" : "ASSE_2"
      },
      {
        "code" : "urn:oid:2.16.858.2.10014131.72768.1",
        "display" : "BCBS"
      },
      {
        "code" : "urn:oid:2.16.858.2.10001367.72768.1",
        "display" : "BPS"
      },
      {
        "code" : "urn:oid:2.16.858.2.10001376.72768.1",
        "display" : "BSE"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002886.72768.1",
        "display" : "CASMU"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002895.72768.1",
        "display" : "CCOU"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002895.72768.2",
        "display" : "CCOU_2"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002877.72768.1",
        "display" : "CG"
      },
      {
        "code" : "urn:oid:2.16.858.2.10001985.72768.1",
        "display" : "CHLCC"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002986.72768.1",
        "display" : "COMERI"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003187.72768.1",
        "display" : "COMETT"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003117.72768.1",
        "display" : "CUDAM"
      },
      {
        "code" : "urn:oid:2.16.858.2.10004672.72768.1",
        "display" : "DNAS"
      },
      {
        "code" : "urn:oid:2.16.858.2.10001033.72768.1",
        "display" : "DNSFFAA"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003571.72768.1",
        "display" : "EMEUNO"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003962.72768.1",
        "display" : "FEPREMI"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002007.72768.1",
        "display" : "FNR"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003144.72768.1",
        "display" : "HB"
      },
      {
        "code" : "urn:oid:2.16.858.2.10004427.72768.1",
        "display" : "HC"
      },
      {
        "code" : "urn:oid:2.16.858.2.10000000.72768.1",
        "display" : "HCD"
      },
      {
        "code" : "urn:oid:2.16.858.2.10001985.72768.2",
        "display" : "HCEO"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003062.72768.1",
        "display" : "HE"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003126.72768.1",
        "display" : "MEDICARE"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.100",
        "display" : "MSP_1"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.6",
        "display" : "MSP_APP"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.1",
        "display" : "MSP_CD"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.2",
        "display" : "MSP_CNV"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.4",
        "display" : "MSP_LAB"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.5",
        "display" : "MSP_LAB_EXT"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.11",
        "display" : "MSP_PSB"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.10",
        "display" : "MSP_PSV"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.3",
        "display" : "MSP_SIV"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.7",
        "display" : "MSP_TUB"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002661.72768.8",
        "display" : "MSP_VIH"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002752.72768.1",
        "display" : "MUCAM"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003671.72768.1",
        "display" : "SAPP"
      },
      {
        "code" : "urn:oid:2.16.858.2.10000000.72768.2",
        "display" : "SGP"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003135.72768.1",
        "display" : "SMI"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003853.72768.1",
        "display" : "SUAT"
      },
      {
        "code" : "urn:oid:2.16.858.2.10002761.72768.1",
        "display" : "SUMMUM"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003953.72768.1",
        "display" : "UCM"
      },
      {
        "code" : "urn:oid:2.16.858.2.10003001.72768.1",
        "display" : "USPS"
      },
      {
        "code" : "urn:oid:2.16.858.2.10014165.72768.1",
        "display" : "USTSA"
      }]
    }]
  }
}

```
