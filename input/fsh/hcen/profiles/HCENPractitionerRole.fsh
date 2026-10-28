Profile: HCENPractitionerRole
Parent: UYPractitionerRole
Id: hcen-practitioner-role
Title: "Perfil Rol del Profesional de Salud para HCEN"
Description: "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios."

* practitioner 1..1
* practitioner only Reference(HCENPractitioner)
* organization 1..1
* organization only Reference(HCENOrganization)
* code MS
* specialty MS
* location MS
// healthcareService conserva la cardinalidad base: no modelar no implica prohibir.

// Descripciones del ODS, adaptadas a las rutas FHIR R4 y al contexto HCEN.
* telecom[phone] ^short = "Detalles de teléfono de contacto."
* telecom[phone] ^definition = "Detalles de teléfono de contacto."
* telecom[email] ^short = "Detalles de correo electrónico de contacto."
* telecom[email] ^definition = "Detalles de correo electrónico de contacto."
* . ^short = "Perfil Rol del Profesional de Salud para HCEN"
* . ^definition = "Roles y organizaciones específicos para los cuales el profesional está autorizado a proveer servicios."

// ──────────────────────────────────────────
// Mapeo CDA — autor del documento (ClinicalDocument/author/assignedAuthor),
// según la plantilla CDA de la Hoja de Consulta No Urgente.
// ──────────────────────────────────────────

Mapping: HCENPractitionerRoleToCDA
Source: HCENPractitionerRole
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2. El rol corresponde al autor asignado del documento: vincula a la persona (assignedPerson) con la organización a la que representa (representedOrganization)."
* -> "ClinicalDocument/author/assignedAuthor"
* practitioner -> "ClinicalDocument/author/assignedAuthor/assignedPerson" "Referencia al HCENPractitioner construido con assignedAuthor/id y assignedPerson."
* organization -> "ClinicalDocument/author/assignedAuthor/representedOrganization" "Referencia a la HCENOrganization construida con representedOrganization."
