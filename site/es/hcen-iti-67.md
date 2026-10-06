# Consultar metadatos - Guía de Implementación FHIR de Uruguay v0.1.0

## Consultar metadatos

Esta transacción permite encontrar metadatos DocumentReference registrados en Plataforma. El prestador utiliza la respuesta para seleccionar documentos; recuperar el contenido corresponde a [Recuperar documentos](hcen-iti-68.md).

### Actores y solicitud

El prestador consulta y Plataforma responde. La consulta inicial propuesta identifica al paciente con su MRN local mediante `patient.identifier`, usando el token `system|value` codificado en la URL.

Consulta de metadatos de los documentos de un paciente.

```
GET [base]/DocumentReference?patient.identifier=[system-codificado]%7C[valor-codificado]
Accept: application/fhir+json

```

### Filtros en revisión

Se toma como referencia [MHD ITI-67, versión 4.2.3](https://profiles.ihe.net/ITI/MHD/4.2.3/ITI-67.html). La siguiente lista organiza los filtros candidatos del borrador; **no acredita que Plataforma los soporte ni los convierte en capacidades obligatorias confirmadas**.

| | |
| :--- | :--- |
| Identificar al paciente o documento | `patient`,`patient.identifier`,`identifier` |
| Clasificar | `category`,`type`,`setting`,`facility`,`event`,`format`,`security-label` |
| Limitar por tiempo | `creation`,`date`,`period` |
| Identificar autores | `author.given`,`author.family` |
| Estado y relaciones | `status`,`related` |

Salud Digital debe confirmar filtros mínimos, combinaciones, cadenas sobre autor, paginación y tratamiento de parámetros desconocidos. No se incorporan automáticamente las opciones IHE de búsqueda de texto completo ni `targetCommunityIdList`.

### Respuesta

La respuesta de búsqueda propuesta es `200 OK` con un Bundle `searchset`. En esta versión no se publica un perfil específico para ese Bundle. Las coincidencias utilizan `entry.search.mode = match`; los mensajes OperationOutcome utilizan `outcome`. Se incluye un enlace `self` y, cuando haya continuación, el cliente utiliza los enlaces devueltos por Plataforma.

Una búsqueda válida sin coincidencias produce un conjunto vacío, no un error de documento inexistente. `total`, si se devuelve, expresa el total de coincidencias, no la cantidad de recursos auxiliares. La inclusión de otros recursos mediante `_include` queda fuera del contrato inicial.

### Errores y verificación

El OperationOutcome de parámetro no admitido (material de desarrollo reservado para una versión futura) es ilustrativo; el contrato debe decidir cuándo rechazar un parámetro y cuándo informar que no fue aplicado. No debe inferirse un estado HTTP a partir de `issue.code`.

Las pruebas deben cubrir una coincidencia, resultado vacío, dominio y valor MRN, mensajes `outcome` y navegación entre páginas cuando se acuerde la paginación. Consultar los [ejemplos](hcen-ejemplos.md). Los filtros definitivos y la declaración formal de capacidades quedan pendientes para una versión posterior.

