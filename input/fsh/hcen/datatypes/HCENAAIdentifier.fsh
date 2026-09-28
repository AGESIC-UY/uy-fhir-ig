Profile: HCENAAIdentifier
Parent: UYAAIdentifier
Id: hcen-aa-identifier
Title: "Identificador de institución para HCEN"
Description: "Identificador de una institución admitida en HCEN, representado como un OID del catálogo institucional."

* system = "urn:ietf:rfc:3986" (exactly)
* value obeys hcen-oid-uri and hcen-institution-oid
* system ^short = "Sistema URI de identificación: urn:ietf:rfc:3986."
* system ^definition = "Sistema fijo que permite representar el OID institucional como una URI en Identifier.value."
* value ^short = "OID de la institución."
* value ^definition = "OID institucional con forma urn:oid: y perteneciente al catálogo HCEN."
* . ^short = "Identificador institucional HCEN"
* . ^definition = "Identificador de organización que fija el sistema RFC 3986 y exige un OID incluido en el catálogo institucional HCEN."
