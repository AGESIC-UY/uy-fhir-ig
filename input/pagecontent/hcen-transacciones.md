Las transacciones describen el intercambio entre el prestador y Plataforma. Cada una tiene un nombre funcional y un código HCEN ITI, que conserva la numeración del intercambio IHE tomado como referencia.

| Transacción | Objetivo | Solicitud |
| --- | --- | --- |
| HCEN ITI-104 | [Registrar o actualizar pacientes](hcen-iti-104.html) | PUT condicional de Patient por dominio y valor MRN. |
| HCEN ITI-65 | [Publicar documentos](hcen-iti-65.html) | POST de un Bundle con metadatos, documentos FHIR y contexto. |
| HCEN ITI-67 | [Consultar metadatos](hcen-iti-67.html) | POST a `DocumentReference/_search` con los parámetros de búsqueda. |
| HCEN ITI-68 | [Recuperar documentos](hcen-iti-68.html) | GET a la URL recibida, con `Accept` para seleccionar FHIR o CDA. |

Las referencias de diseño son PIXm ITI-104 para pacientes y MHD ITI-65, ITI-67 e ITI-68 para documentos. El uso de estos códigos no declara conformidad integral con IHE. La [introducción a HCEN](hcen.html#relación-con-ihe) explica esa relación.

### Cómo interpretar las solicitudes

Las rutas con `[base]`, `[base-publicacion]` o `[URL-recibida-en-ITI-67]` representan las direcciones utilizadas por cada interacción. Los dominios `example.org` son ilustrativos. Las direcciones de los servicios y los controles de acceso deben acordarse con Salud Digital.

Cada página describe actores, solicitud, procesamiento, respuesta y errores. Los perfiles explican cómo completar los recursos, las obligaciones comunes y el alcance de las verificaciones están en [Conformidad HCEN](hcen-conformidad.html). El [recorrido de ejemplos](hcen-ejemplos.html#recorrido-intercambio) enlaza los recursos disponibles para los intercambios.
