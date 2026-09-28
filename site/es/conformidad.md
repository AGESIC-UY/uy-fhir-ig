# Convenciones y conformidad - Guía de Implementación FHIR de Uruguay v0.1.0

## Convenciones y conformidad

Esta página explica cómo reconocer las obligaciones de la guía y qué debe revisarse para evaluar una implementación. Los requisitos concretos se documentan en el perfil, la transacción o el actor al que corresponden.

**Acceso directo:** [perfiles del Core](perfiles.md) · [transacciones HCEN](hcen-transacciones.md) · [conformidad y capacidades HCEN](hcen-conformidad.md).

### Lenguaje de los requisitos

| | | |
| :--- | :--- | :--- |
| **SHALL** | Debe | Requisito obligatorio. |
| **SHOULD** | Debería | Recomendación; apartarse de ella requiere evaluar y justificar las consecuencias. |
| **MAY** | Puede | Opción permitida. |
| **MUST** | Debe | Equivale a SHALL; esta guía prefiere SHALL en requisitos nuevos. |

El texto introductorio ayuda a entender el propósito de una definición. Un ejemplo muestra una representación posible. Las secciones señaladas como pendientes identifican trabajo por resolver. Estos contenidos no establecen por sí mismos requisitos adicionales a los definidos en los artefactos y las transacciones.

### Qué se comprueba

1. **Estructura de los datos:**recurso o perfil base, cardinalidades, tipos, slices, referencias, valores fijos e invariantes del perfil aplicable.
1. **Terminología:**códigos y fuerza de la vinculación con cada`ValueSet`. Por ejemplo, un vínculo`required`restringe los valores admitidos; las fuerzas`extensible`,`preferred`y`example`tienen efectos distintos que deben leerse en la definición correspondiente.
1. **Comportamiento del sistema:**para HCEN, actor, caso de uso, transacción, respuesta y capacidades declaradas. Una instancia que cumple un perfil no demuestra por sí sola que el sistema complete el intercambio.

### Must Support: aplicación exclusiva en HCEN

Los perfiles nacionales del Core no utilizan marcas **Must Support (MS)**. En esta guía, MS se reserva para los perfiles HCEN. Las obligaciones de soporte se definen según el actor y el caso de uso en [Conformidad y capacidades HCEN](hcen-conformidad.md).

MS no implica automáticamente presencia obligatoria ni sustituye la cardinalidad. Tampoco debe confundirse con la palabra normativa MUST, que expresa un requisito obligatorio. Para interpretar un elemento MS es necesario leer la obligación asignada al actor que lo produce o consume.

### Validación

El [plan de verificación HCEN](hcen-conformidad.md) organiza las pruebas de recursos y comportamiento. Los contratos pendientes impiden considerar cerrados los criterios de conformidad y acreditación de esta versión en borrador.

