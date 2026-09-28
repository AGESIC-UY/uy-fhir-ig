# Casos de uso - Guía de Implementación FHIR de Uruguay v0.1.0

## Casos de uso

Los casos de uso organizan la implementación por el resultado que necesita obtener el prestador. Todos integran el alcance funcional obligatorio de esta primera versión.

### Registrar o actualizar un paciente

Al incorporar un paciente o modificar sus datos, el prestador envía su identificación local y los datos conocidos a Plataforma. Antes del envío debe disponer del dominio MRN autorizado y de su valor local. Plataforma procesa la identidad y comunica el resultado. El registro previo debería (SHOULD) preceder a la publicación documental; el mecanismo de respaldo de Plataforma no lo sustituye.

Continuar con la [transacción de pacientes](hcen-iti-104.md), que precisa la actualización condicional y las situaciones de error.

### Publicar uno o más documentos clínicos

El prestador prepara las representaciones FHIR y CDA y las conserva en su repositorio. Para una Hoja de Consulta No Urgente utiliza los [perfiles clínicos CNU](hcen-documentos-clinicos.md). Agrupa los metadatos en un SubmissionSet, incluye los recursos necesarios y remite el envío a Plataforma. La publicación registra metadatos para que otros prestadores puedan encontrar el documento; no transfiere a Plataforma la responsabilidad de conservar su contenido.

La precondición es disponer de documentos identificados y coherentes entre sí. El resultado esperado es la aceptación del registro, o un error que impida tratarlo como publicado. Ver [Publicar documentos](hcen-iti-65.md), incluidos sus pendientes de atomicidad y respuesta.

### Encontrar documentos de un paciente

El prestador solicitante identifica al paciente mediante el dominio y valor MRN y consulta los metadatos. Plataforma devuelve un conjunto de coincidencias que puede estar vacío. El solicitante examina clasificación, fechas y referencias para elegir qué documento recuperar. Este flujo intercambia metadatos; el contenido se solicita por separado.

Ver [Consultar documentos](hcen-iti-67.md), donde se distingue la búsqueda propuesta del catálogo de filtros aún por confirmar.

### Recuperar y entregar un documento

El solicitante elige una representación a partir de los metadatos. Plataforma solicita el contenido al repositorio de origen y lo devuelve al solicitante. El prestador debe cubrir ambos extremos: recuperar documentos de terceros y entregar los propios. La URL selecciona la representación, mientras que Accept negocia la serialización FHIR.

El resultado esperado es un Bundle documental o un Binary con CDA, o una respuesta de error identificable. Ver [Recuperar documentos](hcen-iti-68.md) para los formatos, las obligaciones de interpretación y los pendientes de rutas.

Los [ejemplos de intercambio](hcen-ejemplos.md) conectan estos casos mediante un paciente y un documento ficticios.

