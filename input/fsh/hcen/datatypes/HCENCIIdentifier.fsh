Profile: HCENCIIdentifier
Parent: Identifier
Id: hcen-ci-identifier
Title: "Identificador Cédula de Identidad"
Description: "Cédula de identidad uruguaya utilizada para identificar pacientes y profesionales en HCEN, con system fijo urn:oid:2.16.858.2.10000675.68909."

* type 1..1
* type = $v2-0203#NI "National unique individual identifier"
* system 1..1
* system = $oidCI (exactly)
* value 1..1
* assigner only Reference(HCENOrganization)

* . ^short = "Identificador Cédula de Identidad"
* . ^definition = "Cédula de identidad uruguaya utilizada para identificar pacientes y profesionales en HCEN, con system fijo urn:oid:2.16.858.2.10000675.68909."
