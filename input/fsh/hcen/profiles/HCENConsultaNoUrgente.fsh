// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENConsultaNoUrgente (Composition)               ║
// ║       Hoja de Consulta No Urgente (CNU) — documento raíz         ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYConsultaNoUrgente" de Recursos HCEN FHIR_v2.xlsx
// (700 filas — la más grande del workbook). Es el documento raíz que agrupa,
// vía `section`, a todos los demás perfiles CNU construidos en esta rama.
//
// Notas sobre lectura de la hoja:
// - A diferencia de las hojas anteriores, la columna "Estado" (na/sc/cc)
//   está en BLANCO para casi todos los elementos de la cabecera del
//   Composition (identifier, status, type, subject, encounter, etc.) — no
//   es el patrón "na"/"sc"/"cc" habitual. Ante la ausencia de esa columna,
//   se decidió por elemento según haya o no un pedido concreto y accionable
//   en Flags/Card/Comentarios (MS explícito, cardinalidad que difiere del
//   default base, o un comentario en tono de decisión); los pedidos
//   meramente ilustrativos o condicionales se dejaron sin cambios. Ver
//   detalle por elemento abajo.
// - `Composition.encounter` referencia una documentación completa embebida
//   de Encounter (filas 20-101 de la hoja) — modelada por separado como
//   `HCENEncounter` (input/fsh/hcen/profiles/HCENEncounter.fsh, sheet
//   "HCEN|UYEncounter"); `encounter` está tipado a esa referencia.
// - **`meta.profile`**: fijado a `Canonical(HCENConsultaNoUrgente)` para
//   declarar conformidad con el perfil publicado bajo la canónica de la guía.
// - **`type` (Composition.type, "eje 1")**: la hoja solo daba un binding
//   relativo sin definir ("/tipo-generico-documento-clinico-eje-1"), igual
//   que `Encounter.type`/`serviceType` (ejes 2/3, no modelados aquí) — pero
//   el listado real de códigos SÍ existe en la hoja "ValueSets" del mismo
//   Excel (columna N "tipo genérico de documento" / columna O, LOINC).
//   Se utiliza `VSclassCode`, definido en la terminología HCEN con esos 15 códigos.
//   El binding es preferred, no extensible.
// - **`status`**: sin marca de Estado, pero el comentario es una decisión
//   explícita ("deberíamos restringirlo únicamente a final, amended y
//   entered-in-error") — se creó `VSCompositionStatusCNU` (códigos reales,
//   no placeholder) y se aplicó binding required.
// - **`identifier.system` = "urn:ietf:rfc:3986"**: es un patrón real y
//   conocido (URI system para valores `urn:oid:...`), no un placeholder.
//   `identifier.value` NO se fija: el patrón de la hoja
//   ("urn:oid:<OID_DOCUMENTO>") es una plantilla para instancias, no un
//   valor literal.
// - **Sección "observaciones" — PROBLEMA DE DATOS SIN RESOLVER**: su código
//   identificador (LOINC 18776-5) es idéntico al de la sección
//   "Instrucciones de seguimiento" — casi seguro un copy-paste, porque dos
//   secciones no pueden compartir el mismo discriminador de slice. Se dejó
//   la sección SIN código fijo (en vez de propagar el duplicado) hasta que
//   se confirme el LOINC/SNOMED real. Su `entry` referencia
//   "HCEN|Appoiment o HCEN|Observation", ninguno de los cuales existe como
//   perfil en esta guía — se dejó como `Reference(Appointment or
//   Observation)` (recursos FHIR base, sin perfilar).
// - Cardinalidad global de `section` ("slices por section (open)": Card
//   "2..7"): NO se aplicó como restricción del arreglo completo — hay 9
//   secciones nombradas (2 obligatorias + 7 opcionales), por lo que un tope
//   duro de 7 en el total podría bloquear instancias válidas que usen más
//   de 7. Se modela cada slice con su propia cardinalidad (fielmente tomada
//   de la hoja) y se deja el total sin techo explícito, solo `open`.

Profile: HCENConsultaNoUrgente
Parent: Composition
Id: uy-consulta-no-urgente
Title: "HCEN Consulta No Urgente"
Description: "Hoja de Consulta No Urgente (CNU) — documento clínico raíz que agrupa motivo de consulta, diagnósticos, procedimientos, tratamientos e instrucciones de seguimiento de una consulta no urgente (policlínica o radio)."
* . ^short = "Documento clínico de Consulta No Urgente para HCEN"
* . ^definition = "Composition que organiza los datos clínicos y administrativos de una Consulta No Urgente intercambiada mediante HCEN."

