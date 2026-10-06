// ╔══════════════════════════════════════════════════════════════════╗
// ║       PERFIL: HCENEncounter                                     ║
// ║       Evento clínico — Consulta No Urgente (CNU)                ║
// ╚══════════════════════════════════════════════════════════════════╝
//
// Fuente: hoja "HCEN|UYEncounter" de Recursos HCEN FHIR_v2.xlsx. Documenta
// el evento clínico (Encounter) asociado a la Hoja de Consulta No Urgente
// — hasta ahora HCENConsultaNoUrgente.encounter quedaba como
// Reference(Encounter) genérico, sin un perfil propio (ver nota en
// consulta-no-urgente.fsh). No se modifica HCENConsultaNoUrgente en esta
// tarea (no fue solicitado); solo se agrega el perfil.
//
// Notas sobre lectura de la hoja:
// - El encabezado (fila 2) dice "Type: Composition" con una descripción
//   de "Hoja de consulta no urgente" — restos de plantilla heredados de
//   otra hoja clonada (mismo patrón visto en HCEN|UYServiceRequest/
//   HCEN|UYDosage, clonadas de HCEN|UYMedicationaAdministratio); se
//   ignoran, el contenido real de la hoja describe Encounter.
// - Igual que en HCEN|UYConsultaNoUrgente, la columna "Estado" (na/sc/cc)
//   está en BLANCO para el bloque de cabecera (id, meta, implicitRules,
//   language, text, extension, identifier) — sin Estado ni un pedido
//   concreto en Flags/Card/Comentarios, se dejan sin regla FSH (default
//   base, incluido `identifier`, que NO se quita). A partir de `status`
//   la hoja retoma el patrón na/sc/cc habitual.
// - **`status`**: Estado "cc"; el comentario decisorio aparece en la
//   columna "Ejemplo" en vez de "Comentarios" ("Degeríamos restringirlo
//   únicamente a finished", con errata de tipeo) — mismo patrón de
//   comentario-en-columna-equivocada ya visto en
//   HCENConsultaNoUrgente.status. Se fija el único valor permitido.
// - **`type`/`serviceType`** (ejes 2/3 del catálogo de documentos —
//   Composition.encounter había dejado esta documentación sin modelar):
//   `type` tiene Estado "cc" con un binding relativo propio en su propia
//   fila ("/tipo-detallado-documento-clinico-eje-2") — se reutiliza
//   `VStypeCode` (terminología HCEN, definida para este eje).
//   HCENConsultaNoUrgente.type está fijado a LOINC 34108-1 y no utiliza
//   VSclassCode. El binding de Encounter.type se conserva preferred
//   (la hoja no indica fuerza explícita).
//   `serviceType` también es "cc", pero su único
//   binding relativo ("/servicio-medico-documentoclinico-eje-3") está en
//   una subfila `.coding.code` marcada "sc" — por la regla ya establecida
//   en el proyecto ("sc" nunca es accionable, sin importar el contenido
//   de las columnas de documentación), NO se aplica ese binding aquí; a
//   `serviceType` solo se le agrega MS.
// - **`class`**: Estado "sc" pese a tener Constraints/Ejemplo = "AMB" —
//   se respeta la regla "sc nunca es accionable", sin cambios.
// - **`subject`/`serviceProvider`/`partOf`**: Estado "sc" en la hoja (sin
//   restringir el tipo, según la lectura estricta original), pero
//   tipados por pedido explícito posterior del usuario: `subject` →
//   `Reference(HCENPatient)`, `serviceProvider` → `Reference(HCENOrganization)`,
//   `partOf` → `Reference(HCENEncounter)` (auto-referencia). Esta
//   instrucción prioriza sobre la lectura "sc" original.
// - **`participant`/`participant.individual`**: siguen Estado "sc" sin
//   restringir tipo (no incluidos en el pedido de tipado anterior).
// - **`period`/`period.start`/`period.end`**: Estado "sc", sin cambios.
// - Errores de tipeo del Excel resueltos al nombre real del elemento FHIR
//   (no como elementos nuevos): "baseOn" → `basedOn`, "appoiment" →
//   `appointment`, "hospitalizaction" → `hospitalization`.
// - **Mapeo CDA**: agregado a partir de la columna "Mapeo CDA" de la hoja
//   (incluye filas marcadas "sc", ya que el bloque `Mapping` es solo
//   documentación de referencia y no una restricción estructural). La hoja
//   reutiliza el mismo destino CDA genérico `ClinicalDocument/author/
//   assignedAuthor` para `participant`, `participant.type` y
//   `participant.individual` — no distingue un path propio por
//   sub-elemento; se documenta tal cual.

Profile: HCENEncounter
Parent: Encounter
Id: hcen-encounter
Title: "HCEN Evento Clínico"
Description: "Evento clínico (Encounter) asociado a una Hoja de Consulta No Urgente (CNU) de HCEN."
* . ^short = "Evento clínico de una Consulta No Urgente"
* . ^definition = "Encounter que representa el evento clínico (consulta, atención) asociado a una Hoja de Consulta No Urgente de HCEN."

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

