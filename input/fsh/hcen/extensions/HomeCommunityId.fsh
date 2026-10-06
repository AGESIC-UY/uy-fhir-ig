Extension: HomeCommunityId
Id: ext-home-community-id
Title: "ID de Comunidad de Origen"
Description: "Identificador de la comunidad de origen del documento o conjunto de envío. Mapea a DocumentEntry.homeCommunityId y SubmissionSet.homeCommunityId."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* ^context[1].type = #element
* ^context[1].expression = "List"
* value[x] only oid
* extension 0..0
* value[x] 1..1

* . ^short = "ID de Comunidad de Origen"
* . ^definition = "Identificador de la comunidad de origen del documento o conjunto de envío."
* value[x] ^short = "ID de Comunidad de Origen"
* value[x] ^definition = "OID de la comunidad desde la cual se accede a los documentos."