// ──────────────────────────────────────────
// Elementos no utilizados
// ──────────────────────────────────────────

* implicitRules 0..0
* modifierExtension 0..0
* category 0..0
* attester 0..0
* relatesTo 0..0
* event 0..0

// ──────────────────────────────────────────
// meta.profile — declara conformidad con este mismo perfil
// ──────────────────────────────────────────

* meta.profile 1..*
* meta.profile = Canonical(HCENConsultaNoUrgente)
* meta.profile ^short = "Perfil (template) sobre el cual se define el recurso — canónico oficial de HCENConsultaNoUrgente"
* meta.profile ^definition = "Perfil (template) sobre el cual se define el recurso — canónico oficial de HCENConsultaNoUrgente"

// ──────────────────────────────────────────
// language — fijo a es-UY
// ──────────────────────────────────────────

* language 1..1
* language = #es-UY (exactly)
* language ^short = "Idioma del documento — fijo a es-UY"
* language ^definition = "Idioma del documento — fijo a es-UY"

// ──────────────────────────────────────────
// identifier — identificador de versión del documento CNU
// ──────────────────────────────────────────

* identifier 1..1
* identifier ^short = "Identificador de la versión del recurso UY-CNU"
* identifier ^definition = "Identificador de la versión del recurso UY-CNU"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value ^short = "Valor único, formato urn:oid:<OID_DOCUMENTO> (p.ej. urn:oid:2.16.858.0.0.1.10.2.123)"
* identifier.value ^definition = "Valor único, formato urn:oid:<OID_DOCUMENTO> (p.ej. urn:oid:2.16.858.0.0.1.10.2.123)"

// ──────────────────────────────────────────
// status — restringido a final | amended | entered-in-error
// ──────────────────────────────────────────

* status from VSCompositionStatusCNU (required)
* status ^short = "Estado del documento — restringido a final, amended y entered-in-error"
* status ^definition = "Estado del documento — restringido a final, amended y entered-in-error"

// ──────────────────────────────────────────
// type — tipo genérico de documento clínico (eje 1)
// ──────────────────────────────────────────

* type.coding.system = $LOINC (exactly)
* type from VSclassCode (preferred)
* type ^short = "Tipo genérico de documento clínico (eje 1 del catálogo de documentos de Uruguay)"
* type ^definition = "Tipo genérico de documento clínico (eje 1 del catálogo de documentos de Uruguay)"

// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject MS
* subject only Reference(HCENPatient)
* subject ^short = "Usuario de salud al que se le asocia el documento CNU"
* subject ^definition = "Usuario de salud al que se le asocia el documento CNU"

// ──────────────────────────────────────────
// encounter — información contextual del evento CNU
// ──────────────────────────────────────────

* encounter MS
* encounter only Reference(HCENEncounter)
* encounter ^short = "Información contextual del evento CNU"
* encounter ^definition = "Información contextual del evento CNU"

// ──────────────────────────────────────────
// author — profesional autor del documento
// ──────────────────────────────────────────

* author only Reference(HCENPractitionerRole)
* author ^short = "Profesional autor del documento (solo PractitionerRole)"
* author ^definition = "Profesional autor del documento (solo PractitionerRole)"

// ──────────────────────────────────────────
// title
// ──────────────────────────────────────────

* title ^short = "Título del documento"
* title ^definition = "Título del documento"

// ──────────────────────────────────────────
// confidentiality — restringido a N | R | V
// ──────────────────────────────────────────

* confidentiality from VSConfidentialityCNU (required)
* confidentiality ^short = "Nivel de confidencialidad — restringido a N (normal), R (restricted) y V (very restricted)"
* confidentiality ^definition = "Nivel de confidencialidad — restringido a N (normal), R (restricted) y V (very restricted)"

// ──────────────────────────────────────────
// custodian — organización custodia del documento
// ──────────────────────────────────────────

* custodian MS
* custodian only Reference(HCENOrganization)
* custodian ^short = "Organización custodia del documento clínico"
* custodian ^definition = "Organización custodia del documento clínico"

