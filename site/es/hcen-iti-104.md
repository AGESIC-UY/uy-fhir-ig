# Registrar o actualizar pacientes - Guía de Implementación FHIR de Uruguay v0.1.0

## Registrar o actualizar pacientes

Esta transacción permite registrar o actualizar la identificación y los datos demográficos de un paciente del prestador en Plataforma. Toma como referencia de diseño, sin declarar conformidad con PIXm, la alimentación de pacientes de [PIXm ITI-104, versión 3.1.0](https://profiles.ihe.net/ITI/PIXm/3.1.0/ITI-104.html).

### Actores y precondiciones

El prestador actúa como fuente de identidad y Plataforma administra los registros e identidades. El prestador debe (SHALL) usar su MRN local y un dominio autorizado por Plataforma. [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.md) controla su formato; la autorización se verifica mediante lógica interna de Plataforma, como se explica en [Identificadores HCEN](hcen-identificadores.md). El cuerpo debe (SHALL) cumplir [HCENPatient](StructureDefinition-hcen-patient.md).

Registro o actualización de un paciente.
### Solicitud

Se adopta para este borrador la actualización condicional por el token `system|value`. El dominio y el valor del filtro deben (SHALL) coincidir con el MRN del cuerpo. Los caracteres reservados del token se codifican para su uso en la URL.

```
PUT [base]/Patient?identifier=[system-codificado]%7C[valor-codificado]
Accept: application/fhir+json
Content-Type: application/fhir+json

{ recurso HCENPatient }

```

La solicitud representa el estado actualizado del recurso, no un parche parcial. El emisor debe (SHALL) enviar los datos MS que conoce; su ausencia no permite eliminar requisitos obligatorios. Consultar [Must Support](hcen-conformidad.md#must-support).

El MRN es el único dato demográfico obligatorio del perfil. Nombre, nacimiento y sexo administrativo se envían cuando se conocen según MS, con los mismos mínimos para registro y publicación. En una emergencia, la ausencia de esos datos no impide registrar al paciente identificado por su MRN.

### Mapeo desde INUS

El mapeo conserva el significado de los datos de la mensajería INUS-EMPI en su representación FHIR. No traslada automáticamente las cardinalidades de los campos HL7 v2 al perfil HCENPatient.

| | | |
| :--- | :--- | :--- |
| PID-3, MRN y AA | `identifier[mrn].value`y`identifier[mrn].system` | El número local se informa en value y el OID de la AA como URI urn:oid: en system. |
| PID-3, otros identificadores | Slices de`identifier`correspondientes | Conservar el número y su sistema emisor; no sustituir el MRN obligatorio. |
| PID-5, nombres y primer apellido | `name.given`y`name.family.extension[primerApellido]` | Conservar el orden de los nombres y expresar también los apellidos en family. |
| PID-6, usado para segundo apellido | `name.family.extension[segundoApellido]` | No utilizar Mother's Maiden Name: el segundo apellido no expresa por sí solo el apellido de soltera de la madre. |
| PID-7, nacimiento | `birthDate` | Convertir AAAAMMDD a AAAA-MM-DD cuando se conoce la fecha completa. |
| PID-8, sexo administrativo ISO 5218 | `gender` | 0 → unknown; 1 → male; 2 → female. El valor 9 (no aplica) no tiene equivalencia exacta con los códigos FHIR; no convertirlo automáticamente a other. |
| PID-11, dirección | `address` | Representar la dirección con las reglas del Core y conservar su uso cuando exista una correspondencia. |
| PID-13, contactos | `telecom` | Distinguir teléfono y correo electrónico y conservar sus valores. |

El mapeo no agrega obligatoriedad al segundo apellido ni a los demás datos demográficos opcionales. Los datos desconocidos se tratan según [Must Support](hcen-conformidad.md#must-support).

### Respuesta y errores

La semántica propuesta sigue la [actualización condicional FHIR R4](https://hl7.org/fhir/R4/http.html#cond-update): cero coincidencias permite crear el paciente, una coincidencia permite actualizarlo y más de una impide seleccionar el destino.

| | |
| :--- | :--- |
| Registro inicial | 201 Created; identificación del recurso según FHIR. |
| Actualización | 200 OK; procesamiento conforme a FHIR y a las preferencias de respuesta. |
| Múltiples coincidencias | 412 Precondition Failed y detalle mediante OperationOutcome. |
| Recurso o identificador inválido | Rechazo con información del problema; queda por cerrar la clasificación HTTP local de validación. |

El prestador debería (SHOULD) completar esta transacción antes de publicar documentos. El mecanismo de respaldo de Plataforma se describe como propuesta en en [Publicación](hcen-iti-65.md); su política de coincidencia no se deduce del perfil Patient.

### Verificación y límites

Las pruebas deben cubrir registro inicial, actualización, discordancia entre token y cuerpo, MRN no autorizado, datos MS conocidos y múltiples coincidencias. El ejemplo de paciente (material de desarrollo reservado para una versión futura) ilustra el cuerpo; el resultado de coincidencia múltiple (material de desarrollo reservado para una versión futura) ilustra el error.

Quedan pendientes la política de concurrencia, las reglas de unificación y los contratos de fusión, inactivación y eliminación. La existencia de `Patient.link` no declara esos flujos como implementados.

