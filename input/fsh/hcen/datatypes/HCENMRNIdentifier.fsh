Profile: HCENMRNIdentifier
Parent: UYMRNIdentifier
Id: hcen-mrn-identifier
Title: "Identificador MRN para HCEN"
Description: "Identificador interno del paciente emitido por un prestador admitido en HCEN."
* system obeys hcen-oid-uri
* system ^short = "OID del prestador que emitió el MRN"

* system ^definition = "Dominio emisor del MRN, expresado como urn:oid: y validado por Salud Digital. La forma URI se verifica con una invariante; la pertenencia al catálogo requiere una comprobación externa."
* . ^short = "Identificador local del paciente para HCEN"
* . ^definition = "MRN del prestador emisor. Conserva el tipo MR del Core y exige un dominio OID autorizado para HCEN."
