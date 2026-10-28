Este bloque describe cómo un prestador puede interoperar con la **Historia Clínica Electrónica Nacional (HCEN)** a través de FHIR. Reutiliza las representaciones de [Core Uruguay](introduccion.html) y agrega las obligaciones del intercambio. Los términos y siglas propios de este bloque se explican en el [Glosario HCEN](hcen-glosario.html).

### ¿Qué es HCEN?

La HCEN es una plataforma de interoperabilidad que permite el intercambio de información clínica entre las instituciones, conectando a las organizaciones a través de una red privada de datos.​ Su principal cometido es promover y mejorar la continuidad del proceso asistencial de los usuarios del sistema de salud uruguayo.

HCEN permite que los prestadores compartan los documentos clínicos que generan durante la atención, facilitando el acceso a la información de un paciente ante un evento asistencial.

Plataforma HCEN está basada originalmente en el estándar **IHE XDS.b** y ofrece una interfaz FHIR para el intercambio de información. A diferencia de un servidor FHIR convencional, no almacena los recursos clínicos publicados, sino que utiliza un **modelo federado**: cada prestador conserva los documentos en su propio repositorio, mientras que Plataforma registra la información de los pacientes y los metadatos necesarios para localizar esos documentos.

Cuando un prestador necesita consultar un documento clínico, puede buscarlo y solicitarlo a través de Plataforma, que lo recupera del repositorio de origen y se lo entrega.

<figure style="margin:0 0 1em;">
  <img src="hcen-modelo-federado.svg"
       alt="El prestador de origen conserva los documentos en su repositorio y registra pacientes y metadatos en Plataforma. El prestador solicitante consulta los metadatos y solicita un documento a Plataforma, que lo obtiene del repositorio de origen y lo devuelve."
       style="width:100%;max-width:880px;height:auto;"/>
  <figcaption>Los documentos permanecen en el prestador de origen. Plataforma registra pacientes y metadatos e intermedia la recuperación.</figcaption>
</figure>

Las funciones de cada parte se detallan en [Actores y responsabilidades](hcen-actores.html).

El intercambio que esta guía toma como antecedente utiliza documentos **CDA** (Clinical Document Architecture, el formato de documentos clínicos de HL7), metadatos **XDS** (Cross-Enterprise Document Sharing, el perfil de **IHE** - Integrating the Healthcare Enterprise) y mensajería HL7 v2 para la identificación de pacientes. Esta guía describe el mismo intercambio sobre FHIR, tomando como referencia los perfiles equivalentes de IHE.

### Alcance de esta versión

La primera versión HCEN abarca cuatro funciones obligatorias para el despliegue de un prestador: registrar y actualizar pacientes, publicar documentos, consultar metadatos y recuperar las representaciones FHIR y CDA. No incorpora reemplazo ni anulación como operaciones de esta etapa.

Con respecto al contenido de los documentos clínicos, esta primera versión solo modela en FHIR Consulta No Urgente.

La guía continúa en borrador. Algunos detalles operativos y las direcciones de los servicios se definirán más adelante.

Autenticación, autorización, consentimiento, auditoría y acreditación no se especifican en esta versión. Consultar [Seguridad y acreditación pendientes](hcen-conformidad.html#seguridad).

### Marco normativo

El intercambio de información clínica con fines asistenciales a través de HCEN está reglamentado por el [Decreto N.º 242/017](https://www.impo.com.uy/bases/decretos/242-2017). Esta guía es una especificación técnica en borrador: no sustituye ni interpreta esa normativa.

### Recorrido de implementación

1. Identificar las funciones del [prestador y de Plataforma](hcen-actores.html).
2. Seleccionar el [caso de uso](hcen-casos-de-uso.html) que se implementará.
3. Consultar su [transacción](hcen-transacciones.html), solicitud, respuesta y pendientes.
4. Completar los [perfiles HCEN](hcen-perfiles.html) con sus extensiones y terminología.
5. Revisar [conformidad y capacidades](hcen-conformidad.html) y los [ejemplos](hcen-ejemplos.html).

### Relación con IHE

Se toma como referencia **Mobile access to Health Documents (MHD), versión 4.2.3**, sobre FHIR R4, para publicación, consulta y recuperación, y **Patient Identifier Cross-referencing for mobile (PIXm), versión 3.1.0**, para registro y actualización de pacientes.

HCEN define un contrato local. La reutilización de extensiones, identificadores y patrones de IHE no declara conformidad integral con sus perfiles.
