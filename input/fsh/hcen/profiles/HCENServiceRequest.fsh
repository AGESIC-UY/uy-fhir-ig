// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENServiceRequest                                ║
// ║       Solicitud de servicio — Hoja de Consulta No Urgente (CNU) ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYServiceRequest" de Recursos HCEN FHIR_v2.xlsx.
// Nomenclatura HCENServiceRequest según la hoja "Estructura IG" del mismo
// archivo.
//
// Notas sobre el origen de la hoja:
// - La hoja fue evidentemente clonada de "HCEN|UYMedicationaAdministratio"
//   (la fila de título y varias descripciones aún dicen literalmente
//   "MedicationAdministration"/"Administración de medicación", y el
//   binding/Constraints de `status` referencian event-status como en
//   Procedure). Como `status` está marcado "sc" (sin cambios), esos
//   restos de plantilla no generan ninguna regla FSH — se ignoran.
// - `identifier` está marcado "sc" aquí (a diferencia de los otros
//   perfiles CNU, donde estaba "na") — se respeta tal cual, sin quitarlo.
// - `code.coding` usa slicing ABIERTO (open), igual que en
//   HCENMedicationAdministration — así lo indica la hoja explícitamente.
// - `performerType` (fila) está marcado Estado "sc", pero debajo trae un
//   slicing SNOMED CT y codificaciones adicionales completo (idéntico en forma al de `code`) sin
//   Estado propio en sus subfilas. A diferencia del caso de
//   HCENProcedimiento.outcome (donde las subfilas SÍ decían "cc"), aquí
//   las subfilas están en blanco — el mismo patrón que las subfilas de
//   `code` bajo su propio "cc". Se interpreta como plantilla residual
//   (nuevamente copiada del `code`) y NO se aplica: performerType queda
//   sin cambios respecto al default de FHIR.
// - `code.coding:snomed.code` referencia un refset aún no definido
//   ("Definir el refset de solicitudes de procedimientos"): se crea el
//   placeholder VSSolicitudProcedimiento en terminologia.fsh.
// - `basedOn` está "na" en esta hoja: HCENServiceRequest no referencia a
//   su vez otra solicitud (no aplica dentro de la CNU).

Profile: HCENServiceRequest
Parent: ServiceRequest
Id: hcen-service-request
Title: "HCEN Solicitud de Servicio"
Description: "Solicitud de servicio (procedimiento, interconsulta, estudio, etc.) registrada en la Hoja de Consulta No Urgente (CNU)."
* . ^short = "Solicitud de servicio de una Consulta No Urgente"
* . ^definition = "ServiceRequest que representa una indicación, procedimiento, interconsulta o estudio solicitado en una Hoja de Consulta No Urgente de HCEN."

// ──────────────────────────────────────────
// Elementos no utilizados
// ──────────────────────────────────────────

* implicitRules 0..0
* modifierExtension 0..0

// Idioma — fijo a es-UY (regla de proyecto, todos los recursos HCEN)
* language 1..1
* language = #es-UY (exactly)
* language ^short = "Idioma del recurso — fijo a es-UY"
* language ^definition = "Idioma del recurso — fijo a es-UY"

* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* replaces 0..0
* requisition 0..0
* orderDetail 0..0
* doNotPerform 0..0
* encounter 0..0
* asNeeded[x] 0..0
* authoredOn 0..0
* requester 0..0
* performer 0..0
* locationCode 0..0
* locationReference 0..0
* reasonCode 0..0
* reasonReference 0..0
* insurance 0..0
* supportingInfo 0..0
* specimen 0..0
* bodySite 0..0
* relevantHistory 0..0

// ──────────────────────────────────────────
// identifier, status, intent, priority, note, performerType — sin cambios
// respecto al default de FHIR (ya cumplen exactamente lo que pide la hoja,
// o son residuos de plantilla sin Estado "cc"/"na" propio — ver notas arriba)
// ──────────────────────────────────────────

* identifier ^short = "Identificador externo de la solicitud"
* identifier ^definition = "Id externo del recurso."
// La hoja da "Indica el estado de administración de medicamento" para
// status — texto copiado de HCEN|UYMedicationaAdministratio (ver notas
// arriba); se corrige acá en vez de propagar el copy-paste.
* status ^short = "Estado de la solicitud de servicio"
* status ^definition = "Indica el estado de la solicitud de servicio."
* intent ^short = "Naturaleza de la solicitud"
* intent ^definition = "Indica si la solicitud es una propuesta, un plan o una orden autorizada (ver RequestIntent para el detalle completo de cada valor)."
* priority ^short = "Prioridad de la solicitud"
* priority ^definition = "Prioridad con la cual se debe coordinar y desarrollar la solicitud."
* performerType ^short = "Tipo de profesional que debería realizar el servicio"
* performerType ^definition = "Tipo de profesional que debería realizar el servicio solicitado."

