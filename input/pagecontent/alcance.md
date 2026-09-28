Esta sección explica qué cubre la guía y cómo encontrar la información necesaria para una implementación. Está dirigida tanto a quienes comienzan con FHIR como a quienes necesitan localizar una regla técnica concreta.

**Acceso directo:** [perfiles nacionales](perfiles.html) · [introducción a HCEN](hcen.html) · [índice de artefactos](artifacts.html).

### Core Uruguay: representación común

El Core reúne definiciones reutilizables para representar información de salud en el contexto uruguayo. Aborda decisiones que pueden aparecer en distintas implementaciones: cómo identificar a una persona u organización, cómo estructurar un nombre o una dirección y qué terminología utilizar. Publica [perfiles nacionales](perfiles.html), [identificadores y datos comunes](identificadores.html), [extensiones](extensiones.html), [terminología](terminologia.html) y [ejemplos](ejemplos.html).

Estas definiciones describen la representación de los datos. No establecen por sí solas las operaciones ni las obligaciones de un sistema que intercambia información con HCEN.

### Guía HCEN: interoperabilidad con la plataforma

La interoperabilidad con la Plataforma HCEN es el foco principal de esta publicación. La Guía HCEN aplica las definiciones comunes a ese objetivo y documenta [actores](hcen-actores.html), [casos de uso](hcen-casos-de-uso.html), [transacciones](hcen-transacciones.html) y [perfiles propios](hcen-perfiles.html). Sus reglas incluyen tanto la estructura de los datos como las responsabilidades de los sistemas durante el intercambio.

En esta versión, el recorrido HCEN cubre el registro y la actualización de pacientes, la publicación de documentos, la consulta de metadatos y la recuperación de documentos. Los detalles de cada operación se consultan en su transacción; esta página no añade requisitos a esas definiciones.

### HCEN puede implementarse directamente

Si el objetivo es integrar un sistema con la Plataforma HCEN, **se puede empezar por la Guía HCEN**. No se requiere implementar el Core como una etapa previa o como un producto separado. Las definiciones nacionales que correspondan se aplican dentro de la implementación HCEN, porque sus perfiles las heredan o las reutilizan.

Por ejemplo, [HCENPatient](StructureDefinition-hcen-patient.html) deriva de [UYPatient](StructureDefinition-uy-patient.html). Una instancia que cumple el perfil HCEN debe cumplir también las restricciones heredadas del perfil nacional y las restricciones adicionales de HCEN. Esto no significa que el sistema deba soportar todos los perfiles del catálogo Core: se utilizan los que correspondan al intercambio implementado.

### Elegir el recorrido

| Objetivo | Primer paso | Después |
| --- | --- | --- |
| Representar datos para un uso en Uruguay sin una transacción HCEN | Consultar la [introducción al Core](introduccion.html) y elegir el [perfil nacional](perfiles.html) aplicable. | Completar los datos con sus tipos, extensiones y terminología; revisar los [ejemplos Core](ejemplos.html). |
| Integrar un sistema con HCEN | Comenzar por la [introducción a HCEN](hcen.html) e identificar el [actor](hcen-actores.html) y el [caso de uso](hcen-casos-de-uso.html). | Seguir la [transacción](hcen-transacciones.html), los [perfiles HCEN](hcen-perfiles.html) y las [obligaciones de conformidad](hcen-conformidad.html). Consultar las definiciones Core enlazadas cuando sea necesario. |

Para quien comienza con FHIR, los [conceptos básicos](conceptos-fhir.html) y la explicación de [cómo leer los perfiles](como-leer.html) acompañan cualquiera de los dos recorridos. Las [convenciones de conformidad](conformidad.html) explican cómo reconocer las obligaciones.

### Límites de esta versión

Esta publicación es un **borrador de desarrollo**. El Core contiene una primera base nacional. HCEN documenta cuatro transacciones para pacientes y documentos, pero algunos contratos operativos, aspectos de seguridad y criterios de acreditación siguen pendientes de cierre. La descripción de una transacción en este borrador no implica que el servicio esté disponible ni que una implementación esté acreditada.
