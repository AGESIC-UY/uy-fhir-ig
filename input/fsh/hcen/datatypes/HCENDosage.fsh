// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENDosage (tipo Dosage)                          ║
// ║       Pauta de dosificación reutilizable — CNU                  ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYDosage" de Recursos HCEN FHIR_v2.xlsx. A diferencia
// de los perfiles anteriores, `Dosage` no es un Resource sino un tipo
// complejo de FHIR (BackboneElement embebido, usado p.ej. en
// MedicationRequest.dosageInstruction) — no aparece en la hoja "Estructura
// IG" como perfil "IG HCEN" propio, pero la hoja fuente existe igual en el
// Excel. No tiene `implicitRules` ni `identifier` (a diferencia de los
// Resource profiles anteriores, que sí los tienen o los quitan).
//
// Notas sobre el origen de la hoja:
// - Igual que HCEN|UYServiceRequest, esta hoja fue evidentemente clonada de
//   HCEN|UYMedicationaAdministratio (título y Type de la fila 2 aún dicen
//   "MedicationAdministration"). Se ignoran esos restos, siguiendo la misma
//   regla de las sesiones anteriores: Estado "sc" nunca es accionable, sin
//   importar qué haya en las columnas de documentación.
// - `doseAndRate.dose[x]` y `doseAndRate.rate[x]` tienen el flag "MS" en la
//   hoja pero Estado "sc" (igual contradicción que en HCENServiceRequest).
//   Se resuelve con el MISMO precedente ya aplicado en
//   HCENMedicationAdministration para `dosage.rate[x]` (también "sc" y
//   dejado sin ninguna regla FSH): se ignora el MS residual, `doseAndRate`
//   completo queda sin cambios respecto al default de FHIR.
// - `site` y `route` piden textualmente los mismos refsets sin definir
//   ("localización" / "vía de administración farmacológica") que ya se
//   resolvieron como placeholders en HCENMedicationAdministration
//   (VSSitioAdministracion / VSViaAdministracion) — se reutilizan esos
//   mismos value sets en lugar de crear duplicados, dado que es
//   textualmente el mismo concepto (no un copy-paste de otro concepto).

Profile: HCENDosage
Parent: Dosage
Id: hcen-dosage
Title: "HCEN Dosificación"
Description: "Pauta de dosificación reutilizable para las prescripciones y administraciones de medicación registradas en la Hoja de Consulta No Urgente (CNU)."
* . ^short = "Pauta de dosificación para una Consulta No Urgente"
* . ^definition = "Dosage que representa la pauta de administración asociada a medicación indicada en una Hoja de Consulta No Urgente de HCEN."

// ──────────────────────────────────────────
// Elementos no utilizados
// ──────────────────────────────────────────

* modifierExtension 0..0
* additionalInstruction 0..0
* method 0..0
* doseAndRate.type 0..0
* maxDosePerPeriod 0..0
* maxDosePerAdministration 0..0
* maxDosePerLifetime 0..0

// ──────────────────────────────────────────
// sequence, text, patientInstruction, timing, asNeeded[x], doseAndRate
// (dose[x] y rate[x] incluidos) — sin cambios respecto al default de FHIR
// (ver nota arriba sobre el MS residual en dose[x]/rate[x], no aplicado)
// ──────────────────────────────────────────

* sequence ^short = "Orden relativo de la indicación"
* sequence ^definition = "Orden relativo de las indicaciones asociadas a la prescripción."
* text ^short = "Representación textual de la pauta de dosificación"
* text ^definition = "Es una representación textual de toda la pauta de dosificación (dosis, vía, frecuencia, etc.)."
* patientInstruction ^short = "Instrucción adicional dirigida al paciente"
* patientInstruction ^definition = "Es una instrucción adicional específicamente dirigida al paciente."
* timing ^short = "Frecuencia de administración"
* timing ^definition = "Indica cuándo y con qué frecuencia debe administrarse el medicamento."
* asNeededBoolean ^short = "Administración según necesidad"
* asNeededBoolean ^definition = "Indica que la medicación se debe tomar cuando se considere necesario."
* asNeededCodeableConcept ^short = "Condición clínica que determina la necesidad"
* asNeededCodeableConcept ^definition = "Indica que la medicación se debe tomar cuando se cumpla la condición clínica modelada."
* doseAndRate.dose[x] ^short = "Cantidad de medicamento por dosis"
* doseAndRate.dose[x] ^definition = "Cantidad de medicamento que se administra en cada dosis."
* doseAndRate.doseRange ^short = "Rango de cantidad por dosis"
* doseAndRate.doseRange ^definition = "Se utiliza cuando la cantidad por administración no es un valor único, sino un rango."
* doseAndRate.doseQuantity ^short = "Cantidad exacta por dosis"
* doseAndRate.doseQuantity ^definition = "Se utiliza para indicar una cantidad exacta de medicamento por dosis."
* doseAndRate.rate[x] ^short = "Velocidad de administración"
* doseAndRate.rate[x] ^definition = "Permite indicar la velocidad a la que debe administrarse el medicamento."
* doseAndRate.rateRatio ^short = "Velocidad de administración como relación"
* doseAndRate.rateRatio ^definition = "Permite indicar la velocidad de administración mediante una relación (p.ej. 500 mL cada 4 horas)."
* doseAndRate.rateRange ^short = "Rango de velocidad de administración"
* doseAndRate.rateRange ^definition = "Se utiliza cuando la velocidad de administración puede variar entre un mínimo y un máximo."
* doseAndRate.rateQuantity ^short = "Velocidad de administración exacta"
* doseAndRate.rateQuantity ^definition = "Permite indicar una velocidad específica de administración."

// ──────────────────────────────────────────
// site — sitio anatómico de administración
// ──────────────────────────────────────────

* site from VSSitioAdministracion (extensible)
* site ^short = "Sitio anatómico donde debe administrarse la medicación (p.ej. brazo izquierdo, vena antecubital derecha, muslo)"
* site ^definition = "Sitio anatómico donde debe administrarse la medicación (p.ej. brazo izquierdo, vena antecubital derecha, muslo)"

// ──────────────────────────────────────────
// route — vía de administración
// ──────────────────────────────────────────

* route from VSViaAdministracion (extensible)
* route ^short = "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)"
* route ^definition = "Vía de administración (p.ej. oral, intravenosa, intramuscular, subcutánea, inhalatoria)"
