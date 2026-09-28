Extension: Funder
Id: ext-funder
Title: "Organización Financiadora"
Description: "Organización que financia el servicio. Mapea a DocumentEntry.funder."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only Reference(HCENOrganization)
* extension 0..0
* value[x] 1..1

* . ^short = "Organización Financiadora"
* . ^definition = "Organización que financia el servicio. Mapea a DocumentEntry.funder."
* value[x] ^short = "Organización Financiadora"
* value[x] ^definition = "Organización que financia el servicio. Mapea a DocumentEntry.funder."
