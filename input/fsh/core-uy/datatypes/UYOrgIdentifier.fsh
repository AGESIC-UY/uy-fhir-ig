Profile: UYOrgIdentifier
Parent: Identifier
Id: uy-org-identifier
Title: "Identificador de Organización"
Description: "Identificador numérico o alfanumérico único asignado de forma oficial o local a una organización."

* type 1..1
* type = $v2-0203#XX "Organization identifier" 
* system 1..1
* value 1..1
* assigner only Reference(UYOrganization)

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Identificador de Organización"
* . ^definition = "Identificador numérico o alfanumérico único asignado de forma oficial o local a una organización."
