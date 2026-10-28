Profile: UYAddress
Parent: Address
Id: uy-address
Title: "Dirección (Uruguay)"
Description: "Dirección física o postal de una persona u organización en Uruguay."

* line 0..*
* city 0..1
* city from VSLocalidadesUY (extensible)
* district 0..1
* district from VSBarriosLocalidadesUY (extensible)
* state 0..1
* state from VSDepartamentosUY (required)
* postalCode 0..1
* postalCode from VSCodigosPostalesUY (required)
* country 1..1
* country = "URY" (exactly)

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* district ^short = "Nombre del barrio o comuna."
* district ^definition = "Nombre del barrio o comuna."
* state ^short = "Nombre del departamento."
* state ^definition = "Nombre del departamento."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Dirección (Uruguay)"
* . ^definition = "Dirección física o postal de una persona u organización en Uruguay."
* city ^binding.description = "Localidades de Uruguay según el catálogo público de OSE."
* district ^binding.description = "Barrios y localidades de Uruguay según el listado de códigos postales del Correo Uruguayo."
* state ^binding.description = "Los 19 departamentos de Uruguay."
* postalCode ^binding.description = "Códigos postales publicados por el Correo Uruguayo."
