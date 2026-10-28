Profile: HCENSubmissionSet
Parent: List
Id: hcen-submission-set
Title: "Conjunto de envío HCEN"
Description: "Lista HCEN que agrupa referencias documentales para su envío. Reutiliza extensiones y tipos de identificador oficiales de IHE MHD sin declarar conformidad integral con el perfil IHE."

* extension contains
    HomeCommunityId named homeCommunityId 1..1 and
    $iheDesignationType named designationType 1..1 and
    $iheSourceId named sourceId 1..1 and
    $iheIntendedRecipient named intendedRecipient 0..* MS

* extension[designationType].valueCodeableConcept from VStypeCode (extensible)
* extension[sourceId].valueIdentifier only HCENOrgIdentifier

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains
    entryUUID 1..1 and
    uniqueId 1..1
* identifier[entryUUID] only HCENSubmissionSetIdentifier
* identifier[uniqueId] only HCENSubmissionSetUniqueIdIdentifier

* status = #current
* mode = #working
* code 1..1
* code.coding 1..*
* code.coding.system = $MHDlistTypes (exactly)
* code.coding.code = #submissionset (exactly)
* subject 1..1
* subject only Reference(HCENPatient)
* date 1..1
* source 1..1
* source only Reference(HCENPractitionerRole)
* source.reference 1..1
* entry 1..*
* entry.item only Reference(HCENDocumentReference)

* extension[designationType] ^short = "Tipo de contenido o designación clínica del conjunto."
* extension[sourceId] ^short = "Identificador de la entidad que origina el envío."
* extension[intendedRecipient] ^short = "Personas u organizaciones destinatarias del conjunto."
* identifier[entryUUID] ^short = "EntryUUID con formato urn:uuid:2.[oid_documento_clinico]."
* identifier[uniqueId] ^short = "OID global S propio del SubmissionSet."
* subject ^short = "Paciente al que pertenecen los documentos incluidos."
* source ^short = "Autor que creó el conjunto de envío."
* entry.item ^short = "Referencia a un DocumentReference incluido en el conjunto."

// Descripciones del ODS, adaptadas a las rutas FHIR R4 y al contexto HCEN.
* identifier ^short = "Identificadores para este conjunto de documentos."
* identifier ^definition = "Identificadores para este conjunto de documentos."
* code ^short = "Fija el tipo de lista."
* code ^definition = "Fija el tipo de lista."
* note ^short = "Comentarios sobre el SubmissionSet."
* note ^definition = "Comentarios sobre el SubmissionSet."
* entry ^short = "Documentos que componen este conjunto."
* entry ^definition = "Documentos que componen este conjunto."
* . ^short = "Conjunto de envío HCEN"
* . ^definition = "Lista HCEN que agrupa referencias documentales para su envío. Reutiliza extensiones y tipos de identificador oficiales de IHE MHD sin declarar conformidad integral con el perfil IHE."

* emptyReason 0..0
* entry.deleted 0..0
* entry.item.reference 1..1

* extension[designationType] ^definition = "Tipo de contenido del conjunto, correspondiente al EJE 2. Mapea a SubmissionSet.contentTypeCode."
* extension[sourceId] ^definition = "Identificador de la entidad que origina el envío, conforme a HCENOrgIdentifier."
* extension[intendedRecipient] ^definition = "Personas u organizaciones destinatarias del conjunto."
* identifier[entryUUID] ^definition = "Identificador técnico obligatorio del conjunto, derivado del OID [oid_documento_clinico] de cualquiera de sus documentos miembros con el formato urn:uuid:2.[oid_documento_clinico]. No existe primer documento obligatorio, documento principal ni orden relevante."
* identifier[uniqueId] ^definition = "OID global S propio del SubmissionSet, distinto del identificador documental [oid_documento_clinico], representado mediante HCENSubmissionSetUniqueIdIdentifier."
* subject ^definition = "Paciente al que pertenecen los documentos incluidos."
* source ^definition = "Referencia obligatoria a HCENPractitionerRole, que identifica al profesional y su institución como autor del conjunto. Los recursos Practitioner u Organization adicionales del envío no sustituyen esta referencia."
* extension[homeCommunityId] ^short = "Comunidad de origen del conjunto."
* extension[homeCommunityId] ^definition = "Identificador de la comunidad desde la cual se accede a los documentos del conjunto."
* entry.item ^definition = "Referencia a un DocumentReference incluido en el conjunto."

Mapping: HCENSubmissionSetToXDS
Source: HCENSubmissionSet
Target: "urn:ihe:iti:xds:2013"
Title: "XDS"
Description: "Mapeo del identificador de origen y del tipo de contenido del conjunto a los metadatos XDS."
* extension[designationType].valueCodeableConcept -> "SubmissionSet.contentTypeCode"

* extension[sourceId].valueIdentifier.value -> "SubmissionSet.sourceId" "El value FHIR contiene la URI urn:oid: completa; XDS sourceId utiliza el OID sin ese prefijo."
