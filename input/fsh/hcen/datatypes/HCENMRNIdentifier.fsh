Profile: HCENMRNIdentifier
Parent: UYMRNIdentifier
Id: hcen-mrn-identifier
Title: "Identificador MRN para HCEN"
Description: "Identificador local del paciente dentro de un dominio de asignación autorizado para HCEN."
* system obeys hcen-oid-aa
* system ^short = "OID del dominio de asignación del MRN"
* system ^definition = "OID de la Assigning Authority (AA) que genera el identificador local del paciente, con formato urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno]. Su autorización se verifica por separado."
* . ^short = "Identificador local del paciente para HCEN"
* . ^definition = "MRN dentro de un dominio de la institución emisora. Conserva el tipo MR del Core."
