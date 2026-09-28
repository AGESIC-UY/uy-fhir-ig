// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENDiagnostico (Condition)                       ║
// ║       Diagnóstico — Hoja de Consulta No Urgente (CNU)           ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYDiagnostico" de Recursos HCEN FHIR_v2.xlsx.
// Nomenclatura HCENDiagnostico según la hoja "Estructura IG" del mismo
// archivo. Ver invariante compartida `hcen-coding-required-1` en
// motivo-consulta.fsh (misma estructura de code.coding:SNOMED CT y codificaciones adicionales).

Profile: HCENDiagnostico
Parent: Condition
Id: hcen-diagnostico
Title: "HCEN Diagnóstico"
Description: "Diagnóstico registrado en la Hoja de Consulta No Urgente (CNU), modelado como Condition con category fija 'diagnostico'."
* . ^short = "Diagnóstico de una Consulta No Urgente"
* . ^definition = "Condition que representa un diagnóstico registrado en una Hoja de Consulta No Urgente de HCEN."

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
* severity 0..0
* bodySite 0..0
* abatement[x] 0..0
* recordedDate 0..0
* recorder 0..0
* asserter 0..0
* stage 0..0
* evidence 0..0
* note 0..0

// ──────────────────────────────────────────
// clinicalStatus — estado del problema al cierre de la consulta
// ──────────────────────────────────────────

* clinicalStatus 1..1
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus ^short = "Estado del diagnóstico al cierre de la consulta. Mapeo CDA: problema resuelto → resolved; problema no resuelto → active (default)"
* clinicalStatus ^definition = "Estado del diagnóstico al cierre de la consulta. Mapeo CDA: problema resuelto → resolved; problema no resuelto → active (default)"

// ──────────────────────────────────────────
// verificationStatus — grado de certeza del diagnóstico
// ──────────────────────────────────────────

* verificationStatus 1..1
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
* verificationStatus ^short = "Grado de certeza del diagnóstico (p.ej. provisional, confirmed)"
* verificationStatus ^definition = "Grado de certeza del diagnóstico (p.ej. provisional, confirmed)"

// ──────────────────────────────────────────
// category — fija a "diagnostico" (SNOMED)
// ──────────────────────────────────────────

* category 1..1
* category from VSConditionCategoryCNU (extensible)
* category = $SCT#439401001 "Diagnostico" (exactly)
* category ^short = "Identifica este Condition como un diagnóstico"
* category ^definition = "Identifica este Condition como un diagnóstico"

// ──────────────────────────────────────────
// code — diagnóstico propiamente dicho
// ──────────────────────────────────────────

* code 1..1
* code obeys hcen-coding-required-1
* code ^short = "Código que identifica el diagnóstico (SNOMED CT u otra terminología)"
* code ^definition = "Código que identifica el diagnóstico (SNOMED CT u otra terminología)"
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
* code.coding[snomed].code from VSDiagnosticoConsulta (extensible)
* code.coding[snomed] ^short = "Código SNOMED CT del diagnóstico"
* code.coding[snomed] ^definition = "Código SNOMED CT del diagnóstico"
* code.coding[snomed].display ^short = "Texto descriptivo del código SNOMED CT del diagnóstico"
* code.coding[snomed].display ^definition = "Texto descriptivo del código SNOMED CT del diagnóstico"

* code.coding[tesauro].system 1..1
* code.coding[tesauro].code 1..1
* code.coding[tesauro].display 1..1
* code.coding[tesauro].system = "http://msp.gub.uy/fhir/CodeSystem/tesauro-hiba" (exactly)
* code.coding[tesauro] ^short = "Código del diagnóstico en el tesauro local (URI pendiente de confirmación institucional)"
* code.coding[tesauro] ^definition = "Código del diagnóstico en el tesauro local. La URI del sistema es provisional; ver docs/hcen-primera-version.md."
* code.coding[tesauro].code ^short = "Código del diagnóstico en el tesauro local"
* code.coding[tesauro].code ^definition = "Código del diagnóstico en el tesauro local"
* code.coding[tesauro].display ^short = "Texto descriptivo del código del diagnóstico en el tesauro local"
* code.coding[tesauro].display ^definition = "Texto descriptivo del código del diagnóstico en el tesauro local"

// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente al que se le asocia el diagnóstico"
* subject ^definition = "Paciente al que se le asocia el diagnóstico"

// ──────────────────────────────────────────
// onset[x] — inicio del problema de salud
// ──────────────────────────────────────────

* onset[x] 0..1 MS
* onset[x] ^short = "Inicio del problema de salud (fecha exacta, edad aproximada, período o rango)"
* onset[x] ^definition = "Inicio del problema de salud (fecha exacta, edad aproximada, período o rango)"
* onsetAge ^short = "Edad aproximada del paciente cuando comenzó con el problema de salud"
* onsetAge ^definition = "Edad aproximada del paciente cuando comenzó con el problema de salud."
* onsetPeriod.start ^short = "Fecha de inicio del problema de salud"
* onsetPeriod.start ^definition = "Indica la fecha de inicio del problema de salud."
* onsetPeriod.end ^short = "Fecha de fin del problema de salud"
* onsetPeriod.end ^definition = "Indica la fecha de fin del problema de salud."
