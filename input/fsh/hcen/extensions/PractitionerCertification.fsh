Extension: PractitionerCertification
Id: ext-practitioner-certification
Title: "Certificación del Profesional"
Description: "Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification."
* ^context[0].type = #element
* ^context[0].expression = "Practitioner"
* value[x] only boolean
* extension 0..0
* value[x] 1..1

* . ^short = "Certificación del Profesional"
* . ^definition = "Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification."
* value[x] ^short = "Certificación del Profesional"
* value[x] ^definition = "Indica si este profesional es quien certifica (firma) el documento, para discriminarlo de los demás autores listados. Mapea a DocumentEntry.authorCertification."