// ──────────────────────────────────────────
// category — clasificador del tipo de solicitud (agrupador libre)
// ──────────────────────────────────────────

* category 0..1
* category ^short = "Clasificador del tipo de solicitud (p.ej. terapéutico, diagnóstico, consulta, procedimiento) — sin listado de códigos definido en la hoja"
* category ^definition = "Clasificador del tipo de solicitud (p.ej. terapéutico, diagnóstico, consulta, procedimiento) — sin listado de códigos definido en la hoja"

// ──────────────────────────────────────────
// code — servicio o procedimiento solicitado
// ──────────────────────────────────────────

* code MS
* code obeys hcen-coding-required-1
* code ^short = "Código que identifica el servicio o procedimiento solicitado (SNOMED CT u otra terminología)"
* code ^definition = "Código que identifica el servicio o procedimiento solicitado (SNOMED CT u otra terminología)"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1

* code.coding[snomed].system 1..1
* code.coding[snomed].code 1..1
* code.coding[snomed].display 1..1
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code from VSSolicitudProcedimiento (extensible)
* code.coding[snomed] ^short = "Código SNOMED CT del servicio o procedimiento solicitado (refset de solicitudes de procedimientos)"
* code.coding[snomed] ^definition = "Código SNOMED CT del servicio o procedimiento solicitado (refset de solicitudes de procedimientos)"
* code.coding[snomed].display ^short = "Texto descriptivo del código SNOMED CT del servicio o procedimiento solicitado"
* code.coding[snomed].display ^definition = "Texto descriptivo del código SNOMED CT del servicio o procedimiento solicitado"


// ──────────────────────────────────────────
// quantity[x] — cantidad del servicio solicitado
// ──────────────────────────────────────────

* quantity[x] MS
* quantity[x] ^short = "Cantidad del servicio solicitado (p.ej. 8 sesiones, 2 sesiones por semana, entre 8 y 10 sesiones)"
* quantity[x] ^definition = "Cantidad del servicio solicitado (p.ej. 8 sesiones, 2 sesiones por semana, entre 8 y 10 sesiones)"

// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
* subject only Reference(HCENPatient)
* subject ^short = "Paciente para quien se solicita el servicio"
* subject ^definition = "Paciente para quien se solicita el servicio"

// ──────────────────────────────────────────
// occurrence[x] — momento en que debe realizarse el servicio solicitado
// ──────────────────────────────────────────

* occurrence[x] MS
* occurrence[x] only dateTime or Period
* occurrence[x] ^short = "Fecha/hora o período en que debe realizarse el servicio solicitado"
* occurrence[x] ^definition = "Fecha/hora o período en que debe realizarse el servicio solicitado"
* occurrenceDateTime MS
* occurrencePeriod MS

* occurrencePeriod.start 1..1
* occurrencePeriod.start ^short = "Fecha de inicio del período en que debe realizarse el servicio solicitado"
* occurrencePeriod.start ^definition = "Fecha de inicio del período en que debe realizarse el servicio solicitado"

// ──────────────────────────────────────────
// patientInstruction — indicaciones para el paciente
// ──────────────────────────────────────────

* patientInstruction 1..1
* patientInstruction ^short = "Indicaciones particulares realizadas por el médico, dirigidas al paciente"
* patientInstruction ^definition = "Indicaciones particulares realizadas por el médico, dirigidas al paciente"

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYServiceRequest
// PENDIENTE: la hoja mapea `performerType` a la entrada CDA "Referencia al
// alta" (observation código 7731000179109) — semánticamente inconsistente
// (performerType no es un texto de referencia), probable error de la hoja;
// no se propaga. También le da a `patientInstruction` el mismo path CDA
// que `note` (entrada "Próxima consulta", código 7581000179102) —
// duplicado sin distinguir destino propio; tampoco se propaga hasta
// confirmar el mapeo real.
// ──────────────────────────────────────────

Mapping: HCENServiceRequestToCDA
Source: HCENServiceRequest
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYServiceRequest."
* subject -> "ClinicalDocument/recordTarget/patientRole/id"
* occurrence[x] -> "section/entry/observation[code/@code='7571000179104']/value"
* note -> "section/entry/observation[code/@code='7581000179102']/value"
