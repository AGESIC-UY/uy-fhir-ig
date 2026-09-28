Instance: HCENEjemploPaciente
InstanceOf: HCENPatient
Usage: #example
Title: "Paciente ficticio HCEN"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-paciente-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Ana Pérez Gómez. MRN-EJEMPLO-001. Registro activo; sexo administrativo femenino; nacimiento 20/05/1985.</p></div>"

* identifier[mrn].system = "urn:oid:2.16.858.2.99999999.72768.1"
* identifier[mrn].value = "MRN-EJEMPLO-001"
* active = true
* name[0].family = "Pérez Gómez"
* name[0].family.extension[primerApellido].valueString = "Pérez"
* name[0].family.extension[segundoApellido].valueString = "Gómez"
* name[0].given[0] = "Ana"
* gender = #female
* birthDate = "1985-05-20"


Instance: HCENEjemploProfesional
InstanceOf: HCENPractitioner
Usage: #example
Title: "Profesional ficticio HCEN"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-profesional-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Lucía Silva. Cédula de ejemplo 12345672.</p></div>"

* identifier[ci].value = "12345672"
* name[0].family = "Silva"
* name[0].given[0] = "Lucía"


Instance: HCENEjemploOrganizacion
InstanceOf: HCENOrganization
Usage: #example
Title: "Organización HCEN de ejemplo"
Description: "Ejemplo técnico que utiliza un OID del catálogo institucional para validar el perfil; no acredita conformidad operativa."
* id = "hcen-organizacion-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>ANDA. OID institucional utilizado para validar el ejemplo: urn:oid:2.16.858.2.10014456.72768.1.</p></div>"

* identifier[organizationId].system = "urn:ietf:rfc:3986"
* identifier[organizationId].value = "urn:oid:2.16.858.2.10014456.72768.1"
* name = "ANDA"


Instance: HCENEjemploRol
InstanceOf: HCENPractitionerRole
Usage: #example
Title: "Rol profesional ficticio HCEN"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-rol-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Lucía Silva ejerce en ANDA a efectos del ejemplo técnico.</p></div>"

* practitioner.reference = "urn:uuid:00000000-0000-4000-8000-000000000002"
* organization.reference = "urn:uuid:00000000-0000-4000-8000-000000000003"


Instance: HCENEjemploComposition
InstanceOf: Composition
Usage: #example
Title: "Composición ilustrativa sin perfil clínico"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-composicion-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Documento de prueba de interoperabilidad de Ana Pérez Gómez, emitido por Lucía Silva en ANDA a efectos del ejemplo técnico el 17/09/2026. No contiene observaciones clínicas.</p></div>"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
* status = #final
* type = http://loinc.org#34108-1
* subject.reference = "urn:uuid:00000000-0000-4000-8000-000000000001"
* date = "2026-09-17T10:00:00-03:00"
* author[0].reference = "urn:uuid:00000000-0000-4000-8000-000000000004"
* title = "Documento de prueba de interoperabilidad"
* confidentiality = #N
* custodian.reference = "urn:uuid:00000000-0000-4000-8000-000000000003"
* section[0].title = "Contenido de prueba"
* section[0].text.status = #generated
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Documento ficticio para pruebas de interoperabilidad. No contiene observaciones clínicas.</p></div>"


Instance: HCENEjemploDocumento
InstanceOf: Bundle
Usage: #example
Title: "Documento FHIR ficticio HCEN"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-documento-ejemplo"
* language = #es
* type = #document
* identifier.use = #usual
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
* timestamp = "2026-09-17T10:00:00-03:00"
* entry[0].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000005"
* entry[0].resource = HCENEjemploComposition
* entry[1].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000001"
* entry[1].resource = HCENEjemploPaciente
* entry[2].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000002"
* entry[2].resource = HCENEjemploProfesional
* entry[3].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000003"
* entry[3].resource = HCENEjemploOrganizacion
* entry[4].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000004"
* entry[4].resource = HCENEjemploRol


