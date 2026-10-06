# Recuperar documentos - Guía de Implementación FHIR de Uruguay v0.1.0

## Recuperar documentos

Esta transacción recupera una representación documental mediante Plataforma. El prestador participa como solicitante de documentos de terceros y como proveedor del contenido que conserva en su repositorio.

### Secuencia

1. El solicitante obtiene un DocumentReference mediante[Consulta](hcen-iti-67.md).
1. Elige la representación FHIR o CDA utilizando las referencias del metadato.
1. Envía a Plataforma la solicitud de recuperación de esa representación.
1. Plataforma la obtiene del repositorio de origen y la devuelve al solicitante.

Recuperación de un documento a través de Plataforma.
### Selección de representación y formato

**HCEN-DOC-003.** El prestador debe (SHALL) poder solicitar y entregar ambas representaciones. La URL debe identificar la representación; el encabezado `Accept` debe indicar su serialización FHIR. Pedir JSON no distingue por sí solo un Bundle de un Binary.

| | | |
| :--- | :--- | :--- |
| FHIR, indicado por`content.attachment.url` | Bundle documental FHIR | Documento encabezado por Composition; para CNU se utiliza HCENConsultaNoUrgenteBundle |
| CDA, indicado por la extensión`binary` | HCENCdaBinary | CDA en base64 dentro de`data` |

```
GET [url-cda-a-traves-de-plataforma]
Accept: application/fhir+json

```

En una respuesta CDA serializada como JSON, `Content-Type: application/fhir+json` describe el recurso FHIR y `Binary.contentType = text/xml` describe el XML CDA encapsulado. Para este borrador se selecciona `text/xml` para el CDA; el catálogo operativo de MIME aún requiere confirmación. No se devuelve el XML CDA desnudo en lugar del Binary del contrato local.

Esta adaptación se distingue de la recuperación general por URL de [MHD ITI-68, versión 4.2.3](https://profiles.ihe.net/ITI/MHD/4.2.3/ITI-68.html). Las rutas de Plataforma y repositorios y su correspondencia con los metadatos siguen pendientes; los ejemplos no autorizan consultas directas que eludan a Plataforma.

### Resultado y errores

El resultado exitoso propuesto es `200 OK` con la representación seleccionada. Las respuestas OperationOutcome para documento inexistente o serialización no soportada y sus ejemplos de intercambio quedan pendientes de una versión posterior; no se publican ejemplos conformantes de esos errores en 0.1.0. Los estados HTTP definitivos, el tratamiento de repositorios no disponibles y la propagación de errores a través de Plataforma deben cerrarse conjuntamente.

### Interpretación y verificación

El borrador exige que el prestador pueda interpretar y mostrar documentos FHIR y la información del CDA, incluidos niveles 1 y 3. **Esta obligación y sus criterios de evaluación están sujetos a revisión antes de fijarse como condición definitiva de acreditación.** No deriva del indicador MS del receptor.

Las pruebas deben abarcar ambas representaciones y ambos roles del prestador, incluyendo identidad y versión correctas, decodificación de CDA, contenido no disponible y formatos no soportados. La conservación del contenido y la concordancia entre representaciones se especifican en [Publicación](hcen-iti-65.md#representaciones).

