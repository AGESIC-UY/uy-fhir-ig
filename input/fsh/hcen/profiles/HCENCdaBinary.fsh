Profile: HCENCdaBinary
Parent: Binary
Id: hcen-cda-binary
Title: "Representación CDA de un documento HCEN"
Description: "Recurso Binary con el CDA de nivel 1 o 3 codificado en base64. El perfil exige el contenido; no valida la estructura interna del XML ni su equivalencia con el documento FHIR."
* contentType = #text/xml
* data 1..1
* contentType ^short = "Tipo MIME del CDA encapsulado"
* contentType ^definition = "text/xml identifica el contenido CDA; el encabezado HTTP Content-Type identifica la serialización FHIR del Binary."
* data ^short = "Documento CDA codificado en base64"
* data ^definition = "CDA completo del mismo documento clínico y versión que la representación FHIR. Un PDF debe estar embebido en un CDA nivel 1."
* . ^short = "CDA encapsulado para HCEN"
* . ^definition = "Representación CDA intercambiada como recurso Binary FHIR."
