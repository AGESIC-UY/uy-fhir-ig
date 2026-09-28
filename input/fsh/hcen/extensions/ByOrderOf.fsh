Extension: ByOrderOf
Id: ext-by-order-of
Title: "Por Orden De"
Description: "Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only Reference(HCENOrganization)
* extension 0..0
* value[x] 1..1

* . ^short = "Por Orden De"
* . ^definition = "Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder."
* value[x] ^short = "Por Orden De"
* value[x] ^definition = "Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder."
