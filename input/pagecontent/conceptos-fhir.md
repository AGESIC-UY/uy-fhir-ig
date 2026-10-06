Esta página presenta los conceptos básicos de FHIR y cómo se relacionan dentro de una guía de implementación. Para empezar, no hace falta conocer todo el estándar, lo importante es entender sus piezas principales.

**¿Ya conocés estos conceptos?** Podés continuar con [Cómo leer los perfiles](como-leer.html).

### Qué es FHIR y para qué sirve

**FHIR** (*Fast Healthcare Interoperability Resources*) es un estándar de HL7 que proporciona una forma común de representar e intercambiar información de salud. Define cómo organizar los datos, qué significan y cómo se relacionan. También describe mecanismos para consultarlos y enviarlos entre sistemas.

Esta guía utiliza **FHIR R4 (4.0.1)**. Conviene tener presente la versión al consultar documentación o probar herramientas, porque las definiciones pueden cambiar entre versiones. Para una primera mirada al estándar, podés consultar la [introducción de FHIR R4](https://hl7.org/fhir/R4/overview.html).

### Los recursos: las piezas con las que se trabaja

FHIR organiza la información en **recursos**. Cada tipo de recurso tiene un propósito y una estructura definidos. Por ejemplo:

| Recurso | Qué representa |
| --- | --- |
| `Patient` | Datos administrativos de una persona que recibe atención: identificadores, nombre, fecha de nacimiento, etc. |
| `Practitioner` | Información de un profesional de salud. |
| `Organization` | Una institución u organización. |
| `Observation` | Una medición o un resultado, como una temperatura o una determinación de laboratorio. |
| `Encounter` | Un encuentro de atención, como una consulta. |

La información de una atención se construye combinando estas piezas. Los datos del paciente están en `Patient`, y los resultados de sus estudios pueden estar en recursos `Observation` relacionados con él.

Cuando se completa un recurso con datos de un caso concreto, se obtiene una **instancia**. Mientras que `Patient` es el tipo de recurso, el registro concreto de "Juan Carlos Pérez Rodríguez" es una instancia de ese recurso `Patient`. En la práctica, también se usa la palabra «recurso» para hablar de una instancia.

Se puede explorar el [catálogo de recursos de FHIR R4](https://hl7.org/fhir/R4/resourcelist.html) para ubicar qué pieza corresponde a cada tipo de información.

### Qué hay dentro de un recurso

Cada recurso se compone de **elementos**, es decir, campos con un significado definido. Por ejemplo, en `Patient`, el elemento `birthDate` contiene la fecha de nacimiento y el elemento `name`, el nombre de la persona.

Cada elemento tiene un **tipo de dato**. Algunos son simples, como un string, una fecha o un número. Otros agrupan varios datos: `HumanName` organiza nombres y apellidos, `Address` una dirección, `Identifier` un identificador y el ámbito al que pertenece. Estos tipos se reutilizan en distintos recursos.

Los recursos pueden representarse en formatos como **JSON** o **XML**. Son maneras de escribir los mismos datos para que los sistemas puedan procesarlos. Por ejemplo, este fragmento JSON, muestra el nombre de nuestro paciente ficticio:

```json
{
  "resourceType": "Patient",
  "name": [
    {
      "family": "Pérez Rodríguez",
      "given": ["Juan", "Carlos"]
    }
  ]
}
```

`resourceType` indica que se trata de un paciente. Dentro de `name`, `family` contiene los apellidos y `given`, los nombres de pila. Los corchetes `[]` indican listas.

En esta guía se va a trabajar normalmente con la representación JSON de los recursos.

Para ampliar: [tipos de datos](https://hl7.org/fhir/R4/datatypes.html) y [formato JSON de FHIR R4](https://hl7.org/fhir/R4/json.html).

### Identificar un recurso y relacionarlo con otros

Un paciente puede tener una cédula de identidad o un identificador interno dentro de una institución. Ambos datos se representan en `identifier`, combinando un **sistema de identificación** (`system`) con un **valor** (`value`). El número `1234`, por ejemplo, necesita ese contexto: podría pertenecer a personas diferentes en dos instituciones.

Un error común es confundir el campo `identifier` con el campo `id`. `id` tiene otro propósito: identifica el recurso dentro de los de su mismo tipo en un servidor. Así, `Patient/paciente-123` permite localizar un registro de paciente, pero `paciente-123` no tiene por qué coincidir con su cédula o su identificador interno dentro de la institución.

Una **referencia** conecta un recurso con otro. Por ejemplo, una observación puede apuntar a `Patient/paciente-123` para indicar a quién corresponde el resultado. De esa forma, los recursos se relacionan sin repetir todos los datos del paciente en cada estudio. Podés ver otra relación en el [ejemplo de rol profesional](PractitionerRole-EjemploRolProfesionalUY.html), que vincula un profesional con una organización.

Cuando se necesita agrupar recursos, se utiliza un **Bundle**. Puede contener, por ejemplo, resultados de una búsqueda o los recursos que forman un documento FHIR. Su tipo indica para qué se agrupan y qué reglas corresponden.

Para ampliar: [referencias entre recursos](https://hl7.org/fhir/R4/references.html) y [Bundle](https://hl7.org/fhir/R4/bundle.html).

### Compartir el significado de los datos

Para que dos sistemas interpreten un dato de la misma manera, muchas veces se utilizan **códigos** en lugar de depender solamente de un texto libre. El código se interpreta dentro de un sistema que define su significado.

En una guía se pueden encontrar dos conceptos relacionados:

- Un **CodeSystem** define códigos y sus significados. Por ejemplo, el [sistema de códigos de departamentos](CodeSystem-cs-departamentos-uy.html) define los departamentos de Uruguay.
- Un **ValueSet** selecciona códigos para un uso concreto. Puede tomar todos o algunos códigos de uno o más sistemas. El [conjunto de valores de departamentos](ValueSet-vs-departamentos-uy.html) reúne los que se utilizan en la dirección uruguaya.

El sistema de códigos aporta el vocabulario, el conjunto de valores selecciona qué parte de ese vocabulario se usa en un contexto. Un perfil vincula el elemento con el conjunto que corresponde.

Para ampliar: [terminología en FHIR R4](https://hl7.org/fhir/R4/terminologies.html).

### Adaptar FHIR a un contexto: perfiles y extensiones

FHIR se utiliza en países y servicios muy distintos. Por eso, sus recursos base ofrecen opciones que cada implementación necesita precisar.

Un **perfil** define cómo utilizar un recurso o un tipo de dato en un contexto determinado. Por ejemplo, puede precisar qué identificadores se utilizan o qué información se necesita. La diferencia central es esta: **el perfil contiene las reglas; la instancia contiene los datos**.

En esta guía, [UYPatient](StructureDefinition-uy-patient.html) define la representación nacional del paciente. [HCENPatient](StructureDefinition-hcen-patient.html) parte de ese perfil y agrega reglas para la HCEN. Una instancia que sigue cualquiera de esos perfiles sigue siendo un recurso `Patient`.

Cuando hace falta representar un dato que la estructura base no contempla directamente, FHIR ofrece las **extensiones**. Cada extensión tiene una definición compartida que explica qué significa y cómo se utiliza. Por ejemplo, el nombre base reúne los apellidos en `family`, pero esta guía utiliza extensiones para distinguir el primer y el segundo apellido, como se ve en [UYHumanName](StructureDefinition-uy-human-name.html).

Los perfiles y las extensiones se publican mediante recursos `StructureDefinition`. Sus definiciones tienen una **URL canónica**: una dirección que las identifica de forma estable.

Para ampliar: [perfiles](https://hl7.org/fhir/R4/profiling.html) y [extensiones](https://hl7.org/fhir/R4/extensibility.html).

### Qué reúne una guía de implementación

Una **guía de implementación**, o **IG** (*Implementation Guide*), reúne los acuerdos necesarios para usar FHIR con un propósito concreto. Combina explicaciones, perfiles, extensiones, terminología y ejemplos. También puede describir quién participa en un intercambio y cómo se realiza. Las definiciones publicadas suelen llamarse **artefactos** y pueden ser procesadas por herramientas.

En esta IG, el **Core Uruguay** aporta definiciones nacionales reutilizables y **HCEN** describe los intercambios con la plataforma. Si tu objetivo es integrar con HCEN, podés comenzar por sus [casos de uso](hcen-casos-de-uso.html): sus perfiles ya reutilizan las definiciones nacionales necesarias.

Las herramientas pueden **validar** una instancia: comprobar su estructura, sus valores y las reglas del perfil que corresponda. Para revisar las reglas de esta IG, necesitan conocer sus definiciones y dependencias. Que un recurso sea válido según FHIR base no significa que cumpla un perfil local, ni demuestra que el intercambio completo funcione.

### Para verlo en funcionamiento

Una forma habitual de intercambiar recursos es mediante una **API**. FHIR define una API REST que utiliza HTTP: por ejemplo, una solicitud `GET` permite consultar un recurso. Una IG precisa qué interacciones se usan en su contexto. Podés ampliar en la [API REST de FHIR R4](https://hl7.org/fhir/R4/http.html).

Para pasar de las ideas a algo concreto, estos recursos pueden ser de gran ayuda:

| Recurso | Qué podés hacer |
| --- | --- |
| [Ejemplos de esta guía](ejemplos.html) | Empezar por el paciente y reconocer los elementos, las extensiones y los datos que acabamos de presentar. |
| [Servidor de pruebas HAPI FHIR](https://hapi.fhir.org/) | Seleccionar R4, buscar pacientes y observar cómo se muestran los recursos en JSON. Las búsquedas devuelven un `Bundle` con los resultados. **HAPI FHIR contempla las definiciones base de los recursos, no las definidas en esta guía.**|
| [Validador web de FHIR](https://validator.fhir.org/) | Probar un recurso en la versión 4.0.1 y explorar los mensajes de validación. Para comprobar perfiles locales también hay que proporcionar sus definiciones. **Aún no se incluye esta IG entre las opciones de este validador**|

Con estas bases, el siguiente paso es [Cómo leer los perfiles](como-leer.html): allí se explica cómo interpretar las tablas y las reglas que vas a encontrar en esta IG.