// ──────────────────────────────────────────
// section — slicing abierto por código, 9 secciones nombradas
// (2 obligatorias: motivos de consulta y diagnósticos; 7 opcionales)
// ──────────────────────────────────────────

* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    motivosConsulta 1..1 and
    diagnosticos 1..1 and
    procedimientos 0..1 and
    tratamientoNoFarmacologicoRealizado 0..1 and
    tratamientoFarmacologicoRealizado 0..1 and
    tratamientoNoFarmacologicoFinal 0..1 and
    tratamientoFarmacologicoFinal 0..1 and
    instruccionesSeguimiento 0..1 and
    observaciones 0..1

// --- Sección: Motivos de consulta (obligatoria) ---
* section[motivosConsulta].title = "Motivos de consulta"
* section[motivosConsulta].title MS
* section[motivosConsulta].code = $LOINC#10154-3 "Motivo de consulta" (exactly)
* section[motivosConsulta].author 0..0
* section[motivosConsulta].focus 0..0
* section[motivosConsulta].text MS
* section[motivosConsulta].mode 0..0
* section[motivosConsulta].orderedBy 0..0
* section[motivosConsulta].entry 1..*
* section[motivosConsulta].entry only Reference(HCENMotivoConsulta)

// --- Sección: Diagnósticos (obligatoria) ---
* section[diagnosticos].title = "Diagnósticos"
* section[diagnosticos].title MS
* section[diagnosticos].code = $LOINC#11450-4 "Diagnostico" (exactly)
* section[diagnosticos].author 0..0
* section[diagnosticos].focus 0..0
* section[diagnosticos].text MS
* section[diagnosticos].mode 0..0
* section[diagnosticos].orderedBy 0..0
* section[diagnosticos].entry 1..*
* section[diagnosticos].entry only Reference(HCENDiagnostico)

// --- Sección: Procedimientos relevantes realizados (opcional) ---
* section[procedimientos].title = "Procedimientos relevantes realizados"
* section[procedimientos].title MS
* section[procedimientos].code = $LOINC#47519-4 "Procedimientos relevantes realizados" (exactly)
* section[procedimientos].author 0..0
* section[procedimientos].focus 0..0
* section[procedimientos].text MS
* section[procedimientos].mode 0..0
* section[procedimientos].orderedBy 0..0
* section[procedimientos].entry 1..*
* section[procedimientos].entry only Reference(HCENProcedimiento)

// --- Sección: Tratamiento no farmacológico realizado durante la asistencia (opcional) ---
* section[tratamientoNoFarmacologicoRealizado].title = "Tratamiento no farmacológico realizado durante la asistencia"
* section[tratamientoNoFarmacologicoRealizado].title MS
* section[tratamientoNoFarmacologicoRealizado].code = $SCT#258071000179109 "Tratamiento no farmacológico realizado durante la asistencia" (exactly)
* section[tratamientoNoFarmacologicoRealizado].author 0..0
* section[tratamientoNoFarmacologicoRealizado].focus 0..0
* section[tratamientoNoFarmacologicoRealizado].text MS
* section[tratamientoNoFarmacologicoRealizado].mode 0..0
* section[tratamientoNoFarmacologicoRealizado].orderedBy 0..0
* section[tratamientoNoFarmacologicoRealizado].entry 1..*
* section[tratamientoNoFarmacologicoRealizado].entry only Reference(HCENProcedimiento)

// --- Sección: Tratamiento farmacológico realizado durante la asistencia (opcional) ---
* section[tratamientoFarmacologicoRealizado].title = "Tratamiento farmacológico realizado durante la asistencia"
* section[tratamientoFarmacologicoRealizado].title MS
* section[tratamientoFarmacologicoRealizado].code = $LOINC#19011-6 "Tratamiento farmacológico realizado durante la asistencia" (exactly)
* section[tratamientoFarmacologicoRealizado].author 0..0
* section[tratamientoFarmacologicoRealizado].focus 0..0
* section[tratamientoFarmacologicoRealizado].text MS
* section[tratamientoFarmacologicoRealizado].mode 0..0
* section[tratamientoFarmacologicoRealizado].orderedBy 0..0
* section[tratamientoFarmacologicoRealizado].entry 1..*
* section[tratamientoFarmacologicoRealizado].entry only Reference(HCENMedicationAdministration)

