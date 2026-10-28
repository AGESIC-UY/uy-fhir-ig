# Registrar o actualizar pacientes — HCEN ITI-104 - Guía de Implementación FHIR de Uruguay v0.2.0

## Registrar o actualizar pacientes — HCEN ITI-104

Esta transacción permite registrar o actualizar los datos demográficos de los pacientes del prestador en Plataforma. Toma como referencia de diseño, sin declarar conformidad, la alimentación de pacientes de [PIXm ITI-104, versión 3.1.0](https://profiles.ihe.net/ITI/PIXm/3.1.0/ITI-104.html).

El objetivo de esta transacción es que Plataforma posea la información suficiente para unificar los registros de pacientes de las distintas instituciones, y así poder unificar en un registro consolidado la historia clínica completa.

### Actores y precondiciones

El prestador actúa como fuente de identidad y Plataforma administra los registros e identidades. El prestador debe (SHALL) usar su MRN local y un dominio autorizado por Plataforma. [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.md) controla su formato; la autorización se verifica mediante lógica interna de Plataforma, como se explica en [Identificadores HCEN](hcen-identificadores.md). El cuerpo debe (SHALL) cumplir [HCENPatient](StructureDefinition-hcen-patient.md).

Registro o actualización de un paciente.
El prestador debería (SHOULD) completar esta transacción antes de publicar documentos. Si se omite, [HCEN ITI-65](hcen-iti-65.md) permite crear al paciente que todavía no existe. La publicación no actualiza un paciente existente.

### Solicitud

El registro se identifica por el par dominio MRN y valor MRN, expresado como `system|value` en una actualización condicional. El dominio y el valor del filtro deben (SHALL) coincidir con el MRN del cuerpo. Los caracteres reservados del token se codifican para su uso en la URL.

```
PUT [base]/Patient?identifier=[system-codificado]%7C[valor-codificado] HTTP/1.1
Accept: application/fhir+json
Content-Type: application/fhir+json

{ recurso HCENPatient }

```

La identificación y los datos demográficos se completan según [HCENPatient](StructureDefinition-hcen-patient.md). El [ejemplo de paciente HCEN](Patient-hcen-paciente-gonzalez.md) ilustra el contenido del recurso.

 El [mapeo desde INUS](StructureDefinition-hcen-patient.md#mapeo-inus) explica cómo representar los datos de la mensajería de pacientes en este recurso.

### Reglas de procesamiento

Si no existe un registro con ese par, Plataforma lo crea. Si existe, lo sustituye por el Patient enviado. La solicitud implica una sustitución completa de los datos del recurso, no una actualización parcial. La CI no es la clave de coincidencia: dos pares MRN distintos corresponden a registros distintos aunque compartan la misma CI. El emisor debe (SHALL) enviar los datos MS que conoce. Consultar [Must Support](hcen-conformidad.md#must-support).

**PoC — Diferencia con Plataforma**

El Gateway rechaza un segundo registro con la misma CI, aunque su MRN sea distinto. Plataforma considera distintos esos registros. La reproducción de esta diferencia se documenta con las pruebas de la PoC. No debe interpretarse como una regla de identificación de HCEN.

La transacción sigue la [actualización condicional FHIR R4](https://hl7.org/fhir/R4/http.html#cond-update): cero coincidencias permite crear el paciente, una coincidencia permite actualizarlo y más de una impide seleccionar el destino. Esta versión contempla altas y actualizaciones simples.

### Respuesta

| | |
| :--- | :--- |
| Registro inicial | `201 Created`, con identificación del recurso según FHIR. |
| Actualización | `200 OK`, conforme a FHIR y a las preferencias de respuesta. |

### Errores

Si la búsqueda condicional encuentra múltiples coincidencias, la transacción devuelve `412 Precondition Failed` y un `OperationOutcome` con el detalle del problema.

Un recurso o identificador inválido, la discordancia entre el MRN del filtro y el del cuerpo o un dominio MRN no autorizado provocan el rechazo de la solicitud. Esta guía no especifica los códigos HTTP particulares para estos errores de validación.

