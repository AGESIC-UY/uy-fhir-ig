# CDA ficticio encapsulado HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Binary: CDA ficticio encapsulado HCEN

```

<?xml version="1.0" encoding="UTF-8"?>
<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<realmCode code="UY"/><typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040"/>
<id root="2.16.858.2.99999999.67430.20260917100000.1"/><code code="34108-1" codeSystem="2.16.840.1.113883.6.1"/>
<title>Documento de prueba de interoperabilidad</title><effectiveTime value="20260917100000-0300"/>
<confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25"/><languageCode code="es-UY"/>
<setId root="2.16.858.2.99999999.67430.20260917100000.1"/><versionNumber value="1"/>
<recordTarget><patientRole><id root="2.16.858.2.99999999.72768.1" extension="MRN-EJEMPLO-001"/>
<patient><name><given>Ana</given><family>Pérez Gómez</family></name><administrativeGenderCode code="F" codeSystem="2.16.840.1.113883.5.1"/><birthTime value="19850520"/></patient></patientRole></recordTarget>
<author><time value="20260917100000-0300"/><assignedAuthor><id root="2.16.858.2.10000675.68909" extension="12345672"/><assignedPerson><name><given>Lucía</given><family>Silva</family></name></assignedPerson><representedOrganization><id root="2.16.858.2.99999999"/><name>Prestador de ejemplo</name></representedOrganization></assignedAuthor></author>
<custodian><assignedCustodian><representedCustodianOrganization><id root="2.16.858.2.99999999"/><name>Prestador de ejemplo</name></representedCustodianOrganization></assignedCustodian></custodian>
<component><nonXMLBody><text mediaType="text/plain" representation="TXT">Documento ficticio para pruebas de interoperabilidad. No contiene observaciones clínicas.</text></nonXMLBody></component>
</ClinicalDocument>
```



## Resource Binary Content

text/xml:

```
[B@5dafd27c
```
