Extension: HomeCommunityId
Id: ext-home-community-id
Title: "ID de Comunidad de Origen"
Description: "El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only oid
* extension 0..0
* value[x] 1..1

* . ^short = "ID de Comunidad de Origen"
* . ^definition = "El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId."
* value[x] ^short = "ID de Comunidad de Origen"
* value[x] ^definition = "El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId."