Instance: HCENEjemploCda
InstanceOf: HCENCdaBinary
Usage: #example
Title: "CDA ficticio encapsulado HCEN"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-cda-ejemplo"
* language = #es
* data = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPENsaW5pY2FsRG9jdW1lbnQgeG1sbnM9InVybjpobDctb3JnOnYzIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4KPHJlYWxtQ29kZSBjb2RlPSJVWSIvPjx0eXBlSWQgcm9vdD0iMi4xNi44NDAuMS4xMTM4ODMuMS4zIiBleHRlbnNpb249IlBPQ0RfSEQwMDAwNDAiLz4KPGlkIHJvb3Q9IjIuMTYuODU4LjIuOTk5OTk5OTkuNjc0MzAuMjAyNjA5MTcxMDAwMDAuMSIvPjxjb2RlIGNvZGU9IjM0MTA4LTEiIGNvZGVTeXN0ZW09IjIuMTYuODQwLjEuMTEzODgzLjYuMSIvPgo8dGl0bGU+RG9jdW1lbnRvIGRlIHBydWViYSBkZSBpbnRlcm9wZXJhYmlsaWRhZDwvdGl0bGU+PGVmZmVjdGl2ZVRpbWUgdmFsdWU9IjIwMjYwOTE3MTAwMDAwLTAzMDAiLz4KPGNvbmZpZGVudGlhbGl0eUNvZGUgY29kZT0iTiIgY29kZVN5c3RlbT0iMi4xNi44NDAuMS4xMTM4ODMuNS4yNSIvPjxsYW5ndWFnZUNvZGUgY29kZT0iZXMtVVkiLz4KPHNldElkIHJvb3Q9IjIuMTYuODU4LjIuOTk5OTk5OTkuNjc0MzAuMjAyNjA5MTcxMDAwMDAuMSIvPjx2ZXJzaW9uTnVtYmVyIHZhbHVlPSIxIi8+CjxyZWNvcmRUYXJnZXQ+PHBhdGllbnRSb2xlPjxpZCByb290PSIyLjE2Ljg1OC4yLjk5OTk5OTk5LjcyNzY4LjEiIGV4dGVuc2lvbj0iTVJOLUVKRU1QTE8tMDAxIi8+CjxwYXRpZW50PjxuYW1lPjxnaXZlbj5BbmE8L2dpdmVuPjxmYW1pbHk+UMOpcmV6IEfDs21lejwvZmFtaWx5PjwvbmFtZT48YWRtaW5pc3RyYXRpdmVHZW5kZXJDb2RlIGNvZGU9IkYiIGNvZGVTeXN0ZW09IjIuMTYuODQwLjEuMTEzODgzLjUuMSIvPjxiaXJ0aFRpbWUgdmFsdWU9IjE5ODUwNTIwIi8+PC9wYXRpZW50PjwvcGF0aWVudFJvbGU+PC9yZWNvcmRUYXJnZXQ+CjxhdXRob3I+PHRpbWUgdmFsdWU9IjIwMjYwOTE3MTAwMDAwLTAzMDAiLz48YXNzaWduZWRBdXRob3I+PGlkIHJvb3Q9IjIuMTYuODU4LjIuMTAwMDA2NzUuNjg5MDkiIGV4dGVuc2lvbj0iMTIzNDU2NzIiLz48YXNzaWduZWRQZXJzb24+PG5hbWU+PGdpdmVuPkx1Y8OtYTwvZ2l2ZW4+PGZhbWlseT5TaWx2YTwvZmFtaWx5PjwvbmFtZT48L2Fzc2lnbmVkUGVyc29uPjxyZXByZXNlbnRlZE9yZ2FuaXphdGlvbj48aWQgcm9vdD0iMi4xNi44NTguMi45OTk5OTk5OSIvPjxuYW1lPlByZXN0YWRvciBkZSBlamVtcGxvPC9uYW1lPjwvcmVwcmVzZW50ZWRPcmdhbml6YXRpb24+PC9hc3NpZ25lZEF1dGhvcj48L2F1dGhvcj4KPGN1c3RvZGlhbj48YXNzaWduZWRDdXN0b2RpYW4+PHJlcHJlc2VudGVkQ3VzdG9kaWFuT3JnYW5pemF0aW9uPjxpZCByb290PSIyLjE2Ljg1OC4yLjk5OTk5OTk5Ii8+PG5hbWU+UHJlc3RhZG9yIGRlIGVqZW1wbG88L25hbWU+PC9yZXByZXNlbnRlZEN1c3RvZGlhbk9yZ2FuaXphdGlvbj48L2Fzc2lnbmVkQ3VzdG9kaWFuPjwvY3VzdG9kaWFuPgo8Y29tcG9uZW50Pjxub25YTUxCb2R5Pjx0ZXh0IG1lZGlhVHlwZT0idGV4dC9wbGFpbiIgcmVwcmVzZW50YXRpb249IlRYVCI+RG9jdW1lbnRvIGZpY3RpY2lvIHBhcmEgcHJ1ZWJhcyBkZSBpbnRlcm9wZXJhYmlsaWRhZC4gTm8gY29udGllbmUgb2JzZXJ2YWNpb25lcyBjbMOtbmljYXMuPC90ZXh0Pjwvbm9uWE1MQm9keT48L2NvbXBvbmVudD4KPC9DbGluaWNhbERvY3VtZW50Pg=="


