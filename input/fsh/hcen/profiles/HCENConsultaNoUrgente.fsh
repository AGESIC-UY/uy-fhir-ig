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
//   Este perfil representa específicamente Consulta No Urgente: exige un
//   único coding LOINC 34108-1, sin fijar el display.
// - **`status`**: sin marca de Estado, pero el comentario es una decisión
//   explícita ("deberíamos restringirlo únicamente a final, amended y
//   entered-in-error") — se creó `VSCompositionStatusCNU` (códigos reales,
//   no placeholder) y se aplicó binding required.
// - **`identifier`**: utiliza HCENDocumentIdentifier para representar [oid_documento_clinico],
//   el OID global del documento compartido por FHIR, CDA y
//   DocumentReference.masterIdentifier; su valor no se fija.
// - Sección "observaciones" eliminada: la hoja le daba el mismo código
//   LOINC (18776-5) que "Instrucciones de seguimiento" — casi seguro un
//   copy-paste, ya que dos secciones no pueden compartir el mismo
//   discriminador de slice — y su `entry` referenciaba recursos FHIR base
//   sin perfilar (`Reference(Appointment or Observation)`). Se removió en
//   vez de dejarla sin código fijo.
// - Cardinalidad global de `section` ("slices por section (open)": Card
//   "2..8" en la hoja): SÍ se aplicó como restricción del arreglo completo —
//   hay 8 secciones nombradas (2 obligatorias + 6 opcionales), por lo que el
//   tope de 8 coincide exactamente con el máximo posible y no bloquea
//   ninguna instancia válida. Se modela además cada slice con su propia
//   cardinalidad (fielmente tomada de la hoja); el slicing queda `open`.

Profile: HCENConsultaNoUrgente
Parent: Composition
Id: uy-consulta-no-urgente
Title: "HCEN Consulta No Urgente"
Description: "Hoja de Consulta No Urgente (CNU) - Documento clínico que representa la información asistencial registrada durante una consulta no urgente, realizada en el ámbito institucional, domiciliario o residencial. Incluye el motivo de consulta, los diagnósticos o problemas de salud identificados y, cuando corresponda, los procedimientos realizados, los tratamientos farmacológicos y no farmacológicos realizados o indicados, y las instrucciones para la continuidad asistencial del paciente."
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

* language 0..1
* language = #es-UY (exactly)
* language ^short = "Idioma del documento — fijo a es-UY"
* language ^definition = "Idioma del documento — fijo a es-UY"

// ──────────────────────────────────────────
// identifier — identificador de versión del documento CNU
// ──────────────────────────────────────────

* identifier 1..1
* identifier only HCENDocumentIdentifier
* identifier ^short = "OID global [oid_documento_clinico] del documento de Consulta No Urgente."
* identifier ^definition = "Identificador global [oid_documento_clinico] del documento clínico y su versión, representado mediante HCENDocumentIdentifier y compartido por sus representaciones FHIR/CDA y por DocumentReference.masterIdentifier."

// ──────────────────────────────────────────
// status — restringido a final | amended | entered-in-error
// ──────────────────────────────────────────

* status from VSCompositionStatusCNU (required)
* status ^short = "Estado del documento — restringido a final, amended y entered-in-error"
* status ^definition = "Estado del documento — restringido a final, amended y entered-in-error"

// ──────────────────────────────────────────
// type — Consulta No Urgente (LOINC 34108-1)
// ──────────────────────────────────────────

* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $LOINC (exactly)
* type.coding.code 1..1
* type.coding.code = #34108-1 (exactly)
* type ^short = "Consulta No Urgente — LOINC 34108-1."
* type ^definition = "Clase documental específica de Consulta No Urgente, con exactamente un coding de system http://loinc.org y code 34108-1. El display no se fija como requisito de conformidad."

// ──────────────────────────────────────────
// subject
// ──────────────────────────────────────────

* subject 1..1
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
// date
// ──────────────────────────────────────────

* date ^short = "Fecha de creación del documento"
* date ^definition = "Fecha de creación del documento"

// ──────────────────────────────────────────
// author — profesional autor del documento
// ──────────────────────────────────────────

