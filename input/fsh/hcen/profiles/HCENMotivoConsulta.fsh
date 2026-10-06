// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENMotivoConsulta (Condition)                    ║
// ║       Motivo de consulta — Hoja de Consulta No Urgente (CNU)    ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYMotivoConsulta" de Recursos HCEN FHIR_v2.xlsx.
// Nomenclatura HCENMotivoConsulta según la hoja "Estructura IG" del mismo
// archivo (perfiles "IG HCEN" con prefijo HCEN, distinto de los perfiles
// reutilizables "IG CORE UY" con prefijo UY).

// ─────────────────────────────────────────────────────────────────────
// Invariante compartida: al menos un coding (SNOMED CT u otra codificación) presente
// Reutilizada por los perfiles HCEN basados en Condition con slicing
// SNOMED CT y codificaciones adicionales en `code` (HCENMotivoConsulta, HCENDiagnostico, ...).
// ─────────────────────────────────────────────────────────────────────

Invariant: hcen-coding-required-1
Description: "code.coding debe tener al menos una entrada (al menos una codificación)."
Expression: "coding.exists()"
Severity: #error

// ─────────────────────────────────────────────────────────────────────
// Perfil: HCENMotivoConsulta
// ─────────────────────────────────────────────────────────────────────

Profile: HCENMotivoConsulta
Parent: Condition
Id: hcen-motivo-consulta
Title: "HCEN Motivo de Consulta"
Description: "Motivo de consulta registrado en la Hoja de Consulta No Urgente (CNU), modelado como Condition con category fija 'motivo de consulta'."
* . ^short = "Motivo de una Consulta No Urgente"
* . ^definition = "Condition que representa un motivo de consulta registrado en una Hoja de Consulta No Urgente de HCEN."

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
* clinicalStatus 0..0
* verificationStatus 0..0
* severity 0..0
* bodySite 0..0
* onset[x] 0..0
* abatement[x] 0..0
* recordedDate 0..0
* recorder 0..0
* asserter 0..0
* stage 0..0
* evidence 0..0
* note 0..0

// ──────────────────────────────────────────
// category — fija a "motivo de consulta" (SNOMED)
// ──────────────────────────────────────────

* category 1..1
* category from VSConditionCategoryCNU (extensible)
* category = $SCT#7611000179107 "motivo de consulta" (exactly)
* category ^short = "Identifica este Condition como un motivo de consulta"
* category ^definition = "Identifica este Condition como un motivo de consulta"

// ──────────────────────────────────────────
// code — motivo de consulta propiamente dicho
// ──────────────────────────────────────────

* code 1..1
* code obeys hcen-coding-required-1
* code ^short = "Código que identifica el motivo de la consulta (SNOMED CT u otra terminología)"
* code ^definition = "Código que identifica el motivo de la consulta (SNOMED CT u otra terminología)"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1

* code.coding[snomed].system 1..1
* code.coding[snomed].code 1..1
* code.coding[snomed].display 1..1
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code from VSMotivosConsulta (extensible)
* code.coding[snomed] ^short = "Código SNOMED CT del motivo de consulta"
* code.coding[snomed] ^definition = "Código SNOMED CT del motivo de consulta"
* code.coding[snomed].display ^short = "Texto descriptivo del código SNOMED CT del motivo de consulta"
* code.coding[snomed].display ^definition = "Texto descriptivo del código SNOMED CT del motivo de consulta"


// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente al que se le asocia el motivo de consulta"
* subject ^definition = "Paciente al que se le asocia el motivo de consulta"

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYMotivoConsulta
// ──────────────────────────────────────────

Mapping: HCENMotivoConsultaToCDA
Source: HCENMotivoConsulta
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYMotivoConsulta."
* category -> "section/entry/observation/code"
* category.coding.system -> "section/entry/observation/code/@codeSystem"
* category.coding.code -> "section/entry/observation/code/@code"
* category.coding.display -> "section/entry/observation/code/@displayName"
* code.coding[snomed] -> "section/entry/observation[code/@code='7611000179107']/value"
* code.coding[snomed].system -> "section/entry/observation/value/@codeSystem"
* code.coding[snomed].code -> "section/entry/observation/value/@code"
* code.coding[snomed].display -> "section/entry/observation/value/@displayName"
* subject -> "ClinicalDocument/recordTarget/patientRole/id"