// --- Sección: Tratamiento no farmacológico indicado al final de la asistencia (opcional) ---
* section[tratamientoNoFarmacologicoFinal].title = "Tratamiento no farmacológico indicado al final de la asistencia"
* section[tratamientoNoFarmacologicoFinal].title MS
* section[tratamientoNoFarmacologicoFinal].code = $SCT#258081000179106 "Tratamiento no farmacológico indicado al final de la asistencia" (exactly)
* section[tratamientoNoFarmacologicoFinal].author 0..0
* section[tratamientoNoFarmacologicoFinal].focus 0..0
* section[tratamientoNoFarmacologicoFinal].text MS
* section[tratamientoNoFarmacologicoFinal].mode 0..0
* section[tratamientoNoFarmacologicoFinal].orderedBy 0..0
* section[tratamientoNoFarmacologicoFinal].entry 1..*
* section[tratamientoNoFarmacologicoFinal].entry only Reference(HCENServiceRequest)

// --- Sección: Tratamiento farmacológico indicado al final de la asistencia (opcional) ---
* section[tratamientoFarmacologicoFinal].title = "Tratamiento farmacológico indicado al final de la asistencia"
* section[tratamientoFarmacologicoFinal].title MS
* section[tratamientoFarmacologicoFinal].code = $LOINC#29305-0 "Tratamiento farmacológico indicado al final de la asistencia" (exactly)
* section[tratamientoFarmacologicoFinal].author 0..0
* section[tratamientoFarmacologicoFinal].focus 0..0
* section[tratamientoFarmacologicoFinal].text MS
* section[tratamientoFarmacologicoFinal].mode 0..0
* section[tratamientoFarmacologicoFinal].orderedBy 0..0
* section[tratamientoFarmacologicoFinal].entry 1..*
* section[tratamientoFarmacologicoFinal].entry only Reference(HCENMedicationRequest)

// --- Sección: Instrucciones de seguimiento (opcional) ---
* section[instruccionesSeguimiento].title = "Instrucciones de seguimiento"
* section[instruccionesSeguimiento].title MS
* section[instruccionesSeguimiento].code = $LOINC#18776-5 "Instrucciones de seguimiento" (exactly)
* section[instruccionesSeguimiento].author 0..0
* section[instruccionesSeguimiento].focus 0..0
* section[instruccionesSeguimiento].text MS
* section[instruccionesSeguimiento].mode 0..0
* section[instruccionesSeguimiento].orderedBy 0..0
* section[instruccionesSeguimiento].entry 1..*
* section[instruccionesSeguimiento].entry only Reference(HCENServiceRequest)

// --- Sección: Observaciones (opcional) ---
// PENDIENTE: la hoja da el mismo código LOINC 18776-5 que "Instrucciones de
// seguimiento" (ver nota arriba) — no se fija ningún código hasta
// confirmar el real, para no duplicar el discriminador de slice.
* section[observaciones].title = "Observaciones relevantes"
* section[observaciones].title MS
* section[observaciones].author 0..0
* section[observaciones].focus 0..0
* section[observaciones].text MS
* section[observaciones].mode 0..0
* section[observaciones].orderedBy 0..0
* section[observaciones].entry 1..*
* section[observaciones].entry only Reference(Appointment or Observation)

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYConsultaNoUrgente
// (solo la cabecera del Composition la tiene completa; las 9 secciones no
// traen mapeo propio en la hoja). Se corrigen errores de tipeo evidentes
// del Excel (p.ej. "efectivetime" → "effectiveTime", "Clinicaldocument" →
// "ClinicalDocument") para que el mapeo sea útil como referencia real.
// ──────────────────────────────────────────

Mapping: HCENConsultaNoUrgenteToCDA
Source: HCENConsultaNoUrgente
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYConsultaNoUrgente."
* meta.profile -> "ClinicalDocument.templateId"
* language -> "ClinicalDocument.languageCode"
* identifier -> "ClinicalDocument.setId@root"
* type -> "ClinicalDocument.code"
* subject -> "ClinicalDocument.recordTarget"
* encounter -> "ClinicalDocument.componentOf.encompassingEncounter"
* date -> "ClinicalDocument.effectiveTime"
* author -> "ClinicalDocument.author"
* title -> "ClinicalDocument.title"
* custodian -> "ClinicalDocument.custodian"