* author only Reference(HCENPractitionerRole)
* author ^short = "Profesional autor del documento (solo HCENPractitionerRole)"
* author ^definition = "Profesional autor del documento (solo HCENPractitionerRole)"

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
// section — slicing abierto por código, 8 secciones nombradas
// (2 obligatorias: motivos de consulta y diagnósticos; 6 opcionales)
// ──────────────────────────────────────────

* section 2..8
* section ^short = "Secciones que componen el documento de CNU"
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
    instruccionesSeguimiento 0..1

// --- Sección: Motivos de consulta (obligatoria) ---
* section[motivosConsulta].title = "Motivos de consulta"
* section[motivosConsulta].title MS
* section[motivosConsulta].title ^short = "Título que identifica la sección Motivo de consulta"
* section[motivosConsulta].title ^definition = "Título que identifica la sección Motivo de consulta."
* section[motivosConsulta].code = $LOINC#10154-3 "Motivo de consulta" (exactly)
* section[motivosConsulta].code ^short = "Código que identifica la sección Motivo de consulta"
* section[motivosConsulta].code ^definition = "Código que identifica la sección Motivo de consulta."
* section[motivosConsulta] ^short = "Sección Motivo de consulta"
* section[motivosConsulta].author 0..0
* section[motivosConsulta].focus 0..0
* section[motivosConsulta].text MS
* section[motivosConsulta].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[motivosConsulta].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[motivosConsulta].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[motivosConsulta].mode 0..0
* section[motivosConsulta].orderedBy 0..0
* section[motivosConsulta].entry 1..*
* section[motivosConsulta].entry only Reference(HCENMotivoConsulta)
* section[motivosConsulta].entry ^short = "Referencias a los motivos de consulta asociados al documento clínico"
* section[motivosConsulta].entry ^definition = "Referencias a los motivos de consulta asociados al documento clínico."

// --- Sección: Diagnósticos (obligatoria) ---
* section[diagnosticos].title = "Diagnósticos"
* section[diagnosticos].title MS
* section[diagnosticos].title ^short = "Título que identifica la sección Diagnóstico"
* section[diagnosticos].title ^definition = "Título que identifica la sección Diagnóstico."
* section[diagnosticos].code = $LOINC#11450-4 "Diagnostico" (exactly)
* section[diagnosticos].code ^short = "Código que identifica la sección Diagnóstico"
* section[diagnosticos].code ^definition = "Código que identifica la sección Diagnóstico."
* section[diagnosticos] ^short = "Sección Diagnóstico"
* section[diagnosticos].author 0..0
* section[diagnosticos].focus 0..0
* section[diagnosticos].text MS
* section[diagnosticos].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[diagnosticos].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[diagnosticos].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[diagnosticos].mode 0..0
* section[diagnosticos].orderedBy 0..0
* section[diagnosticos].entry 1..*
* section[diagnosticos].entry only Reference(HCENDiagnostico)
* section[diagnosticos].entry ^short = "Referencias a los diagnósticos asociados al documento clínico"
* section[diagnosticos].entry ^definition = "Referencias a los diagnósticos asociados al documento clínico."

// --- Sección: Procedimientos relevantes realizados (opcional) ---
* section[procedimientos].title = "Procedimientos relevantes realizados"
* section[procedimientos].title MS
* section[procedimientos].title ^short = "Título que identifica la sección Procedimientos relevantes realizados"
* section[procedimientos].title ^definition = "Título que identifica la sección Procedimientos relevantes realizados."
* section[procedimientos].code = $LOINC#47519-4 "Procedimientos relevantes realizados" (exactly)
* section[procedimientos].code ^short = "Código que identifica la sección Procedimientos relevantes realizados"
* section[procedimientos].code ^definition = "Código que identifica la sección Procedimientos relevantes realizados."
* section[procedimientos] ^short = "Sección Procedimientos relevantes realizados"
* section[procedimientos].author 0..0
* section[procedimientos].focus 0..0
* section[procedimientos].text MS
* section[procedimientos].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[procedimientos].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[procedimientos].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[procedimientos].mode 0..0
* section[procedimientos].orderedBy 0..0
* section[procedimientos].entry 1..*
* section[procedimientos].entry only Reference(HCENProcedimiento)
* section[procedimientos].entry ^short = "Referencias a los procedimientos relevantes realizados asociados al documento clínico"
* section[procedimientos].entry ^definition = "Referencias a los procedimientos relevantes realizados asociados al documento clínico."

