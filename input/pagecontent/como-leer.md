Esta página explica cómo pasar de la tabla de un perfil a decisiones concretas: qué datos incluir, cómo representarlos y qué definiciones consultar. El recorrido utiliza [UYPatient](StructureDefinition-uy-patient.html) y [HCENPatient](StructureDefinition-hcen-patient.html) como ejemplos.

Si términos como recurso, perfil o extensión todavía no resultan familiares, conviene comenzar por [Conceptos básicos de FHIR](conceptos-fhir.html).

### Ubicar el perfil y elegir una vista

Antes de entrar en una tabla, conviene leer el título, la descripción y el perfil base. Por ejemplo, `HCENPatient` deriva de `UYPatient`: sus reglas incluyen las del perfil nacional y agregan las necesarias para HCEN.

La página ofrece distintas vistas de una misma definición. La vista de **Tabla diferencial** muestra los cambios respecto al recurso base. La vista de **Tabla snapshot** ofrece la vista completa, que reúne las reglas propias y las heredadas. Para saber cómo completar un recurso, la Tabla snapshot suele ser el mejor punto de partida.

<figure>
  <img src="leer-perfiles-vistas.svg" alt="HCENPatient hereda de UYPatient, que deriva de Patient. La vista diferencial muestra cambios respecto de UYPatient; snapshot incluye también las reglas heredadas." style="width:100%;max-width:960px;height:auto;" />
</figure>

<figure aria-label="Comparación de las vistas diferencial y snapshot" style="width:100%;margin:0 0 1em;">
  <div style="display:grid;grid-template-columns:repeat(2,minmax(0,1fr));align-items:start;gap:12px;width:100%;">
    <img src="leer-perfiles-vistas-diff.png" alt="Vista diferencial del perfil." style="display:block;width:100%;height:auto;" />
    <img src="leer-perfiles-vistas-snap.png" alt="Tabla snapshot del perfil." style="display:block;width:100%;height:auto;" />
  </div>
  <figcaption>Figura 1. Dos vistas de un mismo perfil.</figcaption>
</figure>

Una fila en el diferencial no siempre implica una nueva exigencia: también puede aparecer por una traducción o una aclaración de su descripción. Si un elemento no aparece allí, puede seguir formando parte del recurso por herencia.

Otras vistas, como la de elementos clave, ayudan a enfocarse en una selección de campos. La **descripción detallada** permite consultar la definición completa de cada elemento, y la sección de **ejemplos** muestra instancias. Los rótulos pueden aparecer en español o en inglés, como *Differential*, *Snapshot* o *Examples*.

### Leer una fila de izquierda a derecha

La tabla representa un árbol. La sangría indica qué elementos están dentro de otros: `Patient.name.family` se lee como «apellido, dentro del nombre, dentro del paciente».

<figure>
  <img src="leer-perfiles-tabla.png" alt="Filas seleccionadas de HCENPatient: identifier admite uno o más identificadores; la slice mrn exige exactamente uno; name es opcional, único y Must Support; photo está prohibido. Se señalan las columnas nombre, marcas, cardinalidad, tipo y descripción." style="width:100%;max-width:960px;height:auto;" />
  <figcaption>Figura 2. Lectura de filas seleccionadas de HCENPatient. Se omiten algunas filas y marcas.</figcaption>
</figure>

La columna **Nombre (Name)** identifica el elemento, **Marcas (Flags)** destaca características que requieren atención, **Card.** indica cuántas veces puede aparecer, **Tipo (Type)** enlaza con su estructura y **Descripción y restricciones (Description & Constraints)** resume su significado y otras reglas. En la tabla publicada, seguir el enlace del elemento permite ampliar su definición.

Por ejemplo, la fila `name` de `HCENPatient` se interpreta así: puede aparecer como máximo un nombre, utiliza el perfil nacional `UYHumanName` y tiene Must Support indicado por la marca `S`.

### Cardinalidad: cuándo aparece un dato y cuántas veces

La cardinalidad se escribe como **mínimo..máximo**. El asterisco indica que no se fija un límite superior.

| Cardinalidad | Cómo interpretarla |
| --- | --- |
| `0..1` | El elemento puede faltar o aparecer una única vez. |
| `1..1` | Debe aparecer exactamente una vez. |
| `0..*` | Puede faltar o aparecer varias veces. |
| `1..*` | Debe aparecer al menos una vez. |
| `0..0` | No se permite incluirlo. |

La regla se aplica **dentro del elemento que lo contiene**. Por ejemplo, [UYAddress](StructureDefinition-uy-address.html) exige `country` con `1..1`. Eso significa que cada dirección que siga ese perfil debe incluir el país, pero no obliga por sí solo a que el paciente deba tener una dirección.

Aunque un perfil limite un elemento a una sola aparición, su representación JSON conserva la lista si el elemento es repetible en FHIR base. Por eso `HCENPatient.name`, con `0..1`, sigue escribiéndose entre corchetes.

### Marcas: qué significa la S y qué otras señales aparecen

