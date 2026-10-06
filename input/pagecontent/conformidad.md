Esta sección reúne los criterios comunes para interpretar los requisitos de la guía y comprender qué significa cumplirlos. Se aplica tanto a las definiciones del Core Uruguay como a los intercambios HCEN. 

Las obligaciones específicas se describen en los perfiles, las transacciones y las responsabilidades de cada actor.

### Requisitos, explicaciones y ejemplos

La guía combina distintos tipos de contenido. Reconocer su función permite distinguir una regla de implementación de una explicación que ayuda a entenderla.

| Contenido | Cómo se interpreta |
| --- | --- |
| Requisitos | Establecen las condiciones que se deben cumplir o las opciones y recomendaciones que se aplican en un contexto. Pueden expresarse en el texto o en las definiciones técnicas. |
| Explicaciones | Aportan contexto, describen el propósito de una decisión y orientan la lectura. No agregan por sí solas obligaciones a las definidas para la implementación. |
| Ejemplos y figuras | Ilustran una representación o un comportamiento posible. No enumeran todas las opciones ni sustituyen las reglas del perfil o de la transacción. |
| Puntos pendientes | Identifican decisiones o definiciones todavía abiertas. Su publicación no implica que exista un acuerdo definitivo sobre ellas. |

Los requisitos se leen junto con su ámbito de aplicación. Una regla de una transacción HCEN, por ejemplo, corresponde a ese intercambio y a los actores indicados.

### Lenguaje de los requisitos

Para distinguir el grado de exigencia, la guía utiliza los términos de conformidad habituales en FHIR, acompañados por su equivalente en español.

| Término | Lectura en español | Alcance |
| --- | --- | --- |
| **SHALL** | Debe | Expresa un requisito obligatorio dentro del ámbito indicado. |
| **SHALL NOT** | No debe | Expresa una prohibición. |
| **SHOULD** | Debería | Expresa una recomendación. Puede haber motivos válidos para adoptar otra opción, considerando sus consecuencias. |
| **SHOULD NOT** | No debería | Desaconseja una opción, aunque puede haber razones justificadas para utilizarla. |
| **MAY** | Puede | Identifica una opción permitida, cuya implementación no es obligatoria. |

**MUST** equivale a SHALL y **MUST NOT**, a SHALL NOT. Esta guía prefiere SHALL para expresar nuevos requisitos. Estos términos se interpretan conforme al [lenguaje de conformidad de FHIR R4](https://hl7.org/fhir/R4/conformance-rules.html).

Las reglas de las definiciones técnicas también se aplican aunque no estén acompañadas por estas palabras. Por ejemplo, un elemento con cardinalidad `1..1` es obligatorio sin necesidad de repetir «debe» en su descripción. La interpretación de tablas, marcas y restricciones se desarrolla en [Cómo leer los perfiles](como-leer.html).

### Alcance de la conformidad

La **conformidad** expresa el cumplimiento de las reglas aplicables a un recurso o a una implementación. Para que esa afirmación sea útil, importa precisar qué se evaluó y contra qué versión de las definiciones.

Esta guía distingue dos ámbitos complementarios:

- **Representación de los datos.** Los perfiles del Core Uruguay establecen cómo estructurar información reutilizable en el contexto nacional. Cumplir un perfil incluye sus reglas y las que hereda de FHIR base o de otros perfiles.
- **Intercambio con HCEN.** Además de representar los datos, los sistemas tienen responsabilidades sobre su envío, recepción y procesamiento. Estas se describen en los actores, las transacciones y la conformidad específica de HCEN.

Por ejemplo, comprobar que un paciente cumple `HCENPatient` aporta evidencia sobre ese recurso. Para evaluar el registro o la actualización de pacientes también hay que comprobar el comportamiento definido para esa transacción.

La integración HCEN se evalúa sobre el despliegue del prestador, que puede reunir varios productos. El alcance de esa evaluación y la distribución de responsabilidades se detallan en [Conformidad y capacidades HCEN](hcen-conformidad.html).

### Must Support en esta guía

La marca **Must Support (MS)**, representada con la letra S en las tablas, señala obligaciones de soporte cuyo significado se define en el contexto de la guía. En esta publicación se utiliza exclusivamente en los perfiles HCEN, donde esas obligaciones se establecen según los actores y los intercambios previstos. El Core Uruguay, por su parte, define una base de representación de datos reutilizable en distintos contextos y por ende no usa ni define ningún MS.

MS no equivale a la palabra normativa MUST ni determina por sí sola que un dato deba aparecer en todas las instancias. La presencia se rige por la cardinalidad y por las obligaciones del intercambio. Tampoco permite deducir, de forma general, que todo receptor deba almacenar o mostrar todos los elementos marcados.

Las obligaciones concretas de emisores y receptores, incluido el tratamiento de datos conocidos o ausentes, se establecen en [Must Support y ausencia de datos en HCEN](hcen-conformidad.html#must-support).

### Validación y evidencia de cumplimiento

La validación automática permite comprobar parte de los requisitos, pero la evaluación de una implementación también incluye pruebas del intercambio.

| Aspecto | Qué se comprueba |
| --- | --- |
| Estructura y contenido | Que el recurso respete los perfiles aplicables: datos requeridos, tipos, referencias y demás restricciones. |
| Terminología | Que los códigos correspondan a los sistemas y conjuntos de valores definidos, según las reglas de cada elemento. |
| Comportamiento | Que los participantes procesen las solicitudes, respuestas y situaciones de error según la transacción. |

Para validar las reglas locales, la herramienta necesita las definiciones de esta guía y sus dependencias. Validar únicamente contra FHIR base no comprueba las restricciones nacionales o HCEN. Del mismo modo, declarar un perfil en `meta.profile` identifica el cumplimiento que se pretende, pero no lo demuestra.

Los resultados deben interpretarse según el alcance real de la comprobación. Si no se pudo consultar una terminología o resolver una definición, esa parte de la validación queda sin verificar. Por ello, conviene conservar la versión de la guía, los recursos evaluados y los resultados de las pruebas junto con las limitaciones encontradas.

El [plan de verificación HCEN](hcen-conformidad.html) desarrolla la evidencia específica de los intercambios. La especificación base amplía los [alcances de la validación FHIR](https://hl7.org/fhir/R4/validation.html).