* classHistory 0..0
* priority 0..0
* episodeOfCare 0..0
* basedOn 0..0
* appointment 0..0
* length 0..0
* reasonCode 0..0
* reasonReference 0..0
* diagnosis 0..0
* account 0..0
* hospitalization 0..0
* location 0..0

// ──────────────────────────────────────────
// status — restringido a finished
// ──────────────────────────────────────────

* status = #finished (exactly)
* status ^short = "Estado del evento clínico — fijo a finished"
* status ^definition = "Estado del evento clínico — fijo a finished"

// ──────────────────────────────────────────
// class — sin cambios respecto al default de FHIR (Estado "sc" en la hoja)
// ──────────────────────────────────────────

// ──────────────────────────────────────────
// subject — tipado a HCENPatient (pedido explícito del usuario; la hoja
// tenía Estado "sc", pero se prioriza esta instrucción sobre esa lectura)
// ──────────────────────────────────────────

* subject only Reference(HCENPatient)
* subject ^short = "Usuario de salud al que se le asocia el evento clínico"
* subject ^definition = "Identifica al usuario de salud al que se le asocia el evento clínico de la CNU."

// ──────────────────────────────────────────
// participant — Estado "sc": se documenta, sin restringir tipo/cardinalidad
// (participant.individual también queda Reference(Practitioner | ...) base)
// ──────────────────────────────────────────

* participant ^short = "Profesional involucrado en el evento clínico"
* participant ^definition = "Identifica al profesional (p.ej. PractitionerRole) involucrado en el evento clínico."

// ──────────────────────────────────────────
// period — Estado "sc": se documenta, sin restringir cardinalidad
// ──────────────────────────────────────────

* period ^short = "Inicio y finalización del evento clínico"
* period ^definition = "Inicio y finalización del evento clínico."

// ──────────────────────────────────────────
// serviceProvider — Estado "sc": se documenta (sin texto propio en la
// hoja; descripción inferida del tipo Reference(Organization) base), sin
// restringir el tipo
// serviceProvider — tipado a HCENOrganization (pedido explícito del
// usuario, prioriza sobre la lectura Estado "sc" original)
// ──────────────────────────────────────────

* serviceProvider only Reference(HCENOrganization)
* serviceProvider ^short = "Organización prestadora responsable del evento clínico"
* serviceProvider ^definition = "Organización prestadora responsable de la atención asociada al evento clínico."

// ──────────────────────────────────────────
// partOf — tipado a HCENEncounter (auto-referencia; pedido explícito del
// usuario, prioriza sobre la lectura Estado "sc" original)
// ──────────────────────────────────────────

* partOf only Reference(HCENEncounter)
* partOf ^short = "Evento clínico del cual este evento forma parte"
* partOf ^definition = "Evento clínico (Encounter) del cual este evento forma parte, cuando corresponde."

// ──────────────────────────────────────────
// type — tipo detallado del evento clínico (eje 2)
// ──────────────────────────────────────────

* type 0..1 MS
* type from VStypeCode (preferred)
* type ^short = "Tipo detallado del evento clínico (eje 2 del catálogo de documentos de Uruguay)"
* type ^definition = "Tipo detallado del evento clínico (eje 2 del catálogo de documentos de Uruguay)"

// ──────────────────────────────────────────
// serviceType — servicio médico asociado (eje 3)
// ──────────────────────────────────────────

* serviceType MS
* serviceType ^short = "Servicio médico específico asociado al evento clínico (eje 3 del catálogo de documentos de Uruguay)"
* serviceType ^definition = "Servicio médico específico asociado al evento clínico (eje 3 del catálogo de documentos de Uruguay)"

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYEncounter
// ──────────────────────────────────────────

Mapping: HCENEncounterToCDA
Source: HCENEncounter
Target: "http://hl7.org/v3/cda"
Title: "CDA (R2)"
Description: "Mapeo a HL7 CDA R2, según la columna \"Mapeo CDA\" de la hoja HCEN|UYEncounter."
* type -> "ClinicalDocument/componentOf/encompassingEncounter/code"
* type.coding.system -> "ClinicalDocument/componentOf/encompassingEncounter/code/@codeSystem"
* type.coding.code -> "ClinicalDocument/componentOf/encompassingEncounter/code/@code"
* type.coding.display -> "ClinicalDocument/componentOf/encompassingEncounter/code/@displayName"
* serviceType -> "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code"
* serviceType.coding.system -> "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code/@codeSystem"
* serviceType.coding.code -> "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code/@code"
* serviceType.coding.display -> "ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code/@displayName"
* subject -> "ClinicalDocument/recordTarget/patientRole/id"
* participant -> "ClinicalDocument/author/assignedAuthor"
* participant.type -> "ClinicalDocument/author/assignedAuthor"
* participant.period -> "ClinicalDocument/author/time"
* participant.period.start -> "ClinicalDocument/author/time/@value"
* participant.individual -> "ClinicalDocument/author/assignedAuthor"
* period -> "ClinicalDocument/componentOf/encompassingEncounter/effectiveTime"
* period.start -> "ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low/@value"
* period.end -> "ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high/@value"
* serviceProvider -> "ClinicalDocument/author/assignedAuthor/representedOrganization"
