// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENMedicationAdministration                      ║
// ║       Administración de medicación — CNU                        ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYMedicationaAdministratio" de Recursos HCEN FHIR_v2.xlsx.
// Nomenclatura HCENMedicationAdministration según la hoja "Estructura IG"
// del mismo archivo (allí figura como "HCENMedicationalAdministration").
//
// Nota: a diferencia de HCENMotivoConsulta/HCENDiagnostico/HCENProcedimiento,
// el slicing de medication[x].coding es ABIERTO (open), no cerrado — así lo
// indica la hoja explícitamente ("slice for coding (open)").
//
// performer.function: la hoja marca Estado "sc" pero a la vez pide un valor
// fijo "performed" en Constraints/Comentarios — contradicción resuelta con
// el usuario: se fija al código real más cercano del CodeSystem estándar
// (med-admin-perform-function#performer), asumiendo error de tipeo.

Profile: HCENMedicationAdministration
Parent: MedicationAdministration
Id: hcen-medication-administration
Title: "HCEN Administración de Medicación"
Description: "Administración de medicación registrada en la Hoja de Consulta No Urgente (CNU)."
* . ^short = "Administración de medicación en una Consulta No Urgente"
* . ^definition = "MedicationAdministration que representa medicación administrada durante una Hoja de Consulta No Urgente de HCEN."

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
* partOf 0..0
* statusReason 0..0
* category 0..0
* context 0..0
* supportingInformation 0..0
* reasonCode 0..0
* reasonReference 0..0
* eventHistory 0..0

// ──────────────────────────────────────────
// status, effective[x], request, device, note — sin cambios respecto al
// default de FHIR (ya cumplen exactamente lo que pide la hoja)
// ──────────────────────────────────────────

* status ^short = "Estado de la administración de medicamento"
* status ^definition = "Indica el estado de administración de medicamento."
* effectiveDateTime ^short = "Fecha en la que se administró la medicación"
* effectiveDateTime ^definition = "Fecha en la que se administró la medicación."
* effectivePeriod.start ^short = "Fecha de inicio de la administración"
* effectivePeriod.start ^definition = "Fecha inicio en la que se administró la medicación."
* effectivePeriod.end ^short = "Fecha de fin de la administración"
* effectivePeriod.end ^definition = "Fecha fin en la que se administró la medicación."
* request ^short = "Solicitud (MedicationRequest) que dio origen a la administración"
* request ^definition = "Posiblemente esto aplique en escenarios de emergencia o internación, no en una CNU."
* device ^short = "Dispositivo utilizado en la administración"
* device ^definition = "Dispositivo utilizado en la administración de la medicación. Revisar este recurso."
* note ^short = "Observaciones relacionadas"
* note ^definition = "Observaciones relacionadas."

// ──────────────────────────────────────────
// medication[x] — código del medicamento, solo CodeableConcept
// ──────────────────────────────────────────

* medication[x] 1..1
* medication[x] only CodeableConcept
* medication[x] ^short = "Código que identifica el medicamento (SNOMED CT u otra terminología)"
* medication[x] ^definition = "Código que identifica el medicamento (SNOMED CT u otra terminología)"
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
* medication[x].coding[snomed] ^short = "Código SNOMED CT del medicamento"
* medication[x].coding[snomed] ^definition = "Código SNOMED CT del medicamento"
* medication[x].coding[snomed].display ^short = "Texto descriptivo del código SNOMED CT del medicamento"
* medication[x].coding[snomed].display ^definition = "Texto descriptivo del código SNOMED CT del medicamento"


// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente al que se le administra la medicación"
* subject ^definition = "Paciente al que se le administra la medicación"

// ──────────────────────────────────────────
// performer — profesional que realizó la administración
// ──────────────────────────────────────────

* performer.function = $medAdminPerformFunction#performer "Performer" (exactly)
* performer.actor 1..1
* performer.actor only Reference(HCENPractitionerRole)
* performer.actor ^short = "Profesional que realizó la administración de la medicación"
* performer.actor ^definition = "Profesional que realizó la administración de la medicación"

// ──────────────────────────────────────────
// dosage — dosificación administrada
// ──────────────────────────────────────────

* dosage MS
* dosage ^short = "Dosificación de la medicación administrada"
* dosage ^definition = "Dosificación de la medicación administrada"
* dosage.method 0..0
* dosage.text ^short = "Descripción textual de la dosificación"
* dosage.text ^definition = "Descripción textual de la dosificación del medicamento administrado."
* dosage.rateRatio ^short = "Velocidad de administración"
* dosage.rateRatio ^definition = "Velocidad o frecuencia de administración."

* dosage.site MS
* dosage.site from VSSitioAdministracion (extensible)
* dosage.site ^short = "Sitio anatómico donde se administra (p.ej. brazo izquierdo, vena antecubital derecha, muslo)"
* dosage.site ^definition = "Sitio anatómico donde se administra (p.ej. brazo izquierdo, vena antecubital derecha, muslo)"

* dosage.route MS
* dosage.route from VSViaAdministracion (extensible)
* dosage.route ^short = "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)"
* dosage.route ^definition = "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)"

* dosage.dose MS
* dosage.dose ^short = "Cantidad de medicamento administrada"
* dosage.dose ^definition = "Cantidad de medicamento administrada"
* dosage.dose.value MS
* dosage.dose.unit MS
* dosage.dose.system MS
* dosage.dose.code MS

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYMedicationaAdministratio
// PENDIENTE: la hoja le da a `dosage`/`dosage.text` el mismo path CDA
// exacto que `note` (probable copy-paste, mismo patrón de hoja clonada ya
// documentado en este perfil) — no se propaga ese mapeo hasta confirmar el
// path real.
// ──────────────────────────────────────────

Mapping: HCENMedicationAdministrationToCDA
Source: HCENMedicationAdministration
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYMedicationaAdministratio."
* subject -> "ClinicalDocument/recordTarget/patientRole/id"
* note -> "section/entry/substanceAdministration[@moodCode='EVN']/entryRelationship/observation[code/@code='703852005']/value"
