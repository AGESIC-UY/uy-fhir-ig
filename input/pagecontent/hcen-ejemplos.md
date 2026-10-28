Los ejemplos ilustran los perfiles HCEN y dos escenarios de Consulta No Urgente (CNU). Los datos personales son ficticios; los identificadores y las URLs de ejemplo no deben utilizarse como configuración de producción.

### Personas y organizaciones

| Ejemplo | Qué ilustra |
| --- | --- |
| [María Laura González Pereira](Patient-hcen-paciente-gonzalez.html) | Paciente con MRN y cédula de identidad. |
| [John Doe Smith](Patient-hcen-paciente-smith.html) | Paciente sin CI, con MRN, pasaporte y domicilios en Uruguay y en el exterior. |
| [Paciente con DNI y CI](Patient-hcen-paciente-dni-ci.html) | MRN, DNI nacional y CI HCEN en identificadores independientes; tipos codificados con sus textos descriptivos. |
| [ASSE](Organization-hcen-organizacion-asse.html) | Organización referenciada por los roles; no constituye una asignación de dominios MRN o repositorios. |
| [Martín Andrés Rodríguez Silva](Practitioner-hcen-profesional-rodriguez.html) y [rol en medicina general](PractitionerRole-hcen-rol-medicina-general-rodriguez-asse.html) | Autoría del escenario de publicación. |
| [Guillermo Sousa](Practitioner-hcen-practitioner-sousa.html) y [rol en traumatología](PractitionerRole-hcen-rol-traumatologia-sousa.html) | Autoría del escenario de traumatología. |

### CNU de medicina general: documento y publicación

El [Bundle documental](Bundle-hcen-cnu-medicina-general-bundle.html) representa la consulta del 07/10/2026 por palpitaciones, con diagnóstico de hipertensión arterial. Incluye la Composition como primera entrada, paciente, encuentro, autor, rol, organización y entradas clínicas. Las referencias `urn:uuid:` se resuelven contra los `fullUrl` del documento.

El [Bundle de publicación](Bundle-hcen-provide-document-bundle-cnu-asse.html) contiene ese mismo documento, un SubmissionSet (`List`), un `DocumentReference` y el contexto de paciente y autoría. Permite seguir la identidad documental compartida entre Bundle, Composition y `DocumentReference.masterIdentifier`, distinguirla de la identidad del envío y revisar la membresía del SubmissionSet. Los metadatos se consultan dentro del envío; no se publican como instancias independientes.

Las URL originales FHIR y CDA utilizan el dominio reservado `asse.example.org`, ilustrativo del prestador y sin identificar un servicio real de ASSE. Son distintas de los `urn:uuid:` internos; la correspondencia documental se comprueba por `system` y `value`. La referencia externa al CDA es ilustrativa y no corresponde al Binary de traumatología listado abajo. El envío no incluye un Binary, de acuerdo con la recomendación de [Publicación de documentos](hcen-iti-65.html). El procesamiento y la respuesta se describen en esa transacción.

### CNU de traumatología: recursos individuales y CDA

La [Composition de traumatología](Composition-uy-consulta-no-urgente-traumatologia.html) corresponde al 23/08/2019 y se acompaña de un [Binary con CDA de apoyo](Binary-hcen-binario-cda-consulta-no-urgente.html). Es un escenario distinto del documento de medicina general; no deben intercambiarse sus documentos ni identificadores.

| Contenido | Ejemplo |
| --- | --- |
| Encuentro | [Consulta de traumatología](Encounter-hcen-encuentro-traumatologia.html) |
| Motivo de consulta | [Mialgia](Condition-hcen-motivo-consulta-mialgia.html) |
| Diagnóstico | [Desgarro muscular](Condition-hcen-diagnostico-desgarro-muscular.html) |
| Procedimientos | [Vendaje](Procedure-hcen-procedimiento-vendaje.html) y [oxígeno](Procedure-hcen-procedimiento-oxigeno.html) |
| Medicación administrada | [Paracetamol](MedicationAdministration-hcen-med-admin-paracetamol.html) |
| Medicación indicada | [Prescripción de paracetamol](MedicationRequest-hcen-med-req-paracetamol.html) |
| Indicaciones y seguimiento | [Reposo](ServiceRequest-hcen-servicio-req-reposo.html) y [control posterior](ServiceRequest-hcen-servicio-req-seguimiento.html) |

La Composition individual no sustituye al Bundle documental requerido para intercambiar un documento FHIR. El perfil de Binary tampoco valida por sí solo las plantillas CDA ni la equivalencia clínica entre XML y FHIR.

<a id="recorrido-intercambio"></a>
### Recorrido de intercambio

El recorrido recomendado registra al paciente mediante HCEN ITI-104, publica la consulta mediante HCEN ITI-65, busca sus metadatos por POST en HCEN ITI-67 y recupera FHIR y CDA mediante HCEN ITI-68. También debe probarse la publicación de un paciente que todavía no existe.

Los ejemplos publicados corresponden a las reglas de publicación de Plataforma.

<!-- HCEN-POC: inicio -->
<div class="hcen-poc" style="border:2px solid #b42318;border-left-width:6px;background:#fff4f2;padding:1em;margin:1em 0;">
  <p><strong>PoC — Diferencia con Plataforma</strong></p>
  <p>El tutorial del Gateway incluye ejemplos adaptados para el recorrido local: agrega un Binary con CDA nivel 1 del escenario de medicina general y utiliza referencias internas a las entradas del envío. Las diferencias se explican en <a href="hcen-iti-65.html">HCEN ITI-65</a>. El CDA de traumatología no debe utilizarse como representación de ese documento.</p>
</div>
<!-- HCEN-POC: fin -->

Esta versión no publica cuerpos completos de respuesta HCEN ITI-67 ni una respuesta operativa HCEN ITI-65 con estados no confirmados.

### Alcance de la comprobación

Los ejemplos permiten revisar estructura, referencias, identidades y narrativas. La evaluación de recursos, terminología e intercambios se describe en [Conformidad HCEN](hcen-conformidad.html).

En el ejemplo HCEN ITI-65, `sourceId` identifica una entidad intermediaria ilustrativa mediante un OID sintético, sin asignación oficial declarada. La organización clínica ASSE conserva su identificador de organización. Ambos usan `system = urn:ietf:rfc:3986` y la URI OID completa en `value`.
