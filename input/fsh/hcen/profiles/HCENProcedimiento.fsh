// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENProcedimiento (Procedure)                     ║
// ║       Procedimiento — Hoja de Consulta No Urgente (CNU)         ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYProcedimiento" de Recursos HCEN FHIR_v2.xlsx.
// Nomenclatura HCENProcedimiento según la hoja "Estructura IG" del mismo
// archivo. Reutiliza la invariante compartida `hcen-coding-required-1`
// (motivo-consulta.fsh) en `code` y `outcome`, ambos con el mismo
// slicing abierto SNOMED CT y codificaciones adicionales que HCENMotivoConsulta/HCENDiagnostico.

Profile: HCENProcedimiento
Parent: Procedure
Id: hcen-procedimiento
Title: "HCEN Procedimiento"
Description: "Procedimiento registrado en la Hoja de Consulta No Urgente (CNU)."
* . ^short = "Procedimiento de una Consulta No Urgente"
* . ^definition = "Procedure que representa un procedimiento o tratamiento no farmacológico realizado durante una Hoja de Consulta No Urgente de HCEN."

// ──────────────────────────────────────────
// Elementos no utilizados
// ──────────────────────────────────────────

* implicitRules 0..0
* modifierExtension 0..0
* identifier 0..0

// Idioma — fijo a es-UY (regla de proyecto, todos los recursos HCEN)
* language 1..1
* language = #es-UY (exactly)
* language ^short = "Idioma del recurso — fijo a es-UY"
* language ^definition = "Idioma del recurso — fijo a es-UY"
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* partOf 0..0
* statusReason 0..0
* encounter 0..0
* performed[x] 0..0
* recorder 0..0
* asserter 0..0
* performer 0..0
* reasonCode 0..0
* reasonReference 0..0
* bodySite 0..0
* report 0..0
* complication 0..0
* complicationDetail 0..0
* followUp 0..0
* focalDevice 0..0
* usedReference 0..0
* usedCode 0..0

// ──────────────────────────────────────────
// status — sin cambios respecto al default de FHIR (ya 1..1, required)
// ──────────────────────────────────────────

* status ^short = "Estado del procedimiento"
* status ^definition = "Indica el estado del procedimiento."

// ──────────────────────────────────────────
// basedOn — solicitud que dio origen al procedimiento
// No aplica dentro de una CNU (no tiene solicitud asociada); se deja sin
// restringir Type porque HCENServiceRequest todavía no existe en esta guía.
// ──────────────────────────────────────────

* basedOn 0..* MS
* basedOn ^short = "Solicitud que dio origen al procedimiento — no aplica en el contexto de una CNU, pero sí en otros documentos de procedimiento (p.ej. colonoscopia)"
* basedOn ^definition = "Solicitud que dio origen al procedimiento — no aplica en el contexto de una CNU, pero sí en otros documentos de procedimiento (p.ej. colonoscopia)"

// ──────────────────────────────────────────
// category — tipo de procedimiento (diagnóstico, terapéutico, etc.)
// ──────────────────────────────────────────

* category 0..1 MS
* category.coding 1..1
* category.coding.system = $SCT (exactly)
* category.coding.code from VSTipoProcedimiento (extensible)
* category ^short = "Tipo de procedimiento (diagnóstico, terapéutico, etc.)"
* category ^definition = "Tipo de procedimiento (diagnóstico, terapéutico, etc.)"

// ──────────────────────────────────────────
// code — procedimiento propiamente dicho
// ──────────────────────────────────────────

* code 1..1
* code obeys hcen-coding-required-1
* code ^short = "Código que identifica el procedimiento (SNOMED CT u otra terminología)"
* code ^definition = "Código que identifica el procedimiento (SNOMED CT u otra terminología)"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1

* code.coding[snomed].system 1..1
* code.coding[snomed].code 1..1
* code.coding[snomed].display 1..1
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code from VSProcedimientos (extensible)
* code.coding[snomed] ^short = "Código SNOMED CT del procedimiento (refset uruguayo de procedimientos)"
* code.coding[snomed] ^definition = "Código SNOMED CT del procedimiento (refset uruguayo de procedimientos)"
* code.coding[snomed].display ^short = "Texto descriptivo del código SNOMED CT del procedimiento"
* code.coding[snomed].display ^definition = "Texto descriptivo del código SNOMED CT del procedimiento"


// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente al que se le realiza el procedimiento"
* subject ^definition = "Paciente al que se le realiza el procedimiento"

// ──────────────────────────────────────────
// outcome — resultado del procedimiento
// ──────────────────────────────────────────

* outcome 0..1
* outcome obeys hcen-coding-required-1
* outcome ^short = "Resultado del procedimiento (SNOMED CT u otra terminología)"
* outcome ^definition = "Resultado del procedimiento (SNOMED CT u otra terminología)"
* outcome.coding ^slicing.discriminator.type = #value
* outcome.coding ^slicing.discriminator.path = "system"
* outcome.coding ^slicing.rules = #open
* outcome.coding contains
    snomed 0..1

* outcome.coding[snomed].system 1..1
* outcome.coding[snomed].code 1..1
* outcome.coding[snomed].display 1..1
* outcome.coding[snomed].system = $SCT (exactly)
* outcome.coding[snomed].code from VSResultadoProcedimiento (extensible)
* outcome.coding[snomed] ^short = "Resultado SNOMED CT del procedimiento"
* outcome.coding[snomed] ^definition = "Resultado SNOMED CT del procedimiento"
* outcome.coding[snomed].display ^short = "Texto descriptivo del resultado SNOMED CT del procedimiento"
* outcome.coding[snomed].display ^definition = "Texto descriptivo del resultado SNOMED CT del procedimiento"


// ──────────────────────────────────────────
// note
// ──────────────────────────────────────────

* note 0..* MS
* note ^short = "Observaciones sobre el procedimiento: hallazgos (diagnóstico) o comentarios relevantes (terapéutico)"
* note ^definition = "Observaciones sobre el procedimiento: hallazgos (diagnóstico) o comentarios relevantes (terapéutico)"

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYProcedimiento
// `status` no
// tiene un path CDA real asociado — la hoja documenta el valor fijo de
// atributo `procedure/@moodCode="EVN"` en su lugar.
// ──────────────────────────────────────────

Mapping: HCENProcedimientoToCDA
Source: HCENProcedimiento
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYProcedimiento."
* status -> "procedure/@moodCode=\"EVN\""
* code -> "section/entry/procedure/code"
* code.coding[snomed].code -> "section/entry/procedure/code/@code"
* code.coding[snomed].system -> "section/entry/procedure/code/@codeSystem"
* code.coding[snomed].display -> "section/entry/procedure/code/@displayName"
* subject -> "ClinicalDocument/recordTarget/patientRole/id"
* outcome -> "section/entry/procedure/entryRelationship/observation[code/@code='258031000179107']/value"
* outcome.coding[snomed] -> "section/entry/procedure/entryRelationship/observation[code/@code='258031000179107']/value"
* note -> "section/entry/procedure/entryRelationship/observation[code/@code='703852005']/value"
