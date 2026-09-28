# Cómo leer los perfiles - Guía de Implementación FHIR de Uruguay v0.1.0

## Cómo leer los perfiles

Un perfil describe cómo representar un recurso o tipo de dato en un contexto determinado. Esta página propone un orden de lectura para pasar de una tabla técnica a decisiones de implementación. Se utiliza [UYPatient](StructureDefinition-uy-patient.md) como referencia.

**Acceso directo:** [perfil UYPatient](StructureDefinition-uy-patient.md) · [ejemplo de paciente](Patient-EjemploPacienteUY.md) · [perfiles HCEN](hcen-perfiles.md).

### Recorrido de lectura

1. **Identificar el propósito y la base.**`UYPatient`representa datos administrativos de un paciente y deriva del recurso`Patient`. Un perfil HCEN puede añadir restricciones al perfil nacional.
1. **Leer cada elemento y su cardinalidad.**`0..1`permite omitir el elemento o informarlo una vez;`1..1`exige una aparición;`0..*`permite varias. La cardinalidad se interpreta en la fila concreta del perfil.
1. **Revisar tipos y referencias.**`UYPatient.name`utiliza[UYHumanName](StructureDefinition-uy-human-name.md). Seguir ese enlace permite conocer las reglas del nombre.
1. **Reconocer las divisiones de elementos repetibles.**Una**slice**distingue variantes de un mismo elemento. En`UYPatient.identifier`,`mrn`identifica la variante destinada al número interno de paciente (**Medical Record Number**); su definición está en[UYMRNIdentifier](StructureDefinition-uy-mrn-identifier.md). Conviene revisar también los valores fijos y las demás restricciones de esa variante.
1. **Seguir las reglas relacionadas.**Consultar las extensiones, los conjuntos de valores y las invariantes que afecten a los elementos utilizados.
1. **Si hay un intercambio HCEN, sumar sus reglas.**Revisar el perfil HCEN derivado, la transacción y las obligaciones definidas para cada actor.

### Cardinalidad y Must Support: dos preguntas distintas

La **cardinalidad** responde cuántas veces puede aparecer un elemento en una instancia. **Must Support (MS)** señala que existen obligaciones de soporte para los actores HCEN, que deben consultarse en su contexto. Un elemento `0..1` marcado MS puede seguir ausente en una instancia; la marca, por sí sola, no lo convierte en `1..1`.

En esta guía, **MS se utiliza exclusivamente en perfiles HCEN**. Para practicar la diferencia, puede compararse el [perfil de paciente del Core](StructureDefinition-uy-patient.md) con el [perfil de paciente HCEN](hcen-perfiles.md): HCEN exige el identificador interno del paciente (MRN), mientras que el nombre conserva cardinalidad opcional y se marca MS. Las obligaciones concretas se documentan en [Conformidad y capacidades HCEN](hcen-conformidad.md).

Las [convenciones generales](conformidad.md) explican cómo reconocer los requisitos normativos de toda la guía.