// --- Sección: Tratamiento no farmacológico realizado durante la asistencia (opcional) ---
* section[tratamientoNoFarmacologicoRealizado].title = "Tratamiento no farmacológico realizado durante la asistencia"
* section[tratamientoNoFarmacologicoRealizado].title MS
* section[tratamientoNoFarmacologicoRealizado].title ^short = "Título que identifica la sección Tratamiento no farmacológico realizado durante la asistencia"
* section[tratamientoNoFarmacologicoRealizado].title ^definition = "Título que identifica la sección Tratamiento no farmacológico realizado durante la asistencia."
* section[tratamientoNoFarmacologicoRealizado].code = $SCT#258071000179109 "Tratamiento no farmacológico realizado durante la asistencia" (exactly)
* section[tratamientoNoFarmacologicoRealizado].code ^short = "Código que identifica la sección Tratamiento no farmacológico realizado durante la asistencia"
* section[tratamientoNoFarmacologicoRealizado].code ^definition = "Código que identifica la sección Tratamiento no farmacológico realizado durante la asistencia."
* section[tratamientoNoFarmacologicoRealizado] ^short = "Sección Tratamiento no farmacológico realizado durante la asistencia"
* section[tratamientoNoFarmacologicoRealizado].author 0..0
* section[tratamientoNoFarmacologicoRealizado].focus 0..0
* section[tratamientoNoFarmacologicoRealizado].text MS
* section[tratamientoNoFarmacologicoRealizado].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[tratamientoNoFarmacologicoRealizado].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[tratamientoNoFarmacologicoRealizado].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[tratamientoNoFarmacologicoRealizado].mode 0..0
* section[tratamientoNoFarmacologicoRealizado].orderedBy 0..0
* section[tratamientoNoFarmacologicoRealizado].entry 1..*
* section[tratamientoNoFarmacologicoRealizado].entry only Reference(HCENProcedimiento)
* section[tratamientoNoFarmacologicoRealizado].entry ^short = "Referencias a los tratamientos no farmacológicos realizados durante la asistencia asociados al documento clínico"
* section[tratamientoNoFarmacologicoRealizado].entry ^definition = "Referencias a los tratamientos no farmacológicos realizados durante la asistencia asociados al documento clínico."

// --- Sección: Tratamiento farmacológico realizado durante la asistencia (opcional) ---
* section[tratamientoFarmacologicoRealizado].title = "Tratamiento farmacológico realizado durante la asistencia"
* section[tratamientoFarmacologicoRealizado].title MS
* section[tratamientoFarmacologicoRealizado].title ^short = "Título que identifica la sección Tratamiento farmacológico realizado durante la asistencia"
* section[tratamientoFarmacologicoRealizado].title ^definition = "Título que identifica la sección Tratamiento farmacológico realizado durante la asistencia."
* section[tratamientoFarmacologicoRealizado].code = $LOINC#19011-6 "Tratamiento farmacológico realizado durante la asistencia" (exactly)
* section[tratamientoFarmacologicoRealizado].code ^short = "Código que identifica la sección Tratamiento farmacológico realizado durante la asistencia"
* section[tratamientoFarmacologicoRealizado].code ^definition = "Código que identifica la sección Tratamiento farmacológico realizado durante la asistencia."
* section[tratamientoFarmacologicoRealizado] ^short = "Sección Tratamiento farmacológico realizado durante la asistencia"
* section[tratamientoFarmacologicoRealizado].author 0..0
* section[tratamientoFarmacologicoRealizado].focus 0..0
* section[tratamientoFarmacologicoRealizado].text MS
* section[tratamientoFarmacologicoRealizado].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[tratamientoFarmacologicoRealizado].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[tratamientoFarmacologicoRealizado].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[tratamientoFarmacologicoRealizado].mode 0..0
* section[tratamientoFarmacologicoRealizado].orderedBy 0..0
* section[tratamientoFarmacologicoRealizado].entry 1..*
* section[tratamientoFarmacologicoRealizado].entry only Reference(HCENMedicationAdministration)
* section[tratamientoFarmacologicoRealizado].entry ^short = "Referencias a los tratamientos farmacológicos realizados durante la asistencia asociados al documento clínico"
* section[tratamientoFarmacologicoRealizado].entry ^definition = "Referencias a los tratamientos farmacológicos realizados durante la asistencia asociados al documento clínico."

