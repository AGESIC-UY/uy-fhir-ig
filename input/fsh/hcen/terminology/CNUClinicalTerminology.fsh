// Terminología clínica específica de la Hoja de Consulta No Urgente (CNU).
// Los ejes documentales específicos se mantienen en la terminología HCEN.

// ValueSet: Motivos de Consulta (SNOMED CT, listado de prueba)
// Fuente: docs/Códigos para prueba FHIR.xlsx, pestaña "MC".
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSMotivosConsulta
Id: vs-motivos-consulta
Title: "Conjunto de Valores Motivos de Consulta"
Description: "Motivos de consulta: listado de códigos SNOMED CT de prueba (docs/Códigos para prueba FHIR.xlsx, pestaña MC)."

* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#80313002 "palpitaciones (hallazgo)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#185349003 "control de salud (procedimiento)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#248228001 "lipotimia (hallazgo)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#68154008 "tos crónica"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#60845006 "disnea de esfuerzo"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#25064002 "cefalea (hallazgo)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#21522001 "dolor abdominal (hallazgo)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#300995000 "angina de esfuerzo (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#371807002 "angina de pecho atípica (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#67882000 "prurito de la vulva (trastorno)"

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Diagnósticos (SNOMED CT, listado de prueba)
// Fuente: docs/Códigos para prueba FHIR.xlsx, pestaña "Dg".
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSDiagnosticoConsulta
Id: vs-diagnostico-consulta
Title: "Conjunto de Valores Diagnósticos"
Description: "Diagnósticos: listado de códigos SNOMED CT de prueba (docs/Códigos para prueba FHIR.xlsx, pestaña Dg)."

* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#27337007 "extrasístoles ventriculares unifocales"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#38341003 "hipertensión arterial (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#302866003 "hipoglicemia (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#235595009 "enfermedad por reflujo gastroesofágico (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#446221000 "insuficiencia cardíaca con fracción de eyección conservada (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#398057008 "cefalea de tipo tensional (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#4556007 "gastritis (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#413838009 "cardiopatía isquémica crónica (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#1381430004 "angina de pecho sin obstrucción de arterias coronarias (trastorno)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#1085006 "candidiasis de la vulva (trastorno)"

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Tipo de Procedimiento (SNOMED) — PLACEHOLDER
// PENDIENTE: la hoja HCEN|UYProcedimiento solo nombra el binding
// "tipo-procedimientos" (agrupador diagnóstico/terapéutico), sin listado
// de códigos en Recursos HCEN FHIR_v2.xlsx.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSTipoProcedimiento
Id: vs-tipo-procedimiento
Title: "Conjunto de Valores Tipo de Procedimiento (borrador)"
Description: "PENDIENTE: agrupador de tipo de procedimiento (p.ej. diagnóstico, terapéutico). Contiene un código de ejemplo mientras se define el listado oficial."
* ^status = #draft

* $SCT#71388002 "Procedure (procedure)" // PLACEHOLDER — reemplazar con el listado oficial de tipo de procedimiento

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Procedimientos (SNOMED CT, listado de prueba)
// Fuente: docs/Códigos para prueba FHIR.xlsx, pestaña "Procedimiento".
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSProcedimientos
Id: vs-procedimientos
Title: "Conjunto de Valores Procedimientos"
Description: "Procedimientos: listado de códigos SNOMED CT de prueba (docs/Códigos para prueba FHIR.xlsx, pestaña Procedimiento)."

* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#29303009 "procedimiento electrocardiográfico (procedimiento)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#46973005 "medir la presión arterial (procedimiento)"
* $SCTUY|http://snomed.info/sct/5631000179106/version/20260615#166900001 "determinación de glicemia por medidor de glucosa (procedimiento)"

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Resultado de Procedimiento (SNOMED)
// Listado real tomado de la hoja ValueSets de Recursos HCEN FHIR_v2.xlsx
// (columnas "Resultado procedimiento" / Concept / ID).
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSResultadoProcedimiento
Id: vs-resultado-procedimiento
Title: "Conjunto de Valores Resultado de Procedimiento"
Description: "Resultados posibles de un procedimiento (procedure.outcome)."

* $SCT#10828004 "positivo"
* $SCT#125154007 "espécimen insatisfactorio para evaluación"
* $SCT#260415000 "no detectado"
* $SCT#280413001 "resultado normal"
* $SCT#280415008 "resultado anormal"
* $SCT#419984006 "no concluyente"

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Medicamentos (SNOMED) — PLACEHOLDER
// PENDIENTE: la hoja HCEN|UYMedicationaAdministratio (y UYMedicationaRequest)
// referencian un refset SNOMED para el código del medicamento, sin listado
// de códigos en Recursos HCEN FHIR_v2.xlsx. Nota: el comentario de esa fila
// en el Excel menciona "código del procedimiento"/"refset procedimientos"
// — texto copiado de la hoja HCEN|UYProcedimiento por error; el value set
// real de medicamentos no está definido en ningún lado del archivo.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSMedicamentos
Id: vs-medicamentos
Title: "Conjunto de Valores Medicamentos (borrador)"
Description: "PENDIENTE: subconjunto de códigos SNOMED CT para medicamentos, utilizado en la validación del CDA. Contiene un código de ejemplo mientras se define el listado oficial."
* ^status = #draft