**Must Support**, que suele mostrarse como `S`, señala obligaciones de soporte para los sistemas. Una descripción más detallada de esta marca se puede encontrar en la sección siguiente de [convenciones y conformidad](conformidad.html).

También pueden aparecer `I` que señala restricciones o invariantes, `?!` que identifica un elemento capaz de modificar la interpretación del recurso y `Σ` que indica pertenencia al conjunto de elementos de resumen de FHIR. Ninguna de estas marcas sustituye la cardinalidad. La [leyenda de las tablas FHIR R4](https://hl7.org/fhir/R4/formats.html#table) amplía su significado.

### Seguir los tipos, las referencias y las slices

La columna Tipo también forma parte de la lectura: si `name` enlaza con [UYHumanName](StructureDefinition-uy-human-name.html), allí se encuentran las reglas de nombres, apellidos y sus extensiones. Si un elemento usa `Reference`, los perfiles de destino indican qué recursos puede referenciar. Por ejemplo, `UYPatient.managingOrganization` apunta a una organización que sigue `UYOrganization`.

Algunos nombres terminan en **`[x]`**: indican una elección de tipo. En `deceased[x]`, por ejemplo, se puede usar `deceasedBoolean` o `deceasedDateTime`, según el tipo elegido y las opciones permitidas por el perfil. El texto `[x]` no se escribe literalmente en el JSON.

Una **slice** es un grupo dentro de un elemento repetible, con reglas propias. En la figura 2, `identifier:mrn` distingue el número interno de paciente de otros identificadores. La fila general exige al menos un identificador y la slice `mrn` exige exactamente uno de ese grupo. Hay que cumplir ambas reglas.

El nombre de la slice ayuda a leer el perfil, pero **no** es un campo que se agregue al JSON. Cada identificador sigue siendo una entrada de `identifier`, y las reglas de discriminación permiten reconocer a qué grupo pertenece. En `UYPatient` se utiliza `identifier.type` como discriminador. Para más detalles sobre el uso de slices consultar la [especificación base](https://hl7.org/fhir/R4/profiling.html#slicing).

### Revisar los valores permitidos y las condiciones adicionales

Además de la estructura, un perfil puede establecer un **valor fijo**, un **patrón**, una **vinculación terminológica** o una **invariante**. Estas reglas aparecen en las tablas y en la definición detallada.

<figure>
  <img src="leer-perfiles-valores.png" alt="En UYAddress, state es opcional y se vincula al ValueSet de departamentos con fuerza required; country es obligatorio y tiene el valor fijo URY. Required limita los valores cuando aparece el elemento, mientras que 1..1 exige su presencia." style="width:100%;max-width:960px;height:auto;" />
  <figcaption>Figura 3. Dos reglas diferentes en UYAddress: Binding (elegir un valor del conjunto) y Fixed Value (utilizar un valor fijo).</figcaption>
</figure>

Un **binding** vincula un elemento con un `ValueSet`. Para interpretarlo hay que revisar tanto el conjunto como la fuerza de la vinculación:

| Fuerza | Qué implica |
| --- | --- |
| `required` | El valor debe pertenecer al conjunto. En un `CodeableConcept`, al menos una codificación debe pertenecer, el texto solo no alcanza. |
| `extensible` | Si el conjunto contiene un concepto adecuado, debe utilizarse. Si no lo contiene, se admiten alternativas según el tipo de dato. |
| `preferred` | Se recomienda utilizar el conjunto, pero se permiten otros códigos. |
| `example` | El conjunto ilustra valores posibles, sin exigir ni recomendar su uso. |

**Un binding `required` no hace obligatorio al elemento.** Por ejemplo, en la figura 3 `state` puede no incluirse, pero si se incluye, debe usar un valor del conjunto de departamentos. La presencia se determina por la cardinalidad.

Un valor fijo, como `country = "URY"`, debe coincidir exactamente. Un patrón exige que se cumpla la estructura o el contenido indicado y puede admitir información adicional. 

Una **invariante** expresa una condición que no se resuelve solo con cardinalidades, por ejemplo una relación entre campos. Conviene leer su explicación junto con la expresión técnica.

Para ampliar: [vinculaciones terminológicas en FHIR R4](https://hl7.org/fhir/R4/terminologies.html#strength).

### Pasar del perfil a un ejemplo

Con la definición a mano, el siguiente paso es abrir el [paciente básico del Core](Patient-EjemploPacienteUY.html). Su narrativa ofrece una lectura rápida y la representación JSON permite observar la estructura que intercambian los sistemas.

Un ejercicio breve consiste en localizar el MRN dentro de `identifier`, comparar `name` con su tipo `UYHumanName` y revisar las extensiones de los apellidos. Así se conecta cada regla con su representación concreta.

Los ejemplos muestran una posibilidad, pero no enumeran todas las opciones ni reemplazan la definición del perfil. Para implementar un intercambio, también deben revisarse la [transacción correspondiente](hcen-transacciones.html) y las [convenciones de conformidad](conformidad.html).

El siguiente paso para entender como usar esta guía es leer la sección de [convenciones y conformidad](conformidad.html)