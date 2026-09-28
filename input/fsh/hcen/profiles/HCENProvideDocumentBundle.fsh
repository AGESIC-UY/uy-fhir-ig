// Adaptación de UnContainedComprehensiveProvideDocumentBundle, ihe.iti.mhd 4.2.3.
// No hereda su slicing cerrado: HCEN incorpora recursos de contexto y dos representaciones.
Profile: HCENProvideDocumentBundle
Parent: Bundle
Id: hcen-provide-document-bundle
Title: "Envío para publicación documental HCEN"
Description: "Sobre de publicación basado en MHD UnContained Comprehensive Provide Document Bundle, adaptado al contrato HCEN con metadatos, documento FHIR, CDA y recursos de contexto. La semántica de persistencia de sus entradas debe cerrarse antes de uso operativo."
* type = #transaction
* entry 4..*
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.request 1..1
* entry.request.method = #POST
* entry.request.ifNoneExist 0..0
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    submissionSet 1..1 and
    documentReference 1..* and
    documentBundle 1..* and
    cdaBinary 1..* and
    patient 0..* and
    practitioner 0..* and
    practitionerRole 0..* and
    organization 0..*
* entry[submissionSet].resource only HCENSubmissionSet
* entry[submissionSet].request.url = "List"
* entry[documentReference].resource only HCENDocumentReference
* entry[documentReference].request.url = "DocumentReference"
* entry[documentBundle].resource only Bundle
* entry[documentBundle].request.url = "Bundle"
* entry[cdaBinary].resource only HCENCdaBinary
* entry[cdaBinary].request.url = "Binary"
* entry[patient].resource only HCENPatient
* entry[patient].request.url = "Patient"
* entry[practitioner].resource only HCENPractitioner
* entry[practitioner].request.url = "Practitioner"
* entry[practitionerRole].resource only HCENPractitionerRole
* entry[practitionerRole].request.url = "PractitionerRole"
* entry[organization].resource only HCENOrganization
* entry[organization].request.url = "Organization"
* obeys hcen-iti65-fullurl-unique and hcen-publication-current and hcen-publication-no-replace
* entry ^short = "Metadatos, representaciones y contexto del envío"
* entry ^definition = "Un SubmissionSet y uno o más DocumentReference, Bundles documentales y Binary CDA. Las entradas adicionales contienen recursos de contexto referenciados, no nuevas operaciones de negocio."
* entry.fullUrl ^short = "Identidad de la entrada dentro del envío"
* entry.fullUrl ^definition = "URI única que permite resolver las referencias del envío sin descargar recursos individuales de sistemas externos."
* entry.request ^short = "Acción propuesta para procesar la entrada"
* entry.request ^definition = "Representación preliminar de alta con POST. El contrato de publicación debe resolver la persistencia de las representaciones documentales."
* . ^short = "Sobre de publicación documental HCEN"
* . ^definition = "Bundle de intercambio que transporta ambos formatos del documento y sus metadatos; no es el documento clínico."

* obeys hcen-publication-fhir-links and hcen-publication-cda-links and hcen-publication-members