Instance: HCENEjemploDocumentReference
InstanceOf: HCENDocumentReference
Usage: #example
Title: "Metadatos documentales ficticios HCEN"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-referencia-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Metadatos de un documento ficticio de Ana Pérez Gómez. Incluye referencias a FHIR y CDA, autoría de Lucía Silva y custodia de ANDA a efectos del ejemplo técnico.</p></div>"

* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
* identifier[entryUUID].value = "urn:uuid:1.2.16.858.2.99999999.67430.20260917100000.1"
* status = #current
* type = http://snomed.info/sct#6821000179104
* category = http://loinc.org#34108-1
* subject.reference = "urn:uuid:00000000-0000-4000-8000-000000000001"
* date = "2026-09-17T10:00:00-03:00"
* author[0].reference = "urn:uuid:00000000-0000-4000-8000-000000000004"
* custodian.reference = "urn:uuid:00000000-0000-4000-8000-000000000003"
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* extension[repositoryId].valueIdentifier.value = "urn:oid:2.16.858.2.99999999.1"
* content.attachment.extension[binary].valueReference.reference = "urn:uuid:00000000-0000-4000-8000-000000000007"
* content.attachment.contentType = #application/fhir+json
* content.attachment.language = #es-UY
* content.attachment.url = "urn:uuid:00000000-0000-4000-8000-000000000006"
* content.attachment.title = "Documento de prueba de interoperabilidad"
* content.attachment.creation = "2026-09-17T10:00:00-03:00"
* content.format = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient
* context.facilityType = http://snomed.info/sct#22232009
* context.practiceSetting = http://snomed.info/sct#700232004
* context.sourcePatientInfo.reference = "urn:uuid:00000000-0000-4000-8000-000000000001"


Instance: HCENEjemploSubmissionSet
InstanceOf: HCENSubmissionSet
Usage: #example
Title: "Conjunto de envío ficticio HCEN"
Description: "Ejemplo ficticio para revisar el contrato HCEN. Los dominios y códigos requieren validación; no acredita conformidad operativa."
* id = "hcen-conjunto-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Conjunto de un documento ficticio de Ana Pérez Gómez, enviado por ANDA a efectos del ejemplo técnico el 17/09/2026.</p></div>"

