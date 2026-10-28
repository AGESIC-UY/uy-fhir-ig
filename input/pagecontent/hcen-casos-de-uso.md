Los casos de uso organizan la implementación por el resultado que necesita obtener el prestador. Todos integran el alcance funcional obligatorio de esta primera versión.

<figure style="margin:0 0 1em;">
  <img src="hcen-casos-de-uso.svg"
       alt="Dos actores, Prestador A y Prestador B, con sus roles debajo en gris, se conectan a los cuatro casos de uso agrupados en una caja Intercambio HCEN. A registra pacientes, publica documentos y entrega contenido; B encuentra y recupera documentos."
       style="width:100%;max-width:1100px;height:auto;"/>
  <figcaption>Ejemplo de intercambio entre Prestador A y Prestador B con los roles definidos en <a href="hcen-actores.html">Actores y responsabilidades</a>.</figcaption>
</figure>

### Registrar o actualizar un paciente

Al incorporar un paciente o modificar sus datos, el prestador envía su identificación local y los datos conocidos a Plataforma. Antes del envío debe disponer del dominio MRN autorizado y de su valor local. Plataforma procesa la identidad y comunica el resultado. El registro previo debería (SHOULD) preceder a la publicación de los documentos. De todos modos, si se omite, la publicación permite crear al paciente en caso de estar ausente.

Continuar con la [transacción de pacientes](hcen-iti-104.html), que precisa la actualización condicional y las situaciones de error.

### Publicar uno o más documentos clínicos

El prestador prepara las representaciones FHIR y CDA y las conserva en su repositorio. Para una Hoja de Consulta No Urgente utiliza los [perfiles clínicos CNU](hcen-documentos-clinicos.html). Agrupa los metadatos en un SubmissionSet, incluye los recursos necesarios y remite el envío a Plataforma. La publicación registra metadatos para que otros prestadores puedan encontrar el documento, pero no transfiere a Plataforma la responsabilidad de conservar su contenido.

La precondición es disponer de documentos identificados y coherentes entre sí. El resultado esperado es la aceptación del registro, o un error que impida tratarlo como publicado. Ver [Publicar documentos](hcen-iti-65.html), para conocer la validación, el rechazo completo del envío y la respuesta.

### Encontrar documentos de un paciente

El prestador solicitante identifica al paciente mediante el dominio y valor MRN y consulta los metadatos. Plataforma devuelve un conjunto de coincidencias que puede estar vacío. El solicitante examina clasificación, fechas y referencias para elegir qué documento recuperar. Este flujo intercambia metadatos, **no** el contenido de los documentos.

Ver [Consultar metadatos](hcen-iti-67.html), para conocer los parámetros de búsqueda admitidos en esta versión.

### Recuperar y entregar un documento

El solicitante elige una representación a partir de los metadatos. Plataforma solicita el contenido al repositorio de origen y lo devuelve al solicitante. El prestador debe cubrir ambos extremos: recuperar documentos de terceros y entregar los propios. La URL de Plataforma identifica repositorio y documento. `Accept` solicita una representación existente.

El resultado esperado es un Bundle documental FHIR o CDA XML directo para `Accept: text/xml`, o una respuesta de error identificable. Ver [Recuperar documentos](hcen-iti-68.html) para los formatos, las obligaciones de interpretación y los detalles operativos pendientes.

Los [ejemplos HCEN](hcen-ejemplos.html) ilustran personas, organizaciones, una CNU de traumatología y un documento de medicina general con su envío de publicación. Complementan los [ejemplos del Core](ejemplos.html).
