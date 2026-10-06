Esta sección explica qué cubre la guía y cómo encontrar la información necesaria para una implementación. Está dirigida tanto a quienes comienzan con FHIR como a quienes necesitan localizar una regla técnica concreta.

**Acceso directo:** [perfiles nacionales](perfiles.html) · [introducción a HCEN](hcen.html) · [índice de artefactos](artifacts.html).

### Core Uruguay

El Core reúne las definiciones generales para representar información de salud en el contexto uruguayo. Aborda decisiones que pueden aparecer en distintas implementaciones: cómo identificar a una persona u organización, cómo estructurar un nombre o una dirección y qué terminología utilizar. Publica [perfiles nacionales](perfiles.html), [identificadores y datos comunes](identificadores.html), [extensiones](extensiones.html), [terminología](terminologia.html) y [ejemplos](ejemplos.html).

### Guía HCEN

La Guía HCEN reúne las definiciones necesarias para implementar la interoperabilidad con HCEN sobre FHIR. Documenta [actores](hcen-actores.html), [casos de uso](hcen-casos-de-uso.html), [transacciones](hcen-transacciones.html) y [perfiles propios](hcen-perfiles.html). Sus reglas incluyen tanto la estructura de los datos como las responsabilidades de los sistemas durante el intercambio.

En esta versión, el recorrido HCEN cubre el registro y actualización de pacientes, la publicación de documentos, la consulta de metadatos y la recuperación de documentos.

#### HCEN puede implementarse directamente

Si el objetivo es integrar un sistema con la Plataforma HCEN, **se puede empezar por la Guía HCEN**, no se requiere implementar el Core como una etapa previa. Las definiciones nacionales que correspondan se aplican dentro de la implementación HCEN, porque sus perfiles las heredan o las reutilizan.

Por ejemplo, [HCENPatient](StructureDefinition-hcen-patient.html) deriva de [UYPatient](StructureDefinition-uy-patient.html). Una instancia que cumple el perfil HCEN cumple también las restricciones heredadas del perfil nacional Core UY.

### Recorrido sugerido
1. Para conocer el vocabulario, comenzar por los [conceptos básicos de FHIR](conceptos-fhir.html).
2. Para interpretar una definición técnica, seguir con [cómo leer los perfiles](como-leer.html) y las [convenciones de conformidad](conformidad.html).
3. Para representar información general, identificar el [perfil nacional](perfiles.html) y consultar los [datos comunes](identificadores.html) que utiliza.
4. Para implementar los intercambios con HCEN, comprender los [casos de uso](hcen-casos-de-uso.html), las [transacciones](hcen-transacciones.html) y las obligaciones HCEN correspondientes.

### Límites de esta versión

Esta publicación es un **borrador de desarrollo**. El Core contiene una primera base nacional y la Guía HCEN documenta únicamente las transacciones básicas. Las definiciones presentes en estas guías pueden presentar cambios sustanciales mientras el borrador esté en desarrollo.
