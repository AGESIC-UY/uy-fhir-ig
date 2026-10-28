Profile: HCENPractitioner
Parent: UYPractitioner
Id: hcen-practitioner
Title: "Perfil Profesional de Salud para HCEN"
Description: "Una persona que está directa o indirectamente involucrada en la provisión de atención médica."

* photo 0..0
* identifier 1..*
* identifier contains ci 1..1
* identifier[ci] only HCENCIIdentifier
* name 1..*

// Descripciones del ODS, adaptadas a las rutas FHIR R4 y al contexto HCEN.
* identifier[ci] ^short = "Cédula de identidad del profesional."
* identifier[ci] ^definition = "Cédula de identidad del profesional."
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* address[uyAddress] ^short = "Dirección física en Uruguay."
* address[uyAddress] ^definition = "Dirección física en Uruguay."
* . ^short = "Perfil Profesional de Salud para HCEN"
* . ^definition = "Una persona que está directa o indirectamente involucrada en la provisión de atención médica."

// ──────────────────────────────────────────
// Mapeo CDA — autor del documento (ClinicalDocument/author/assignedAuthor),
// según la plantilla CDA de la Hoja de Consulta No Urgente.
// ──────────────────────────────────────────

Mapping: HCENPractitionerToCDA
Source: HCENPractitioner
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2. El profesional corresponde a la persona asignada como autor del documento."
* -> "ClinicalDocument/author/assignedAuthor"
* identifier[ci] -> "ClinicalDocument/author/assignedAuthor/id" "Cédula de identidad del profesional."
* identifier[ci].system -> "ClinicalDocument/author/assignedAuthor/id/@root" "El system FHIR contiene urn:oid:2.16.858.2.10000675.68909; CDA @root contiene el OID sin el prefijo urn:oid:."
* identifier[ci].value -> "ClinicalDocument/author/assignedAuthor/id/@extension" "Número de cédula."
* name -> "ClinicalDocument/author/assignedAuthor/assignedPerson/name"
* name.family -> "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family" "Apellidos, en el orden en que aparecen en el CDA."
* name.family.extension[primerApellido] -> "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family[1]" "Primer elemento family."
* name.family.extension[segundoApellido] -> "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family[2]" "Segundo elemento family, si existe."
* name.given -> "ClinicalDocument/author/assignedAuthor/assignedPerson/name/given"
* address -> "ClinicalDocument/author/assignedAuthor/addr"
