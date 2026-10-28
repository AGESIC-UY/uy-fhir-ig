Profile: UYMRNIdentifier
Parent: Identifier
Id: uy-mrn-identifier
Title: "Identificador MRN"
Description: "Identificador interno del paciente en la institución (Medical Record Number)."

* type 1..1
* type = $v2-0203#MR "Medical record number" 
* system 1..1
* value 1..1
* assigner only Reference(UYOrganization)

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Identificador MRN"
* . ^definition = "Identificador interno del paciente en la institución (Medical Record Number)."
