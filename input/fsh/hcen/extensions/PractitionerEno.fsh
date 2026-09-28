Extension: PractitionerEno
Id: ext-practitioner-eno
Title: "Enfermedad de Notificación Obligatoria (ENO)"
Description: "Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO."
* ^context[0].type = #element
* ^context[0].expression = "Practitioner"
* value[x] only boolean
* extension 0..0
* value[x] 1..1

* . ^short = "Enfermedad de Notificación Obligatoria (ENO)"
* . ^definition = "Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO."
* value[x] ^short = "Enfermedad de Notificación Obligatoria (ENO)"
* value[x] ^definition = "Indica si este profesional actúa como notificador de una Enfermedad de Notificación Obligatoria (ENO) en el documento. Mapea a DocumentEntry.authorENO."
