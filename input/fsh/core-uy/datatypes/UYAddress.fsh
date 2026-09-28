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
* id ^short = "ID único del elemento dentro del recurso."
* id ^definition = "ID único del elemento dentro del recurso."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* use ^short = "Propósito de la dirección: home | work | temp | old | billing."
* use ^definition = "Propósito de la dirección: hogar, trabajo, temporal, anterior o facturación."
* type ^short = "Dirección física (para visitas), postal (para correo), ambas."
* type ^definition = "Dirección física (para visitas), postal (para correo), ambas."
* text ^short = "Especifica la dirección completa tal como debe ser mostrada."
* text ^definition = "Especifica la dirección completa tal como debe ser mostrada."
* line ^short = "El nombre de la calle junto a número de puerta, apartamento, o piso."
* line ^definition = "El nombre de la calle junto a número de puerta, apartamento, o piso."
* city ^short = "Nombre de la ciudad, pueblo, localidad."
* city ^definition = "Nombre de la ciudad, pueblo, localidad."
* district ^short = "Nombre del barrio o comuna."
* district ^definition = "Nombre del barrio o comuna."
* state ^short = "Nombre del departamento."
* state ^definition = "Nombre del departamento."
* postalCode ^short = "Código postal que define el área o zona de entrega postal."
* postalCode ^definition = "Código postal que define el área o zona de entrega postal."
* country ^short = "País de la dirección."
* country ^definition = "País de la dirección."
* period ^short = "Periodo de validez de la dirección."
* period ^definition = "Periodo de validez de la dirección."

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Dirección (Uruguay)"
* . ^definition = "Dirección física o postal de una persona u organización en Uruguay."
* use ^binding.description = "Propósito de uso de la dirección."
* use ^comment = "Las aplicaciones pueden considerar vigente una dirección salvo que se indique explícitamente que es temporal o anterior."
* type ^binding.description = "Tipo de dirección: física, postal o ambas."
* text ^comment = "Pueden incluirse tanto la dirección completa como sus partes. Al actualizarla, las aplicaciones deben asegurar que el texto no contenga información que no esté representada en las partes."
* country ^comment = "Pueden utilizarse códigos ISO 3166 de tres letras en lugar del nombre del país."
* city ^binding.description = "Localidades de Uruguay según el catálogo público de OSE."
* district ^binding.description = "Barrios y localidades de Uruguay según el listado de códigos postales del Correo Uruguayo."
* state ^binding.description = "Los 19 departamentos de Uruguay."
* postalCode ^binding.description = "Códigos postales publicados por el Correo Uruguayo."
