Profile: UYPPNIdentifier
Parent: Identifier
Id: uy-ppn-identifier
Title: "Identificador Pasaporte"
Description: "Pasaporte del paciente."

* type 1..1
* type = $v2-0203#PPN "Passport number" 
* system 1..1
* value 1..1
* assigner only Reference(UYOrganization)

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Identificador Pasaporte"
* . ^definition = "Pasaporte del paciente."
