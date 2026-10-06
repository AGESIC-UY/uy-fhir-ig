Esta sección define qué significa cumplir el contrato HCEN y cómo organizar la evidencia de una implementación. Se aplica a los [actores](hcen-actores.html) y utiliza el lenguaje de las [convenciones comunes](conformidad.html).

### Unidad de conformidad

**HCEN-CONF-001 / HCEN-CONF-002.** El despliegue de un prestador debe (SHALL) cubrir íntegramente las cuatro transacciones del alcance. Puede utilizar varios productos; cada producto debe identificar sus funciones y versión, y la declaración integral corresponde al despliegue del prestador. Deben identificarse prestador responsable, productos, versiones, configuración desplegada y versión de la guía utilizada.

La conformidad HCEN es local: no equivale a declarar conformidad IHE MHD o PIXm. Los perfiles clínicos incorporados se describen en [Documentos clínicos HCEN](hcen-documentos-clinicos.html).

<a id="must-support"></a>
### Must Support y ausencia de datos

**HCEN-MS-001.** El emisor debe (SHALL) enviar siempre un dato MS cuando lo conoce. Solo puede faltar si es desconocido y las cardinalidades y demás restricciones permiten su ausencia. Esta obligación se aplica al prestador cuando registra pacientes o publica metadatos y a Plataforma cuando emite recursos perfilados, por ejemplo en una consulta.

**HCEN-MS-002.** MS no autoriza elementos vacíos ni cambia su cardinalidad. Si falta un elemento obligatorio del recurso de intercambio, Plataforma debe (SHALL) rechazarlo. La cardinalidad de un elemento anidado se evalúa cuando existe su contenedor. La política de validación del documento clínico tiene el pendiente específico de [Publicación](hcen-iti-65.html#pendientes).

| Participación | Aplicación de MS |
| --- | --- |
| Prestador como emisor de Patient o metadatos | Enviar todos los datos MS conocidos. |
| Plataforma como emisora de metadatos | Conservar en la respuesta los datos MS conocidos que correspondan al recurso. |
| Receptor de un recurso | MS no impone por sí solo mostrar, almacenar ni generar todo elemento. Se aplican las obligaciones de la transacción. |
| Repositorio que entrega un documento | Entregar la representación conservada conforme al contrato; no reconstruirla omitiendo datos conocidos. |

Los perfiles Core permanecen sin MS. Las obligaciones adicionales están en sus derivados HCEN.

### Plan de verificación

| Área | Evidencia que debe prepararse |
| --- | --- |
| Datos | Validación contra perfiles; ejemplos positivos y negativos; códigos y dominios autorizados. |
| Pacientes | Registro inicial, actualización, coincidencias múltiples y correspondencia del MRN del cuerpo con el filtro. |
| Publicación | Metadatos válidos, referencias resueltas, envíos con y sin Binary, concordancia y rechazo de duplicados. |
| Consulta | Coincidencias, vacío, filtros acordados y paginación cuando se defina. |
| Recuperación | FHIR y CDA, como solicitante y proveedor, con errores y formatos admitidos. |
| Despliegue | Cobertura conjunta de productos y trazabilidad de sus versiones. |

La validación estructural no demuestra el comportamiento completo. La versión 0.1.0 publica únicamente EjemploPacienteUY, EjemploProfesionalUY, EjemploOrganizacionUY y EjemploRolProfesionalUY. Los ejemplos completos de HCEN quedan fuera de esta versión. La compilación estructural no acredita QA completo, validación terminológica integral ni conformidad operativa. La validación de una implementación requiere evidencia de los intercambios y sus capacidades efectivamente disponibles.

<a id="seguridad"></a>
### Seguridad y acreditación pendientes

Deben definirse o referenciarse autenticación, autorización, consentimiento, transporte seguro, auditoría, trazabilidad y condiciones operativas. La falta de un contrato publicado aquí no implica ausencia de obligaciones en esas materias.

El borrador propone una evaluación por Salud Digital, pero no define su procedimiento, evidencias definitivas ni cuándo un cambio de versión requiere reevaluación. Una autodeclaración no equivale a acreditación. Los criterios de interpretación y visualización documental también están sujetos a revisión en [Recuperación](hcen-iti-68.html).
