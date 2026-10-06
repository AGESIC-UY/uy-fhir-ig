# Introducción a HCEN - Guía de Implementación FHIR de Uruguay v0.1.0

## Introducción a HCEN

Este bloque describe cómo un prestador registra pacientes, publica metadatos y comparte documentos clínicos mediante la **Historia Clínica Electrónica Nacional (HCEN)**. Reutiliza las representaciones de [Core Uruguay](introduccion.md) y agrega las obligaciones del intercambio. Los términos y siglas propios de este bloque se explican en el [Glosario HCEN](hcen-glosario.md).

### ¿Qué es HCEN?

HCEN permite que los prestadores de salud compartan los documentos clínicos de una persona con fines asistenciales. Su funcionamiento es federado: cada prestador conserva sus documentos en su propio repositorio, y Plataforma registra a los pacientes y los metadatos que permiten encontrar esos documentos. Cuando otro prestador necesita un documento, lo solicita a Plataforma, que lo obtiene del repositorio de origen.

Los documentos permanecen en el prestador de origen; Plataforma registra pacientes y metadatos e intermedia la recuperación.
Las funciones de cada parte se detallan en [Actores y responsabilidades](hcen-actores.md).

### De dónde se parte

El intercambio que esta guía toma como antecedente utiliza documentos **CDA** (Clinical Document Architecture, el formato de documentos clínicos de HL7), metadatos **XDS** (Cross-Enterprise Document Sharing, el perfil de **IHE**, Integrating the Healthcare Enterprise, para compartir documentos entre organizaciones) y mensajería HL7 v2 para la identificación de pacientes. Esta guía describe el mismo intercambio sobre FHIR, tomando como referencia los perfiles equivalentes de IHE.

Ese origen explica dos decisiones que se repiten en las páginas siguientes:

* Cada documento se conserva en **dos representaciones**, FHIR y CDA, y ambas deben poder recuperarse.
* Los metadatos conservan conceptos de XDS, como el conjunto de envío o los identificadores `entryUUID` y `uniqueId`.

| | |
| :--- | :--- |
| Conjunto de envío XDS (SubmissionSet) | Recurso`List`, perfilado en[HCENSubmissionSet](StructureDefinition-hcen-submission-set.md) |
| Metadatos del documento XDS (DocumentEntry) | Recurso`DocumentReference`, perfilado en[HCENDocumentReference](StructureDefinition-hcen-document-reference.md) |
| Documento CDA | Se conserva para recuperación mediante[HCENCdaBinary](StructureDefinition-hcen-cda-binary.md)y se referencia en los metadatos. Binary CDA no debería (SHOULD NOT) enviarse en la publicación |
| Alimentación de identidades de pacientes en HL7 v2 | [Registrar o actualizar pacientes](hcen-iti-104.md), con el recurso`Patient` |
| Publicación y registro de documentos | [Publicar documentos](hcen-iti-65.md) |
| Consulta al registro de metadatos | [Consultar metadatos](hcen-iti-67.md) |
| Recuperación de documentos del repositorio | [Recuperar documentos](hcen-iti-68.md) |

### Alcance de esta versión

La primera versión HCEN abarca cuatro funciones obligatorias para el despliegue de un prestador: registrar y actualizar pacientes, publicar documentos, consultar metadatos y recuperar las representaciones FHIR y CDA. El alcance documental comprende la publicación de documentos nuevos; no incorpora reemplazo ni anulación como operaciones de esta etapa.

La guía continúa en borrador. Los perfiles expresan una primera propuesta computable; las transacciones distinguen las reglas adoptadas para este borrador de los contratos que deben cerrarse antes de una integración operativa. No se publican endpoints reales ni se acredita una implementación de Plataforma.

Autenticación, autorización, consentimiento, auditoría y acreditación no se especifican en esta versión. Consultar [Seguridad y acreditación pendientes](hcen-conformidad.md#seguridad).

### Marco normativo

El intercambio de información clínica con fines asistenciales a través de HCEN está reglamentado por el [Decreto N.º 242/017](https://www.impo.com.uy/bases/decretos/242-2017). Esta guía es una especificación técnica en borrador: no sustituye ni interpreta esa normativa.

### Recorrido de implementación

1. Identificar las funciones del[prestador y de Plataforma](hcen-actores.md).
1. Seleccionar el[caso de uso](hcen-casos-de-uso.md)que se implementará.
1. Consultar su[transacción](hcen-transacciones.md), solicitud, respuesta y pendientes.
1. Completar los[perfiles HCEN](hcen-perfiles.md)con sus extensiones y terminología.
1. Revisar[conformidad y capacidades](hcen-conformidad.md)y los[ejemplos](hcen-ejemplos.md).

### Relación con IHE

Se toma como referencia **Mobile access to Health Documents (MHD), versión 4.2.3**, sobre FHIR R4, para publicación, consulta y recuperación; y **Patient Identifier Cross-referencing for mobile (PIXm), versión 3.1.0**, para alimentación de pacientes. Los códigos ITI que acompañan a cada transacción identifican su referencia en esos perfiles.

HCEN define un contrato local. La reutilización de extensiones, identificadores y patrones de IHE no declara conformidad integral con sus perfiles. En particular, el Bundle de publicación se basa en [UnContained Comprehensive Provide Document Bundle](https://profiles.ihe.net/ITI/MHD/4.2.3/StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.html), y preserva convenciones de identificación y metadatos del ecosistema HCEN/XDS. Transporta el documento FHIR y la referencia al CDA, que no debería (SHOULD NOT) incluirse en el Bundle. Las diferencias se explican en [Publicar documentos](hcen-iti-65.md).

