# Consultar metadatos — HCEN ITI-67 - Guía de Implementación FHIR de Uruguay v0.2.0

## Consultar metadatos — HCEN ITI-67

Esta transacción permite encontrar los metadatos de documentos registrados en Plataforma. El implementador consulta por el MRN del paciente, selecciona un documento y utiliza la URL recibida para recuperarlo mediante [HCEN ITI-68](hcen-iti-68.md).

Plataforma consulta el Registro XDS y construye los DocumentReference de respuesta. No se presupone que conserve recursos FHIR individuales accesibles por GET.

### Actores y precondiciones

El prestador actúa como solicitante y Plataforma consulta los metadatos registrados. La solicitud identifica al paciente mediante su dominio y valor MRN.

### Solicitud

La consulta se realiza mediante POST sobre `DocumentReference/_search`. El cuerpo contiene los parámetros codificados como formulario, no un recurso JSON.

#### Filtros aceptados

La siguiente tabla presenta los filtros aceptados por la solicitud. No es la lista final de parámetros, podrá ampliarse o ajustarse en próximas versiones.

| | | |
| :--- | :--- | :--- |
| `patient.identifier` | Sí | Dominio y valor MRN del paciente, con el formato`system|value`. La CI no sustituye al MRN. |
| `status` | Sí | Estado del documento. |
| `period1` | No | Límite inferior del período de búsqueda. |
| `period2` | No | Límite superior del período de búsqueda. |
| `category` | No | Tipo genérico de documento (EJE 1). |
| `type` | No | Tipo detallado de documento (EJE 2). |
| `setting` | No | Servicio médico (EJE 3). |

**PoC — Diferencia con Plataforma**

El Gateway puede soportar un conjunto distinto de parámetros opcionales en comparación a Plataforma. Se asegura que soporta los obligatorios.

#### Ejemplos de solicitud

```
POST [base]/DocumentReference/_search HTTP/1.1
Content-Type: application/x-www-form-urlencoded
Accept: application/fhir+json

patient.identifier=[dominio-codificado]%7C[MRN-codificado]&status=current

```

Por ejemplo, con los datos del paciente de la guía:

```
POST [base]/DocumentReference/_search HTTP/1.1
Content-Type: application/x-www-form-urlencoded
Accept: application/fhir+json

patient.identifier=urn%3Aoid%3A2.16.858.2.999999.72768.1%7C1873455&status=current

```

El dominio del ejemplo es ficticio.

### Reglas de procesamiento

Plataforma consulta el Registro XDS aplicando los filtros de la solicitud.

### Respuesta

Una consulta válida devuelve un Bundle de búsqueda con los metadatos encontrados. Si no hay coincidencias, el resultado es vacío. Esto no representa un error de documento inexistente.

Cada resultado permite identificar el documento y obtener su URL de recuperación en `DocumentReference.content.attachment.url`. Esta versión describe el resultado de forma general, sin especificar la estructura detallada del DocumentReference devuelto por Plataforma.

**PoC — Diferencia con Plataforma**

El resultado que devuelve el Gateway para la ITI-67 difiere del que devuelve Plataforma en algunos campos del DocumentReference. En particular son relevantes: Gateway devuelve la extension binary con un id interno - Plataforma no, Gateway devuelve identificadores internos para los recursos referenciados - Plataforma los devuelve en `contained`

#### URL de recuperación

La ubicación pública del documento tiene la forma conceptual:

```
[base]/Document?Repositoryuniqueid=[oid-repositorio]&Documentuniqueid=[oid-documento]

```

Los parámetros identifican el repositorio y el documento. No son el identificador del SubmissionSet ni el `fullUrl` del envío. La URL devuelta no es la URL original del prestador que se informó en HCEN ITI-65.

Para recuperar contenido se utiliza la URL completa recibida, sin reconstruirla. `Accept` selecciona la representación existente, como se explica en [HCEN ITI-68](hcen-iti-68.md).

### Errores

Una solicitud sin los filtros obligatorios se rechaza. Esta versión no especifica los códigos HTTP particulares para los errores de validación.

