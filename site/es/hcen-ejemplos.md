# Ejemplos de intercambio - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplos de intercambio

Los ejemplos ilustran los perfiles HCEN y dos escenarios de Consulta No Urgente (CNU). Los datos personales son ficticios; los identificadores y las URLs de ejemplo no deben utilizarse como configuración de producción.

### Personas y organizaciones

| | |
| :--- | :--- |
| [María Laura González Pereira](Patient-hcen-paciente-gonzalez.md) | Paciente con MRN y cédula de identidad. |
| [John Doe Smith](Patient-hcen-paciente-smith.md) | Paciente sin CI, con MRN, pasaporte y domicilios en Uruguay y en el exterior. |
| [Paciente con DNI y CI](Patient-hcen-paciente-dni-ci.md) | MRN, DNI nacional y CI HCEN en identificadores independientes; tipos codificados con sus textos descriptivos. |
| [ASSE](Organization-hcen-organizacion-asse.md) | Organización referenciada por los roles; no constituye una asignación de dominios MRN o repositorios. |
| [Martín Andrés Rodríguez Silva](Practitioner-hcen-profesional-rodriguez.md)y[rol en medicina general](PractitionerRole-hcen-rol-medicina-general-rodriguez-asse.md) | Autoría del escenario de publicación. |
| [Guillermo Sousa](Practitioner-hcen-practitioner-sousa.md)y[rol en traumatología](PractitionerRole-hcen-rol-traumatologia-sousa.md) | Autoría del escenario de traumatología. |

### CNU de medicina general: documento y publicación

El [Bundle documental](Bundle-hcen-cnu-medicina-general-bundle.md) representa la consulta del 07/10/2026 por palpitaciones, con diagnóstico de hipertensión arterial. Incluye la Composition como primera entrada, paciente, encuentro, autor, rol, organización y entradas clínicas. Las referencias `urn:uuid:` se resuelven contra los `fullUrl` del documento.

El [Bundle de publicación](Bundle-hcen-provide-document-bundle-cnu-asse.md) contiene ese mismo documento, un SubmissionSet (`List`), un `DocumentReference` y el contexto de paciente y autoría. Permite seguir la identidad documental compartida entre Bundle, Composition y `DocumentReference.masterIdentifier`, distinguirla de la identidad del envío y revisar la membresía del SubmissionSet. Los metadatos se consultan dentro del envío; no se publican como instancias independientes.

Las URL originales FHIR y CDA utilizan el dominio reservado `asse.example.org`, ilustrativo del prestador y sin identificar un servicio real de ASSE. Son distintas de los `urn:uuid:` internos; la correspondencia documental se comprueba por `system` y `value`. La referencia externa al CDA es ilustrativa y no corresponde al Binary de traumatología listado abajo. El envío no incluye un Binary, de acuerdo con la recomendación de [Publicación de documentos](hcen-iti-65.md). El procesamiento y la respuesta se describen en esa transacción.

### CNU de traumatología: recursos individuales y CDA

La [Composition de traumatología](Composition-uy-consulta-no-urgente-traumatologia.md) corresponde al 23/08/2019 y se acompaña de un [Binary con CDA de apoyo](Binary-hcen-binario-cda-consulta-no-urgente.md). Es un escenario distinto del documento de medicina general; no deben intercambiarse sus documentos ni identificadores.

| | |
| :--- | :--- |
| Encuentro | [Consulta de traumatología](Encounter-hcen-encuentro-traumatologia.md) |
| Motivo de consulta | [Mialgia](Condition-hcen-motivo-consulta-mialgia.md) |
| Diagnóstico | [Desgarro muscular](Condition-hcen-diagnostico-desgarro-muscular.md) |
| Procedimientos | [Vendaje](Procedure-hcen-procedimiento-vendaje.md)y[oxígeno](Procedure-hcen-procedimiento-oxigeno.md) |
| Medicación administrada | [Paracetamol](MedicationAdministration-hcen-med-admin-paracetamol.md) |
| Medicación indicada | [Prescripción de paracetamol](MedicationRequest-hcen-med-req-paracetamol.md) |
| Indicaciones y seguimiento | [Reposo](ServiceRequest-hcen-servicio-req-reposo.md)y[control posterior](ServiceRequest-hcen-servicio-req-seguimiento.md) |

La Composition individual no sustituye al Bundle documental requerido para intercambiar un documento FHIR. El perfil de Binary tampoco valida por sí solo las plantillas CDA ni la equivalencia clínica entre XML y FHIR.

### Recorrido de intercambio

El recorrido recomendado registra al paciente mediante HCEN ITI-104, publica la consulta mediante HCEN ITI-65, busca sus metadatos por POST en HCEN ITI-67 y recupera FHIR y CDA mediante HCEN ITI-68. También debe probarse la publicación de un paciente que todavía no existe.

Los ejemplos publicados corresponden a las reglas de publicación de Plataforma.

**PoC — Diferencia con Plataforma**

El tutorial del Gateway incluye ejemplos adaptados para el recorrido local: agrega un Binary con CDA nivel 1 del escenario de medicina general y utiliza referencias internas a las entradas del envío. Las diferencias se explican en [HCEN ITI-65](hcen-iti-65.md). El CDA de traumatología no debe utilizarse como representación de ese documento.

Esta versión no publica cuerpos completos de respuesta HCEN ITI-67 ni una respuesta operativa HCEN ITI-65 con estados no confirmados.

### Alcance de la comprobación

Los ejemplos permiten revisar estructura, referencias, identidades y narrativas. La evaluación de recursos, terminología e intercambios se describe en [Conformidad HCEN](hcen-conformidad.md).

En el ejemplo HCEN ITI-65, `sourceId` identifica una entidad intermediaria ilustrativa mediante un OID sintético, sin asignación oficial declarada. La organización clínica ASSE conserva su identificador de organización. Ambos usan `system = urn:ietf:rfc:3986` y la URI OID completa en `value`.

