Profile: HCENSubmissionSet
Parent: List
Id: hcen-submission-set
Title: "Conjunto de envío HCEN"
Description: "Lista HCEN que agrupa referencias documentales para su envío. Reutiliza extensiones y tipos de identificador oficiales de IHE MHD sin declarar conformidad integral con el perfil IHE."

* extension contains
    $iheDesignationType named designationType 1..1 and
    $iheSourceId named sourceId 1..1 and
    $iheIntendedRecipient named intendedRecipient 0..* MS

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains
    entryUUID 0..1 MS and
    uniqueId 1..1
* identifier[entryUUID] only HCENSubmissionSetIdentifier
* identifier[uniqueId] only HCENDocumentIdentifier

* status = #current
* mode = #working
* code 1..1
* code.coding 1..*
* code.coding.system = $MHDlistTypes (exactly)
* code.coding.code = #submissionset (exactly)
* subject 1..1
* subject only Reference(HCENPatient)
* date 1..1
* source 0..1 MS
* source only Reference(HCENPractitioner or HCENPractitionerRole or HCENPatient)
* entry 1..*
* entry.item only Reference(HCENDocumentReference)

* extension[designationType] ^short = "Tipo de contenido o designación clínica del conjunto."
* extension[sourceId] ^short = "Identificador de la entidad que origina el envío."
* extension[intendedRecipient] ^short = "Personas u organizaciones destinatarias del conjunto."
* identifier[entryUUID] ^short = "EntryUUID opcional con formato urn:uuid:2.[oid_documento_clinico]."
* identifier[uniqueId] ^short = "OID documental del conjunto."
* subject ^short = "Paciente al que pertenecen los documentos incluidos."
* date ^short = "Fecha y hora de agrupación del conjunto."
* source ^short = "Autor que creó el conjunto de envío."
* entry.item ^short = "Referencia a un DocumentReference incluido en el conjunto."

// Descripciones del ODS, adaptadas a las rutas FHIR R4 y al contexto HCEN.
* id ^short = "ID lógico de este artefacto."
* id ^definition = "ID lógico de este artefacto."
* meta ^short = "Metadatos sobre el recurso."
* meta ^definition = "Metadatos sobre el recurso."
* implicitRules ^short = "Conjunto de reglas bajo las cuales se creó este contenido."
* implicitRules ^definition = "Conjunto de reglas bajo las cuales se creó este contenido."
* language ^short = "Idioma del contenido del recurso."
* language ^definition = "Idioma del contenido del recurso."
* text ^short = "Resumen del recurso en texto para interpretación humana."
* text ^definition = "Resumen del recurso en texto para interpretación humana."
* contained ^short = "Recursos integrados en línea (inline)."
* contained ^definition = "Recursos integrados en línea (inline)."
* extension ^short = "Contenido adicional definido por implementaciones."
* extension ^definition = "Contenido adicional definido por implementaciones."
* modifierExtension ^short = "Extensiones que no pueden ser ignoradas."
* modifierExtension ^definition = "Extensiones que no pueden ser ignoradas."
* identifier ^short = "Identificadores para este conjunto de documentos."
* identifier ^definition = "Identificadores para este conjunto de documentos."
* status ^short = "Estado de la lista: current | retired | entered-in-error."
* status ^definition = "Estado de la lista: current | retired | entered-in-error."
* mode ^short = "Forma en que se gestiona la lista."
* mode ^definition = "Forma en que se gestiona la lista."
* title ^short = "Nombre descriptivo del conjunto."
* title ^definition = "Nombre descriptivo del conjunto."
* code ^short = "Fija el tipo de lista."
* code ^definition = "Fija el tipo de lista."
* encounter ^short = "Contexto de encuentro clínico."
* encounter ^definition = "Contexto de encuentro clínico."
* orderedBy ^short = "Criterio de ordenación."
* orderedBy ^definition = "Criterio de ordenación."
* note ^short = "Comentarios sobre el SubmissionSet."
* note ^definition = "Comentarios sobre el SubmissionSet."
* entry ^short = "Documentos que componen este conjunto."
* entry ^definition = "Documentos que componen este conjunto."
* entry.flag ^short = "Bandera de estado del ítem."
* entry.flag ^definition = "Bandera de estado del ítem."
* entry.deleted ^short = "Si el ítem fue eliminado de la lista."
* entry.deleted ^definition = "Si el ítem fue eliminado de la lista."
* entry.date ^short = "Cuándo fue agregado el ítem."
* entry.date ^definition = "Cuándo fue agregado el ítem."
* emptyReason ^short = "Razón por la cual la lista está vacía."
* emptyReason ^definition = "Razón por la cual la lista está vacía."
* . ^short = "Conjunto de envío HCEN"
* . ^definition = "Lista HCEN que agrupa referencias documentales para su envío. Reutiliza extensiones y tipos de identificador oficiales de IHE MHD sin declarar conformidad integral con el perfil IHE."

* emptyReason 0..0
* entry.deleted 0..0
* entry.item.reference 1..1

* extension[designationType] ^definition = "Tipo de contenido o designación clínica del conjunto."
* extension[sourceId] ^definition = "Identificador de la entidad que origina el envío."
* extension[intendedRecipient] ^definition = "Personas u organizaciones destinatarias del conjunto."
* identifier[entryUUID] ^definition = "Identificador técnico opcional del conjunto, derivado del OID clínico con el formato urn:uuid:2.[oid_documento_clinico]."
* identifier[uniqueId] ^definition = "Identificador documental del conjunto, representado mediante HCENDocumentIdentifier."
* subject ^definition = "Paciente al que pertenecen los documentos incluidos."
* date ^definition = "Fecha y hora de agrupación del conjunto."
* source ^definition = "Autor que creó el conjunto de envío."
* entry.item ^definition = "Referencia a un DocumentReference incluido en el conjunto."
