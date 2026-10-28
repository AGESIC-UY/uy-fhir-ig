# Recuperar documentos — HCEN ITI-68 - Guía de Implementación FHIR de Uruguay v0.2.0

## Recuperar documentos — HCEN ITI-68

Esta transacción permite recuperar una representación de un documento a partir de la URL recibida en [HCEN ITI-67](hcen-iti-67.md). El prestador puede actuar como solicitante y como proveedor del contenido que conserva.

### Actores y precondiciones

El prestador solicitante utiliza la URL de recuperación recibida en [HCEN ITI-67](hcen-iti-67.md). Plataforma intermedia la recuperación y el prestador de origen conserva el contenido documental. La representación solicitada debe estar disponible en el repositorio de origen.

### Solicitud

Se realiza un GET a la URL completa de recuperación y se indica `Accept`. La cabecera es obligatoria, aunque la petición no tenga cuerpo.

| | |
| :--- | :--- |
| `application/fhir+json` | Bundle documental FHIR en JSON. Para CNU, HCENConsultaNoUrgenteBundle. |
| `text/xml` | CDA XML directamente, sin envoltorio Binary JSON ni base64 que el consumidor deba decodificar. |

```
GET [URL-recibida-en-ITI-67] HTTP/1.1
Accept: application/fhir+json

```

Para solicitar el CDA se utiliza la misma URL:

```
GET [URL-recibida-en-ITI-67] HTTP/1.1
Accept: text/xml

```

### Reglas de procesamiento

Los prestadores FHIR deben (SHALL) conservar ambas representaciones y poder solicitarlas y entregarlas. La representación solicitada debe existir: Plataforma no convierte CDA a FHIR ni FHIR a CDA para producir una representación ausente.

`text/xml` identifica el CDA. No debe confundirse con `application/fhir+xml`, que es la serialización XML de un recurso FHIR. La extensión `binary` de los metadatos referencia el recurso Binary del prestador, pero esta recuperación devuelve su contenido CDA directamente.

#### Obtención del contenido

Para un origen FHIR, Plataforma realiza un HTTP GET a la URL absoluta original del prestador registrada en HCEN ITI-65 para esa representación. Para un origen XDS utiliza ITI-43. Ese acceso ocurre al recuperar el documento, no durante la publicación.

El consumidor utiliza la URL de Plataforma. No necesita reconstruir ni sustituirla por la ubicación interna del prestador.

**PoC — Diferencia con Plataforma**

El Gateway recupera las representaciones almacenadas localmente durante HCEN ITI-65. Por eso el envío PoC incluye el Bundle documental y el Binary CDA. Esta prueba no reproduce el acceso de Plataforma al repositorio del prestador.

### Respuesta

La recuperación exitosa devuelve el contenido solicitado y su `Content-Type` correspondiente: el Bundle documental JSON para `application/fhir+json`, o el CDA XML directamente para `text/xml`.

### Errores

Sin `Accept`, con un valor no admitido o cuando la representación no existe, la petición falla. No se devuelve automáticamente otra representación ni se convierte el contenido para producirla. Esta versión no especifica los códigos HTTP particulares de estos errores.

