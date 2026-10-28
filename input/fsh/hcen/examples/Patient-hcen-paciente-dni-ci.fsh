Instance: example-hcen-paciente-dni-ci
InstanceOf: HCENPatient
Usage: #example
Title: "Paciente con DNI nacional y CI HCEN"
Description: "Paciente ficticio con MRN, DNI nacional y CI HCEN en identificadores independientes."
* id = "hcen-paciente-dni-ci"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Paciente ficticio con MRN local 12345, DNI nacional y CI HCEN 12345678. El dominio MRN es sintético.</p></div>"
* identifier[mrn].type = $v2-0203#MR "Medical record number"
* identifier[mrn].system = "urn:oid:2.16.858.2.999999.72768.1"
* identifier[mrn].value = "12345"
* identifier[dni].type = $v2-0203#NI "National unique individual identifier"
* identifier[dni].system = "urn:oid:2.16.858.1.858.68909"
* identifier[dni].value = "12345678"
* identifier[ci].type = $v2-0203#NI "National unique individual identifier"
* identifier[ci].system = $oidCI
* identifier[ci].value = "12345678"
