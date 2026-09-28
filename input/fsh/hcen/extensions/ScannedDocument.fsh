Extension: ScannedDocument
Id: ext-scanned-document
Title: "Documento Escaneado"
Description: "Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only boolean
* extension 0..0
* value[x] 1..1

* . ^short = "Documento Escaneado"
* . ^definition = "Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument."
* value[x] ^short = "Documento Escaneado"
* value[x] ^definition = "Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument."
