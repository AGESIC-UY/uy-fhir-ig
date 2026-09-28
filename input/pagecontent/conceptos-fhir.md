FHIR es un estándar para representar e intercambiar información de salud. Esta página introduce los conceptos necesarios para seguir el resto de la guía, que utiliza **FHIR R4 (4.0.1)**.

**Acceso directo:** [cómo leer los perfiles](como-leer.html) · [perfil UYPatient](StructureDefinition-uy-patient.html) · [índice de artefactos](artifacts.html).

### Del recurso a un ejemplo concreto

FHIR organiza la información en **recursos**. `Patient` es un recurso para datos administrativos de una persona que recibe atención. Una **instancia** es un recurso con datos concretos: por ejemplo, el [paciente ficticio de esta guía](Patient-EjemploPacienteUY.html), que contiene un identificador institucional y un nombre.

Un **perfil** define cómo utilizar un recurso o tipo de dato en un contexto. [UYPatient](StructureDefinition-uy-patient.html) parte de `Patient` y establece, entre otras cosas, qué perfiles de identificador y de nombre pueden utilizarse. El perfil es la definición; la instancia contiene datos que se pueden contrastar con esa definición.

### Vocabulario de la guía

| Concepto | Significado en esta guía |
| --- | --- |
| Recurso | Estructura FHIR para un tipo de información, como `Patient` u `Organization`. |
| Instancia | Recurso concreto que contiene datos. |
| Perfil | Definición que adapta un recurso o tipo de dato a un contexto mediante restricciones. |
| Tipo de dato | Estructura que aparece dentro de un recurso, como `Identifier`, `HumanName` o `Address`. |
| Extensión | Estructura definida para representar un dato adicional; en el Core se utiliza, por ejemplo, para distinguir apellidos. |
| `CodeSystem` | Sistema que define códigos y su significado. |
| `ValueSet` | Conjunto de valores que puede utilizarse en un elemento según su vinculación terminológica. |
| Artefacto | Definición publicable, como un perfil, una extensión o un `ValueSet`. |
| Transacción | Intercambio entre sistemas con un propósito y reglas definidos, documentado en HCEN. |

### Cómo se relacionan las piezas

Un recurso contiene elementos; un perfil puede restringirlos o indicar que usen un tipo de dato perfilado. Por ejemplo, `UYPatient.name` utiliza [UYHumanName](StructureDefinition-uy-human-name.html), que permite representar los apellidos de forma estructurada. Otros elementos pueden vincularse a un conjunto de valores para orientar o limitar sus códigos.

El [Core Uruguay](introduccion.html) define la representación nacional reutilizable. [HCEN](hcen.html) añade reglas para intercambios específicos. El siguiente paso es aprender a localizar esas reglas en [cómo leer los perfiles](como-leer.html).
