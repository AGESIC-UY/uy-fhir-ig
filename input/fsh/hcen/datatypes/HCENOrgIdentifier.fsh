Profile: HCENOrgIdentifier
Parent: UYOrgIdentifier
Id: hcen-org-identifier
Title: "Identificador de Organización para HCEN"
Description: "Identificador URI OID de una organización uruguaya para los intercambios HCEN."

* type = $v2-0203#XX "Organization identifier"
* system = "urn:ietf:rfc:3986" (exactly)
* value obeys hcen-org-oid
* assigner only Reference(HCENOrganization)

* system ^short = "Sistema de identificación por URI"
* system ^definition = "Valor fijo urn:ietf:rfc:3986; la URI OID completa de la organización se informa en value."
* value ^short = "URI OID de la organización uruguaya"
* value ^definition = "OID completo con prefijo urn:oid:, bajo las ramas de organizaciones de UNA-OID: 2.16.858.0.0 (Estado), 2.16.858.0.1 (personas públicas no estatales) o 2.16.858.0.2 (empresas y organizaciones privadas). La invariante comprueba la estructura de los arcos; la asignación y autorización se verifican por separado."
* . ^short = "Identificador de Organización para HCEN"
* . ^definition = "Identificador URI OID de una organización uruguaya para los intercambios HCEN."