// --- Sección: Tratamiento no farmacológico indicado al final de la asistencia (opcional) ---
* section[tratamientoNoFarmacologicoFinal].title = "Tratamiento no farmacológico indicado al final de la asistencia"
* section[tratamientoNoFarmacologicoFinal].title MS
* section[tratamientoNoFarmacologicoFinal].title ^short = "Título que identifica la sección Tratamiento no farmacológico indicado al final de la asistencia"
* section[tratamientoNoFarmacologicoFinal].title ^definition = "Título que identifica la sección Tratamiento no farmacológico indicado al final de la asistencia."
* section[tratamientoNoFarmacologicoFinal].code = $SCT#258081000179106 "Tratamiento no farmacológico indicado al final de la asistencia" (exactly)
* section[tratamientoNoFarmacologicoFinal].code ^short = "Código que identifica la sección Tratamiento no farmacológico indicado al final de la asistencia"
* section[tratamientoNoFarmacologicoFinal].code ^definition = "Código que identifica la sección Tratamiento no farmacológico indicado al final de la asistencia."
* section[tratamientoNoFarmacologicoFinal] ^short = "Sección Tratamiento no farmacológico indicado al final de la asistencia"
* section[tratamientoNoFarmacologicoFinal].author 0..0
* section[tratamientoNoFarmacologicoFinal].focus 0..0
* section[tratamientoNoFarmacologicoFinal].text MS
* section[tratamientoNoFarmacologicoFinal].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[tratamientoNoFarmacologicoFinal].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[tratamientoNoFarmacologicoFinal].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[tratamientoNoFarmacologicoFinal].mode 0..0
* section[tratamientoNoFarmacologicoFinal].orderedBy 0..0
* section[tratamientoNoFarmacologicoFinal].entry 1..*
* section[tratamientoNoFarmacologicoFinal].entry only Reference(HCENServiceRequest)
* section[tratamientoNoFarmacologicoFinal].entry ^short = "Referencias a los tratamientos no farmacológicos indicados al final de la asistencia asociados al documento clínico"
* section[tratamientoNoFarmacologicoFinal].entry ^definition = "Referencias a los tratamientos no farmacológicos indicados al final de la asistencia asociados al documento clínico."

// --- Sección: Tratamiento farmacológico indicado al final de la asistencia (opcional) ---
* section[tratamientoFarmacologicoFinal].title = "Tratamiento farmacológico indicado al final de la asistencia"
* section[tratamientoFarmacologicoFinal].title MS
* section[tratamientoFarmacologicoFinal].title ^short = "Título que identifica la sección Tratamiento farmacológico indicado al final de la asistencia"
* section[tratamientoFarmacologicoFinal].title ^definition = "Título que identifica la sección Tratamiento farmacológico indicado al final de la asistencia."
* section[tratamientoFarmacologicoFinal].code = $LOINC#29305-0 "Tratamiento farmacológico indicado al final de la asistencia" (exactly)
* section[tratamientoFarmacologicoFinal].code ^short = "Código que identifica la sección Tratamiento farmacológico indicado al final de la asistencia"
* section[tratamientoFarmacologicoFinal].code ^definition = "Código que identifica la sección Tratamiento farmacológico indicado al final de la asistencia."
* section[tratamientoFarmacologicoFinal] ^short = "Sección Tratamiento farmacológico indicado al final de la asistencia"
* section[tratamientoFarmacologicoFinal].author 0..0
* section[tratamientoFarmacologicoFinal].focus 0..0
* section[tratamientoFarmacologicoFinal].text MS
* section[tratamientoFarmacologicoFinal].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[tratamientoFarmacologicoFinal].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[tratamientoFarmacologicoFinal].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[tratamientoFarmacologicoFinal].mode 0..0
* section[tratamientoFarmacologicoFinal].orderedBy 0..0
* section[tratamientoFarmacologicoFinal].entry 1..*
* section[tratamientoFarmacologicoFinal].entry only Reference(HCENMedicationRequest)
* section[tratamientoFarmacologicoFinal].entry ^short = "Referencias a los tratamientos farmacológicos indicados al final de la asistencia asociados al documento clínico"
* section[tratamientoFarmacologicoFinal].entry ^definition = "Referencias a los tratamientos farmacológicos indicados al final de la asistencia asociados al documento clínico."

