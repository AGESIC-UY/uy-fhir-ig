Profile: HCENOrganization
Parent: UYOrganization
Id: hcen-organization
Title: "Perfil Organización para HCEN"
Description: "Una agrupación de personas u organizaciones con un propósito común."

* identifier 1..*
* identifier[organizationId] 1..1
* identifier[organizationId] only HCENOrgIdentifier
* name 1..1

// ──────────────────────────────────────────
// Mapeo CDA — organización del autor y organización custodia,
// según la plantilla CDA de la Hoja de Consulta No Urgente.
// ──────────────────────────────────────────

Mapping: HCENOrganizationToCDA
Source: HCENOrganization
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2. La organización se toma de representedOrganization cuando se referencia desde el rol del autor, y de representedCustodianOrganization cuando es la custodia del documento (Composition.custodian)."
* -> "ClinicalDocument/author/assignedAuthor/representedOrganization | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization"
* identifier[organizationId] -> "ClinicalDocument/author/assignedAuthor/representedOrganization/id | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id" "Identificador de la organización definido por la UNAOID."
* identifier[organizationId].system -> "ClinicalDocument/author/assignedAuthor/representedOrganization/id | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id" "Valor fijo urn:ietf:rfc:3986."
* identifier[organizationId].value -> "ClinicalDocument/author/assignedAuthor/representedOrganization/id/@root | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id/@root" "El value FHIR contiene la URI urn:oid: completa; CDA @root contiene el OID sin ese prefijo."
* name -> "ClinicalDocument/author/assignedAuthor/representedOrganization/name | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name"
* address -> "ClinicalDocument/author/assignedAuthor/representedOrganization/addr | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr"
