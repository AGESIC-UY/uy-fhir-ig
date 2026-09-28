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
// Invariante compartida: al menos un coding (snomed o tesauro) presente
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
    snomed 0..1 and
    tesauro 0..1

* code.coding[snomed].system 1..1
* code.coding[snomed].code 1..1
* code.coding[snomed].display 1..1
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code from VSMotivoConsulta (extensible)
* code.coding[snomed] ^short = "Código SNOMED CT del motivo de consulta"
* code.coding[snomed] ^definition = "Código SNOMED CT del motivo de consulta"
* code.coding[snomed].display ^short = "Texto descriptivo del código SNOMED CT del motivo de consulta"
* code.coding[snomed].display ^definition = "Texto descriptivo del código SNOMED CT del motivo de consulta"

* code.coding[tesauro].system 1..1
* code.coding[tesauro].code 1..1
* code.coding[tesauro].display 1..1
* code.coding[tesauro].system = "http://msp.gub.uy/fhir/CodeSystem/tesauro-hiba" (exactly)
* code.coding[tesauro] ^short = "Código del motivo de consulta en el tesauro local (URI pendiente de confirmación institucional)"
* code.coding[tesauro] ^definition = "Código del motivo de consulta en el tesauro local. La URI del sistema es provisional; ver docs/hcen-primera-version.md."
* code.coding[tesauro].code ^short = "Código del motivo de consulta en el tesauro local"
* code.coding[tesauro].code ^definition = "Código del motivo de consulta en el tesauro local"
* code.coding[tesauro].display ^short = "Texto descriptivo del código del motivo de consulta en el tesauro local"
* code.coding[tesauro].display ^definition = "Texto descriptivo del código del motivo de consulta en el tesauro local"

// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente al que se le asocia el motivo de consulta"
* subject ^definition = "Paciente al que se le asocia el motivo de consulta"
