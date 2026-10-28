Profile: UYDNIIdentifier
Parent: Identifier
Id: uy-dni-identifier
Title: "Documento Nacional de Identidad"
Description: "Identificación nacional de la persona, asociada al país que la emite."

* type 1..1
* type = $v2-0203#NI "National unique individual identifier"
* system 1..1
* system obeys uy-dni-oid-country
* value 1..1

// Descripciones en español: ODS Recursos HCEN FHIR_v2, hojas Core y tipos comunes.
* system ^short = "OID del país emisor, con formato urn:oid:2.16.858.1.[ID país].68909"
* system ^definition = "OID con el código numérico de país (ISO 3166-1) que identifica al país emisor del documento, con formato urn:oid:2.16.858.1.[ID país].68909. El arco del país se expresa sin ceros iniciales (Brasil: 76, Uruguay: 858). La asignación del código y la autorización del emisor se verifican por separado."
* system ^example[0].label = "Documento emitido por Brasil"
* system ^example[0].valueUri = "urn:oid:2.16.858.1.76.68909"

// Textos de presentación complementarios: raíz, comentarios y vinculaciones.
* . ^short = "Documento Nacional de Identidad"
* . ^definition = "Identificación nacional de la persona, asociada al país que la emite."
