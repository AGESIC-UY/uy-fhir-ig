Extension: RepositoryId
Id: ext-repository-id
Title: "ID Único del Repositorio"
Description: "Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only Identifier
* valueIdentifier.system 1..1
* valueIdentifier.system = "urn:ietf:rfc:3986" (exactly)
* valueIdentifier.value 1..1
* valueIdentifier.value ^short = "OID del repositorio asignado a la institución, expresado como urn:oid:..."
* extension 0..0
* value[x] 1..1

* . ^short = "ID Único del Repositorio"
* . ^definition = "Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS."
* value[x] ^short = "ID Único del Repositorio"
* value[x] ^definition = "Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS."
* valueIdentifier.value obeys hcen-oid-uri