* extension[designationType].valueCodeableConcept = http://loinc.org#34108-1
* extension[sourceId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[sourceId].valueIdentifier.value = "urn:oid:2.16.858.2.99999999"
* identifier[entryUUID].value = "urn:uuid:2.2.16.858.2.99999999.67430.20260917100000.1"
* identifier[uniqueId].value = "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
* code = $MHDlistTypes#submissionset
* subject.reference = "urn:uuid:00000000-0000-4000-8000-000000000001"
* date = "2026-09-17T10:00:00-03:00"
* source.reference = "urn:uuid:00000000-0000-4000-8000-000000000004"
* entry[0].item.reference = "urn:uuid:00000000-0000-4000-8000-000000000008"


Instance: HCENEjemploPublicacion
InstanceOf: HCENProvideDocumentBundle
Usage: #example
Title: "Sobre de publicación documental HCEN"
Description: "Ejemplo completo de la estructura propuesta, con un documento ficticio en dos representaciones. No constituye una prueba validada ni fija la respuesta o persistencia de Plataforma."
* id = "hcen-publicacion-ejemplo"
* entry[submissionSet].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000009"
* entry[submissionSet].resource = HCENEjemploSubmissionSet
* entry[documentReference].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000008"
* entry[documentReference].resource = HCENEjemploDocumentReference
* entry[documentBundle].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000006"
* entry[documentBundle].resource = HCENEjemploDocumento
* entry[cdaBinary].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000007"
* entry[cdaBinary].resource = HCENEjemploCda
* entry[patient].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000001"
* entry[patient].resource = HCENEjemploPaciente
* entry[practitioner].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000002"
* entry[practitioner].resource = HCENEjemploProfesional
* entry[practitionerRole].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000004"
* entry[practitionerRole].resource = HCENEjemploRol
* entry[organization].fullUrl = "urn:uuid:00000000-0000-4000-8000-000000000003"
* entry[organization].resource = HCENEjemploOrganizacion


Instance: HCENEjemploReferenciaConsulta
InstanceOf: HCENDocumentReference
Usage: #inline
* id = "hcen-referencia-ejemplo"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Metadatos de un documento ficticio de Ana Pérez Gómez. Incluye referencias a FHIR y CDA, autoría de Lucía Silva y custodia de ANDA a efectos del ejemplo técnico.</p></div>"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:2.16.858.2.99999999.67430.20260917100000.1"
* identifier[entryUUID].value = "urn:uuid:1.2.16.858.2.99999999.67430.20260917100000.1"
* status = #current
* type = http://snomed.info/sct#6821000179104
* category = http://loinc.org#34108-1
* subject.reference = "#hcen-paciente-ejemplo"
* date = "2026-09-17T10:00:00-03:00"
* author[0].reference = "#hcen-rol-ejemplo"
* custodian.reference = "#hcen-organizacion-ejemplo"
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* extension[repositoryId].valueIdentifier.value = "urn:oid:2.16.858.2.99999999.1"
* content.attachment.extension[binary].valueReference.reference = "https://example.org/plataforma/documentos/ejemplo/cda"
* content.attachment.contentType = #application/fhir+json
* content.attachment.language = #es-UY
* content.attachment.url = "https://example.org/plataforma/documentos/ejemplo/fhir"
* content.attachment.title = "Documento de prueba de interoperabilidad"
* content.attachment.creation = "2026-09-17T10:00:00-03:00"
* content.format = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient
* context.facilityType = http://snomed.info/sct#22232009
* context.practiceSetting = http://snomed.info/sct#700232004
* context.sourcePatientInfo.reference = "#hcen-paciente-ejemplo"
* contained[0] = HCENEjemploPaciente
* contained[1] = HCENEjemploProfesional
* contained[2] = HCENEjemploOrganizacion
* contained[3] = HCENEjemploRol
* contained[3].practitioner.reference = "#hcen-profesional-ejemplo"
* contained[3].organization.reference = "#hcen-organizacion-ejemplo"


Instance: HCENEjemploConsulta
InstanceOf: Bundle
Usage: #example
Title: "Consulta documental con una coincidencia"
Description: "Resultado ficticio. Las URLs example.org son ilustrativas y no representan endpoints HCEN."
* id = "hcen-consulta-ejemplo"
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[0].url = "https://example.org/plataforma/DocumentReference?patient.identifier=urn%3Aoid%3A2.16.858.2.99999999.72768.1%7CMRN-EJEMPLO-001"
* entry[0].fullUrl = "https://example.org/plataforma/DocumentReference/hcen-referencia-ejemplo"
* entry[0].resource = HCENEjemploReferenciaConsulta
* entry[0].search.mode = #match

Instance: HCENEjemploConsultaVacia
InstanceOf: Bundle
Usage: #example
Title: "Consulta documental sin coincidencias"
Description: "Una búsqueda válida sin coincidencias devuelve un searchset vacío."
* id = "hcen-consulta-vacia"
* type = #searchset
* total = 0
* link[0].relation = "self"
* link[0].url = "https://example.org/plataforma/DocumentReference?patient.identifier=urn%3Aoid%3A2.16.858.2.99999999.72768.1%7CSIN-COINCIDENCIAS"


Instance: HCENIti104ErrorCoincidenciaMultiple
InstanceOf: OperationOutcome
Usage: #example
Title: "El MRN coincide con más de un paciente."
Description: "OperationOutcome ilustrativo; no fija el estado HTTP ni el catálogo definitivo de errores HCEN."
* id = "iti104-error-coincidencia-multiple"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>El MRN coincide con más de un paciente.</p></div>"
* issue.severity = #error
* issue.code = #multiple-matches
* issue.details.text = "El MRN coincide con más de un paciente."


Instance: HCENIti65ErrorDuplicado
InstanceOf: OperationOutcome
Usage: #example
Title: "Ya existe un documento con el mismo identificador documental."
Description: "OperationOutcome ilustrativo; no fija el estado HTTP ni el catálogo definitivo de errores HCEN."
* id = "iti65-error-duplicado"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Ya existe un documento con el mismo identificador documental.</p></div>"
* issue.severity = #error
* issue.code = #duplicate
* issue.details.text = "Ya existe un documento con el mismo identificador documental."


Instance: HCENIti67ErrorParametro
InstanceOf: OperationOutcome
Usage: #example
Title: "Parámetro de búsqueda no admitido."
Description: "OperationOutcome ilustrativo; no fija el estado HTTP ni el catálogo definitivo de errores HCEN."
* id = "iti67-error-parametro"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>Parámetro de búsqueda no admitido.</p></div>"
* issue.severity = #error
* issue.code = #not-supported
* issue.details.text = "Parámetro de búsqueda no admitido."


Instance: HCENIti68ErrorNoEncontrado
InstanceOf: OperationOutcome
Usage: #example
Title: "No existe la representación solicitada."
Description: "OperationOutcome ilustrativo; no fija el estado HTTP ni el catálogo definitivo de errores HCEN."
* id = "iti68-error-no-encontrado"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>No existe la representación solicitada.</p></div>"
* issue.severity = #error
* issue.code = #not-found
* issue.details.text = "No existe la representación solicitada."


Instance: HCENIti68ErrorFormato
InstanceOf: OperationOutcome
Usage: #example
Title: "La serialización solicitada no está soportada."
Description: "OperationOutcome ilustrativo; no fija el estado HTTP ni el catálogo definitivo de errores HCEN."
* id = "iti68-error-formato"
* language = #es
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es\" xml:lang=\"es\"><p>La serialización solicitada no está soportada.</p></div>"
* issue.severity = #error
* issue.code = #not-supported
* issue.details.text = "La serialización solicitada no está soportada."