// --- Sección: Instrucciones de seguimiento (opcional) ---
* section[instruccionesSeguimiento].title = "Instrucciones de seguimiento"
* section[instruccionesSeguimiento].title MS
* section[instruccionesSeguimiento].title ^short = "Título que identifica la sección Instrucciones de seguimiento"
* section[instruccionesSeguimiento].title ^definition = "Título que identifica la sección Instrucciones de seguimiento."
* section[instruccionesSeguimiento].code = $LOINC#18776-5 "Instrucciones de seguimiento" (exactly)
* section[instruccionesSeguimiento].code ^short = "Código que identifica la sección Instrucciones de seguimiento"
* section[instruccionesSeguimiento].code ^definition = "Código que identifica la sección Instrucciones de seguimiento."
* section[instruccionesSeguimiento] ^short = "Sección Instrucciones de seguimiento"
* section[instruccionesSeguimiento].author 0..0
* section[instruccionesSeguimiento].focus 0..0
* section[instruccionesSeguimiento].text MS
* section[instruccionesSeguimiento].text ^short = "Contenido narrativo de la sección para interpretación humana"
* section[instruccionesSeguimiento].text ^definition = "Contenido narrativo de la sección para interpretación humana, sin restricciones específicas respecto a su contenido, idioma o trazabilidad con los elementos de datos estructurados."
* section[instruccionesSeguimiento].text ^comment = "This profile does not constrain the narrative in regard to content, language, or traceability to data elements."
* section[instruccionesSeguimiento].mode 0..0
* section[instruccionesSeguimiento].orderedBy 0..0
* section[instruccionesSeguimiento].entry 1..*
* section[instruccionesSeguimiento].entry only Reference(HCENServiceRequest)
* section[instruccionesSeguimiento].entry ^short = "Referencias a las instrucciones de seguimiento asociadas al documento clínico"
* section[instruccionesSeguimiento].entry ^definition = "Referencias a las instrucciones de seguimiento asociadas al documento clínico."

// ──────────────────────────────────────────
// Mapeo CDA — columna "Mapeo CDA" de la hoja HCEN|UYConsultaNoUrgente
// La cabecera del Composition tiene mapeo completo, y las 8 secciones
// también: motivos de consulta, diagnósticos, procedimientos y los 4
// bloques de tratamiento/instrucciones traen mapeo granular propio (title,
// code/coding, text, entry) contra
// ClinicalDocument/component/structuredBody/component/section[code/@code=...].
// Se corrigen errores de tipeo evidentes del Excel (p.ej. "efectivetime" →
// "effectiveTime", "Clinicaldocument" → "ClinicalDocument", "sytem" →
// "system") para que el mapeo sea útil como referencia real.
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
* confidentiality -> "ClinicalDocument.confidentialityCode"
* custodian -> "ClinicalDocument.custodian"

// --- Sección: Motivos de consulta ---
* section[motivosConsulta] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='10154-3']"
* section[motivosConsulta].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='10154-3']/title"
* section[motivosConsulta].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='10154-3']/code/@codeSystem"
* section[motivosConsulta].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='10154-3']/code/@code"
* section[motivosConsulta].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='10154-3']/code/@displayName"
* section[motivosConsulta].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='10154-3']/text"
* section[motivosConsulta].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='10154-3']/entry"

// --- Sección: Diagnósticos ---
* section[diagnosticos] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='11450-4']"
* section[diagnosticos].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='11450-4']/title"
* section[diagnosticos].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='11450-4']/code/@codeSystem"
* section[diagnosticos].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='11450-4']/code/@code"
* section[diagnosticos].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='11450-4']/code/@displayName"
* section[diagnosticos].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='11450-4']/text"
* section[diagnosticos].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='11450-4']/entry"