* $SCT#763158003 "Medicinal product (product)" // PLACEHOLDER — reemplazar con el listado oficial de medicamentos

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Sitio de Administración (SNOMED) — PLACEHOLDER
// PENDIENTE: la hoja dice "creemos que puede aplicar el subset de
// localización ya definido", pero ningún subset de sitios anatómicos está
// definido en Recursos HCEN FHIR_v2.xlsx.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSSitioAdministracion
Id: vs-sitio-administracion
Title: "Conjunto de Valores Sitio de Administración (borrador)"
Description: "PENDIENTE: subconjunto de códigos SNOMED CT para sitios anatómicos de administración de medicación. Contiene un código de ejemplo mientras se define el listado oficial."
* ^status = #draft

* $SCT#91723000 "Anatomical structure (body structure)" // PLACEHOLDER — reemplazar con el listado oficial de sitios de administración

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Vía de Administración — PLACEHOLDER
// PENDIENTE: la hoja dice "está definido value set para la administración
// farmacológica en la asistencia", pero ningún value set de vías de
// administración está definido en Recursos HCEN FHIR_v2.xlsx. Se usa como
// base el CodeSystem v3 RouteOfAdministration (ya aliasado en este
// proyecto como $v3-RouteOfAdmin) con un código de ejemplo.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSViaAdministracion
Id: vs-via-administracion
Title: "Conjunto de Valores Vía de Administración (borrador)"
Description: "PENDIENTE: subconjunto de códigos para vías de administración farmacológica (oral, intravenosa, intramuscular, subcutánea, inhalatoria, etc.). Contiene un código de ejemplo mientras se define el listado oficial."
* ^status = #draft

* $v3-RouteOfAdmin#PO "Oral" // PLACEHOLDER — reemplazar con el listado oficial de vías de administración

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Solicitud de Procedimiento (SNOMED) — PLACEHOLDER
// PENDIENTE: la hoja HCEN|UYServiceRequest referencia un refset "solicitudes
// de procedimientos" (extensión uruguaya de SNOMED) para code.coding:snomed,
// sin listado de códigos en Recursos HCEN FHIR_v2.xlsx.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSSolicitudProcedimiento
Id: vs-solicitud-procedimiento
Title: "Conjunto de Valores Solicitud de Procedimiento (borrador)"
Description: "PENDIENTE: subconjunto de códigos SNOMED CT para solicitudes de servicio/procedimiento (refset uruguayo de solicitudes de procedimientos), utilizado en la validación del CDA. Contiene un código de ejemplo mientras se define el listado oficial."
* ^status = #draft

* $SCT#71388002 "Procedure (procedure)" // PLACEHOLDER — reemplazar con el refset oficial de solicitudes de procedimientos

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Estados válidos para HCENConsultaNoUrgente (Composition.status)
// Restricción real pedida en la hoja HCEN|UYConsultaNoUrgente ("deberíamos
// restringirlo únicamente a final, amended y entered-in-error") — no es un
// placeholder, los 3 códigos son reales y completos.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSCompositionStatusCNU
Id: vs-composition-status-cnu
Title: "Conjunto de Valores Estado de la Consulta No Urgente"
Description: "Subconjunto de Composition.status permitido para HCENConsultaNoUrgente: final, amended y entered-in-error (excluye preliminary, que no tiene mapeo CDA aplicable)."

* $compositionStatus#final "final"
* $compositionStatus#amended "amended"
* $compositionStatus#entered-in-error "entered-in-error"

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Confidencialidad para HCENConsultaNoUrgente
// Restricción real pedida en la hoja HCEN|UYConsultaNoUrgente ("de los
// valores posibles deberíamos poder restringir a N, R, V") — códigos
// reales del CodeSystem v3-Confidentiality, no un placeholder.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSConfidentialityCNU
Id: vs-confidentiality-cnu
Title: "Conjunto de Valores Confidencialidad de la Consulta No Urgente"
Description: "Subconjunto de Composition.confidentiality permitido para HCENConsultaNoUrgente: N (normal), R (restricted) y V (very restricted)."

* $v3-Confidentiality#N "normal"
* $v3-Confidentiality#R "restricted"
* $v3-Confidentiality#V "very restricted"

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Categorías de Condition extendidas para CNU
// La hoja "ValueSets" de Recursos HCEN FHIR_v2.xlsx documenta esta tabla
// como "Condition Category Codes (Extensible)": la base FHIR
// (problem-list-item, encounter-diagnosis) más dos códigos SNOMED CT
// locales, ya usados como valor fijo de Condition.category en
// HCENMotivoConsulta (7611000179107) y HCENDiagnostico (439401001).
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSConditionCategoryCNU
Id: vs-condition-category-cnu
Title: "Conjunto de Valores Categoría de Condition (CNU)"
Description: "Extiende el conjunto de valores base de Condition.category (problem-list-item, encounter-diagnosis) con los códigos SNOMED CT locales usados para motivo de consulta y diagnóstico en la Hoja de Consulta No Urgente."

* codes from valueset http://hl7.org/fhir/ValueSet/condition-category
* $SCT#7611000179107 "motivo-consulta"
* $SCT#439401001 "diagnostico"

// ─────────────────────────────────────────────────────────────────────
