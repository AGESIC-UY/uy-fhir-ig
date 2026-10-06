// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENMedicationRequest                             ║
// ║       Prescripción de medicación — CNU                          ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYMedicationRequest" de Recursos HCEN FHIR_v2.xlsx.
// Nomenclatura HCENMedicationRequest siguiendo la misma convención que
// HCENMedicationAdministration (la hoja "Estructura IG" usa la forma
// "HCENMedicationalRequest", con la misma "al" de más que en
// "HCENMedicationalAdministration" — se ignora, igual que en esa ocasión).
//
// Notas sobre el origen de la hoja:
// - Igual que HCEN|UYServiceRequest y HCEN|UYDosage, esta hoja fue
//   evidentemente clonada de HCEN|UYMedicationaAdministratio (título/Type
//   de la fila 2 aún dicen "MedicationAdministration"). Ignorado por Estado
//   "sc" en `status` (misma regla ya aplicada en las hojas anteriores).
// - **`medication[x].coding:snomed.code` repite el mismo error de
//   copy-paste ya detectado en HCENMedicationAdministration**: el Binding
//   dice "procedimientos (extensible)" y el comentario dice literalmente
//   "esto debería apuntar a un ST... con el refset procedimientos" y la
//   Descripción dice "código asociado al procedimiento" — texto copiado de
//   HCEN|UYProcedimiento, no de un refset de medicamentos real. Se reutiliza
//   el placeholder `VSMedicamentos` (creado para este mismo propósito real
//   en HCENMedicationAdministration), NO `VSProcedimientos`.
// - `intent`: Estado "sc", pero el Comentario dice explícitamente
//   "deberíamos dejar fijo el valor order, como orden autorizada, original"
//   — a diferencia de otras contradicciones sc/cc de las hojas anteriores
//   (que resultaron ser ruido de plantilla sin una decisión real detrás),
//   esta es una declaración de decisión en primera persona, y "order" es
//   un código válido real de `request-intent`. Se fija el valor (se trata
//   la contradicción como Estado mal etiquetado, no como plantilla
//   residual).
// - `category`: Estado "sc" con Constraints/Comentario meramente
//   ilustrativos ("hace referencia a un tipo de prescripción, como
//   prescripción ambulatoria") — sin la misma declaración de decisión que
//   `intent`, se deja sin cambios.
// - `dosageInstruction` se tipa al nuevo perfil reutilizable `HCENDosage`.

Profile: HCENMedicationRequest
Parent: MedicationRequest
Id: hcen-medication-request
Title: "HCEN Prescripción de Medicación"
Description: "Prescripción de medicación registrada en la Hoja de Consulta No Urgente (CNU)."
* . ^short = "Prescripción de medicación en una Consulta No Urgente"
* . ^definition = "MedicationRequest que representa una prescripción farmacológica registrada en una Hoja de Consulta No Urgente de HCEN."

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
* priority 0..0
* doNotPerform 0..0
* reported[x] 0..0
* encounter 0..0
* supportingInformation 0..0
* performer 0..0
* performerType 0..0
* recorder 0..0
* reasonCode 0..0
* reasonReference 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* insurance 0..0
* dispenseRequest 0..0
* substitution 0..0
* priorPrescription 0..0
* detectedIssue 0..0
* eventHistory 0..0

// ──────────────────────────────────────────
// status, category, authoredOn, groupIdentifier, courseOfTherapyType, note
// — sin cambios respecto al default de FHIR (ver notas arriba)
// ──────────────────────────────────────────

// La hoja da "Indica el estado de administración de medicamento" para
// status — mismo texto copiado de HCEN|UYMedicationaAdministratio ya
// visto en HCENServiceRequest; se corrige acá en vez de propagarlo.
* status ^short = "Estado de la prescripción"
* status ^definition = "Indica el estado de la prescripción de medicación."
* category ^short = "Contexto o modalidad de la prescripción"
* category ^definition = "Permite identificar el contexto o modalidad de la prescripción (p.ej. prescripción ambulatoria)."
* authoredOn ^short = "Fecha en que se autorizó la prescripción"
* authoredOn ^definition = "Deberíamos controlar o validar que se encuentre dentro del período de atención de la consulta."
* groupIdentifier ^short = "Identificador de grupo de la prescripción"
* groupIdentifier ^definition = "Identificador compartido por un grupo de prescripciones relacionadas — pendiente definir qué URI usar como system."
* courseOfTherapyType ^short = "Tipo de tratamiento asociado a la prescripción"
* courseOfTherapyType ^definition = "Indica el tipo de tratamiento asociado a la prescripción."
* note ^short = "Observaciones relacionadas"
* note ^definition = "Observaciones relacionadas."

// ──────────────────────────────────────────
// intent — fijo a "order" (orden autorizada, original)
// ──────────────────────────────────────────

* intent = #order (exactly)
* intent ^short = "Fijo a 'order': orden de prescripción autorizada y original"
* intent ^definition = "Fijo a 'order': orden de prescripción autorizada y original"

// ──────────────────────────────────────────
// medication[x] — código del medicamento prescripto, solo CodeableConcept
// ──────────────────────────────────────────

* medication[x] 1..1
* medication[x] only CodeableConcept
* medication[x] obeys hcen-coding-required-1
* medication[x] ^short = "Código que identifica el medicamento prescripto (SNOMED CT u otra terminología)"
* medication[x] ^definition = "Código que identifica el medicamento prescripto (SNOMED CT u otra terminología)"
* medication[x].coding ^slicing.discriminator.type = #value
* medication[x].coding ^slicing.discriminator.path = "system"
* medication[x].coding ^slicing.rules = #open
* medication[x].coding contains
    snomed 0..1

* medication[x].coding[snomed].system 1..1
* medication[x].coding[snomed].code 1..1
* medication[x].coding[snomed].display 1..1
* medication[x].coding[snomed].system = $SCT (exactly)
* medication[x].coding[snomed].code from VSMedicamentos (extensible)
* medication[x].coding[snomed] ^short = "Código SNOMED CT del medicamento prescripto"
* medication[x].coding[snomed] ^definition = "Código SNOMED CT del medicamento prescripto"
* medication[x].coding[snomed].display ^short = "Texto descriptivo del código SNOMED CT del medicamento prescripto"
* medication[x].coding[snomed].display ^definition = "Texto descriptivo del código SNOMED CT del medicamento prescripto"


// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente para quien se prescribe la medicación"
* subject ^definition = "Paciente para quien se prescribe la medicación"

// ──────────────────────────────────────────
// requester — profesional que realiza la prescripción
// ──────────────────────────────────────────

* requester only Reference(HCENPractitionerRole)
* requester ^short = "Profesional que realiza la prescripción"
* requester ^definition = "Profesional que realiza la prescripción"

// ──────────────────────────────────────────
// dosageInstruction — pauta de dosificación
// ──────────────────────────────────────────

* dosageInstruction only HCENDosage
* dosageInstruction ^short = "Pauta de administración indicada por el profesional (p.ej. Ibuprofeno 400 mg: tomar 1 comprimido cada 8 horas durante 5 días)"
* dosageInstruction ^definition = "Pauta de administración indicada por el profesional (p.ej. Ibuprofeno 400 mg: tomar 1 comprimido cada 8 horas durante 5 días)"

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYMedicationRequest
// ──────────────────────────────────────────

Mapping: HCENMedicationRequestToCDA
Source: HCENMedicationRequest
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYMedicationRequest."
* subject -> "ClinicalDocument/recordTarget/patientRole/id"
* note -> "section/entry/substanceAdministration[@moodCode='INT']/entryRelationship/observation[code/@code='703852005']/value"
