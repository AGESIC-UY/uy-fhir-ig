// Terminología clínica específica de la Hoja de Consulta No Urgente (CNU).
// Los ejes documentales específicos se mantienen en la terminología HCEN.

// ValueSet: Motivos de Consulta (SNOMED CT-UY, refset oficial)
// Fuente: input-cache/Pack CMD_Version 9.4.4/Subconjuntos de valores_
// edUYSNOMED_20260615/Subconjuntos del cuerpo/Motivo de consulta,
// diagnóstico_20260615.xlsx — 141.695 conceptos, prácticamente la
// jerarquía completa de "Clinical finding" (no un listado chico curado).
// En vez de enumerar cada código, se referencia por membresía el refset
// SNOMED CT-UY 261341000179103 (SNOMED CT edición Uruguay, MAIN/
// SNOMEDCT-ES/SNOMEDCT-UY/2026-06-15) del que ese archivo es el volcado
// de miembros — mecanismo estándar de FHIR para subsets grandes de
// SNOMED CT (filter concept/in/<refsetId>), en vez de una enumeración
// literal impracticable.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSMotivoConsulta
Id: vs-motivo-consulta
Title: "Conjunto de Valores Motivos de Consulta"
Description: """
Motivos de consulta: miembros del refset SNOMED CT-UY 261341000179103 (SNOMED CT edición Uruguay).
El listado completo de conceptos puede consultarse en el [navegador SNOMED CT-UY](https://snomedbrowser.org/?perspective=full&conceptId1=261341000179103&edition=MAIN/SNOMEDCT-ES/SNOMEDCT-UY/2026-06-15&release=&languages=es,en).
"""
* ^text.status = #extensions
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Motivos de consulta: incluye todos los conceptos SNOMED CT que son miembros del refset SNOMED CT-UY <code>261341000179103</code> (SNOMED CT edición Uruguay). El listado completo de conceptos puede consultarse en el <a href=\"https://snomedbrowser.org/?perspective=full&amp;conceptId1=261341000179103&amp;edition=MAIN/SNOMEDCT-ES/SNOMEDCT-UY/2026-06-15&amp;release=&amp;languages=es,en\">navegador SNOMED CT-UY</a>.</p></div>"

* include codes from system $SCT where concept in #261341000179103

// ─────────────────────────────────────────────────────────────────────
// ValueSet: Diagnósticos (SNOMED CT-UY, mismo refset que Motivos de Consulta)
// Fuente: el mismo archivo que VSMotivoConsulta (input-cache/Pack
// CMD_Version 9.4.4/Subconjuntos de valores_edUYSNOMED_20260615/
// Subconjuntos del cuerpo/Motivo de consulta, diagnóstico_20260615.xlsx)
// — se referencia por membresía el mismo refset SNOMED CT-UY
// 261341000179103, per pedido explícito del usuario.
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSDiagnosticoConsulta
Id: vs-diagnostico-consulta
Title: "Conjunto de Valores Diagnósticos"
Description: """
Diagnósticos: miembros del refset SNOMED CT-UY 261341000179103 (SNOMED CT edición Uruguay).
El listado completo de conceptos puede consultarse en el [navegador SNOMED CT-UY](https://snomedbrowser.org/?perspective=full&conceptId1=261341000179103&edition=MAIN/SNOMEDCT-ES/SNOMEDCT-UY/2026-06-15&release=&languages=es,en).
"""

* include codes from system $SCT where concept in #261341000179103

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
// ValueSet: Procedimientos (SNOMED CT-UY, 2 refsets oficiales)
// La hoja HCEN|UYProcedimiento referencia un refset "procedimientos"
// (extensión uruguaya de SNOMED) para code.coding:snomed. Per pedido
// explícito del usuario, referencia por membresía dos refsets SNOMED
// CT-UY: 268951000179107 y 231971000179103 (unión — cualquiera de los
// dos, dos `include` separados en vez de un único filtro compuesto).
// ─────────────────────────────────────────────────────────────────────

ValueSet: VSProcedimientos
Id: vs-procedimientos
Title: "Conjunto de Valores Procedimientos"
Description: "Procedimientos: miembros de los refsets SNOMED CT-UY 268951000179107 y 231971000179103 (SNOMED CT edición Uruguay)."
* ^text.status = #extensions
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Procedimientos: incluye todos los conceptos SNOMED CT que son miembros de los refsets SNOMED CT-UY <code>268951000179107</code> y <code>231971000179103</code> (SNOMED CT edición Uruguay).</p></div>"

* include codes from system $SCT where concept in #268951000179107
* include codes from system $SCT where concept in #231971000179103

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
* $SCT#41998400 "no concluyente"

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
* http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode#urn:hl7-org:sdwg:ccda-nonXMLBody:2.1 "C-CDA 2.1 con cuerpo no estructurado"

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