// --- Sección: Procedimientos relevantes realizados ---
* section[procedimientos] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='47519-4']"
* section[procedimientos].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='47519-4']/title"
* section[procedimientos].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='47519-4']/code/@codeSystem"
* section[procedimientos].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='47519-4']/code/@code"
* section[procedimientos].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='47519-4']/code/@displayName"
* section[procedimientos].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='47519-4']/text"
* section[procedimientos].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='47519-4']/entry"

// --- Sección: Tratamiento no farmacológico realizado durante la asistencia ---
* section[tratamientoNoFarmacologicoRealizado] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258071000179109']"
* section[tratamientoNoFarmacologicoRealizado].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258071000179109']/title"
* section[tratamientoNoFarmacologicoRealizado].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258071000179109']/code/@codeSystem"
* section[tratamientoNoFarmacologicoRealizado].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258071000179109']/code/@code"
* section[tratamientoNoFarmacologicoRealizado].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258071000179109']/code/@displayName"
* section[tratamientoNoFarmacologicoRealizado].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258071000179109']/text"
* section[tratamientoNoFarmacologicoRealizado].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258071000179109']/entry"

// --- Sección: Tratamiento farmacológico realizado durante la asistencia ---
* section[tratamientoFarmacologicoRealizado] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='19011-6']"
* section[tratamientoFarmacologicoRealizado].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='19011-6']/title"
* section[tratamientoFarmacologicoRealizado].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='19011-6']/code/@codeSystem"
* section[tratamientoFarmacologicoRealizado].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='19011-6']/code/@code"
* section[tratamientoFarmacologicoRealizado].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='19011-6']/code/@displayName"
* section[tratamientoFarmacologicoRealizado].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='19011-6']/text"
* section[tratamientoFarmacologicoRealizado].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='19011-6']/entry"

// --- Sección: Tratamiento no farmacológico indicado al final de la asistencia ---
* section[tratamientoNoFarmacologicoFinal] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258081000179106']"
* section[tratamientoNoFarmacologicoFinal].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258081000179106']/title"
* section[tratamientoNoFarmacologicoFinal].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258081000179106']/code/@codeSystem"
* section[tratamientoNoFarmacologicoFinal].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258081000179106']/code/@code"
* section[tratamientoNoFarmacologicoFinal].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258081000179106']/code/@displayName"
* section[tratamientoNoFarmacologicoFinal].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258081000179106']/text"
* section[tratamientoNoFarmacologicoFinal].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='258081000179106']/entry"

// --- Sección: Tratamiento farmacológico indicado al final de la asistencia ---
* section[tratamientoFarmacologicoFinal] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='29305-0']"
* section[tratamientoFarmacologicoFinal].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='29305-0']/title"
* section[tratamientoFarmacologicoFinal].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='29305-0']/code/@codeSystem"
* section[tratamientoFarmacologicoFinal].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='29305-0']/code/@code"
* section[tratamientoFarmacologicoFinal].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='29305-0']/code/@displayName"
* section[tratamientoFarmacologicoFinal].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='29305-0']/text"
* section[tratamientoFarmacologicoFinal].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='29305-0']/entry"

// --- Sección: Instrucciones de seguimiento ---
* section[instruccionesSeguimiento] -> "ClinicalDocument/component/structuredBody/component/section[code/@code='18776-5']"
* section[instruccionesSeguimiento].title -> "ClinicalDocument/component/structuredBody/component/section[code/@code='18776-5']/title"
* section[instruccionesSeguimiento].code.coding.system -> "ClinicalDocument/component/structuredBody/component/section[code/@code='18776-5']/code/@codeSystem"
* section[instruccionesSeguimiento].code.coding.code -> "ClinicalDocument/component/structuredBody/component/section[code/@code='18776-5']/code/@code"
* section[instruccionesSeguimiento].code.coding.display -> "ClinicalDocument/component/structuredBody/component/section[code/@code='18776-5']/code/@displayName"
* section[instruccionesSeguimiento].text -> "ClinicalDocument/component/structuredBody/component/section[code/@code='18776-5']/text"
* section[instruccionesSeguimiento].entry -> "ClinicalDocument/component/structuredBody/component/section[code/@code='18776-5']/entry"
